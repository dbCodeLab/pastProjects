#include "ScreenRender.h"

ScreenRender::ScreenRender(unsigned char *scr_buffer, int scr_xsize, int scr_ysize) {
      
    p_screen = reinterpret_cast<unsigned int*>(scr_buffer);
    xsize = scr_xsize;
    ysize = scr_ysize;
    hxsize = xsize /2;
    
    fov = FOV;
    
    vp_left = VIEWPORT_LEFT_OFF;
    vp_right = xsize - VIEWPORT_RIGHT_OFF - 1;
    vp_top = VIEWPORT_TOP_OFF;
    vp_bot = ysize - VIEWPORT_BOT_OFF - 1;
    vp_center = ysize / 2;
  
    pp_distance = xsize/2 / tan(deg_to_rad(FOV/2));    
    
    row_to_pscreen = new unsigned int*[ysize];
  
    for (int i=0; i!=ysize; ++i)
      row_to_pscreen[i] = p_screen + i * xsize;
  
    col_data = new col_info[xsize];
    
    for (int col = vp_left; col <= vp_right; ++col) {
      col_data[col].ang = atan2(static_cast<double>((col - xsize/2)) , pp_distance);    
      col_data[col].cos_ang = cos(col_data[col].ang);
      col_data[col].sin_ang = sin(col_data[col].ang);
    }
    
    cos_left_column_angle = col_data[vp_left].cos_ang;
    sin_left_column_angle = col_data[vp_left].sin_ang;
    
    xview = vp_right - vp_left + 1;
    inv_width = 1.0 / xview;
  
    floor_ratio = new double[ysize];
    ceiling_ratio = new double[ysize];
  
    for (int i=0; i!=ysize; ++i) {
      floor_ratio[i] = 1.0 / (i - vp_center) * pp_distance / cos_left_column_angle;
      ceiling_ratio[i] = 1.0 / (vp_center - i) * pp_distance / cos_left_column_angle;
    }
  
    z_mem_init = new int[xsize*2];
    for (int i=0; i!=xsize; ++i) {
      z_mem_init[xsize + i] = vp_top;
      z_mem_init[i] = vp_bot;
    }  
  
    z_lower = new int[xsize*2];
    z_upper = z_lower + xsize;
      
    clip = new int[xsize+1];
    wall_spans = new WallSpan[xsize];
    
    free_planes_list = used_planes_list = 0;
}

double ScreenRender::deg_to_rad(int deg) {
  return deg * (M_PI / 180);
}

void ScreenRender::render_solid_walls() {

  unsigned int *screen_ptr;  
  WallSpan *span_start = wall_spans + x_min;
  WallSpan *limit = wall_spans + x_max + 1;
  WallSpan *span;
  LUWall *lu_wall_ptr;
  
  for (int i=y_min; i<=y_max; ++i) {
    span = span_start;
    screen_ptr = row_to_pscreen[i] + x_min;
    while (span != limit) {       
      if (span->ytop <= i && span->ybot >= i) {
	  *screen_ptr = *(span->tex_col_ptr + ((span->tex_off>>FXP_SHIFT))); //  & 0x7f //% span->tex_width);
  	  span->tex_off += span->tex_inc;
      }
      ++screen_ptr;
      ++span;
    }
  }

  lu_wall_ptr = u_walls_list;
    
  if (!e_walls_list)
    lu_wall_ptr = u_walls_list;
  else {
    lu_wall_ptr = e_walls_list;
    LUWall *p = e_walls_list;
    while (p->next_vis)
      p = p->next_vis;
    p->next_vis = u_walls_list;
  }
  
  while (lu_wall_ptr) {   
    span_start = lu_wall_ptr->luwall_spans + lu_wall_ptr->x_min;
    limit = lu_wall_ptr->luwall_spans + lu_wall_ptr->x_max + 1;
         
    for (int i=lu_wall_ptr->y_min; i<=lu_wall_ptr->y_max; ++i) {     
      span = span_start;
      screen_ptr = row_to_pscreen[i] + lu_wall_ptr->x_min;
      while (span != limit) { 		
	if (span->ytop <= i && span->ybot >= i) {
	  *screen_ptr = *(span->tex_col_ptr + (span->tex_off>>FXP_SHIFT)); //((span->tex_off>>FXP_SHIFT) & 0x7f)); //% span->tex_height);
 	  span->tex_off += span->tex_inc;
	}
	++screen_ptr;
	++span;	
      }
    }
    
    lu_wall_ptr = lu_wall_ptr->next_vis;
  }
  
    
  if (!d_walls_list)
    lu_wall_ptr = l_walls_list;
  else {
    lu_wall_ptr = d_walls_list;
    LUWall *p = d_walls_list;
    while (p->next_vis)
      p = p->next_vis;
    p->next_vis = l_walls_list;
  }
  
  while (lu_wall_ptr) {   
    span_start = lu_wall_ptr->luwall_spans + lu_wall_ptr->x_min;
    limit = lu_wall_ptr->luwall_spans + lu_wall_ptr->x_max + 1;

    for (int i=lu_wall_ptr->y_max; i>=lu_wall_ptr->y_min; --i) {
      span = span_start;
      screen_ptr = row_to_pscreen[i] + lu_wall_ptr->x_min;     
      while (span != limit) { 		
	if (span->ytop <= i && span->ybot >= i) {
	  *screen_ptr = *(span->tex_col_ptr + (span->tex_off>>FXP_SHIFT)); //((span->tex_off>>FXP_SHIFT) & 0x7f)); //% span->tex_height);
 	  span->tex_off -= span->tex_inc;
	}
	++screen_ptr;
	++span;	
      }  
    }
    
    lu_wall_ptr = lu_wall_ptr->next_vis;
  }
  
}

inline void ScreenRender::compute_floor_ceiling_factors(Player *player) {
  cos_prod = player->cos_ang_p * cos_left_column_angle;
  sin_prod = -player->sin_ang_p * sin_left_column_angle;
  sin_cos = -player->sin_ang_p * cos_left_column_angle;
  cos_sin = player->cos_ang_p * sin_left_column_angle;
  trig_f1 = cos_prod - sin_prod;
  trig_f2 = sin_cos + cos_sin;
  trig_f3 = cos_prod + sin_prod;
  trig_f4 = sin_cos - cos_sin;  
}    
  
void ScreenRender::render_vis_planes(Player *player) {

  int x1, x2;
  double plane_light_level;
  double height_p;
  Texture *ceiling_tex, *floor_tex;
  unsigned int *tex_ptr;
  unsigned int *screen_ptr;
  unsigned int *limit;
  VisPlane::Span *spans;   
  double distance;
  double xl, yl, xr, yr; 
  double dx, dy;
  double xsrc, ysrc;
  int intensity;    
  int fxl, fdx, fyl, fdy;  
  
  compute_floor_ceiling_factors(player);
  
  VisPlane *vis_plane_ptr = ceiling_planes_list;
  
  while (vis_plane_ptr) {
    plane_light_level = vis_plane_ptr->owner->light_level;
    height_p = vis_plane_ptr->owner->ceiling_height - player->cur_height;
    ceiling_tex = vis_plane_ptr->owner->ceiling_tex;
    spans = vis_plane_ptr->spans;
    
    x1 = vis_plane_ptr->xmin;
    while (spans[x1].y2 != vis_plane_ptr->ymax)
      ++x1;
    
    x2 = x1;
    while (x2 < vis_plane_ptr->xmax && spans[x2].y2 == vis_plane_ptr->ymax)
      ++x2;
    
    if (spans[x2].y1 != vis_plane_ptr->ymax)
      --x2;
    
    for (;;) {

      screen_ptr = row_to_pscreen[vis_plane_ptr->ymax] + x1;
      limit = row_to_pscreen[vis_plane_ptr->ymax] + x2 + 1;
     
//       double distance = static_cast<float>(height_p) /(vp_center - vis_plane_ptr->ymax) * pp_distance / cos_left_column_angle;
      distance = height_p * ceiling_ratio[vis_plane_ptr->ymax];
      xl = player->pos.x + distance * trig_f1;
      yl = player->pos.y + distance * trig_f2;
      xr = player->pos.x + distance * trig_f3;
      yr = player->pos.y + distance * trig_f4; 
      dx = (xr - xl) * inv_width;
      fdx = (int)(dx * FXP_MUL);
      dy = (yr - yl) * inv_width;
      fdy = (int)(dy * FXP_MUL);
      xsrc = xl + dx * (x1 - vp_left);
      fxl = (int)(xsrc * FXP_MUL);
      ysrc = yl + dy * (x1 - vp_left);
      fyl = (int)(ysrc * FXP_MUL);
      
      intensity = plane_light_level * (1 - (distance/(LIGHT_DISTANCE))) * MAX_LIGHT_LEVELS;
      
      if (intensity < MIN_LIGHT_LEVELS)
	intensity = MIN_LIGHT_LEVELS;
      
      if (intensity > MAX_LIGHT_LEVELS)
	intensity = MAX_LIGHT_LEVELS;
      
      tex_ptr = reinterpret_cast<unsigned int *>(ceiling_tex->light_tex[intensity]);
//       int tex_width = ceiling_tex->width;
//       int tex_height = ceiling_tex->height;
            
      draw_hspan(screen_ptr, limit, tex_ptr, fxl, fyl, fdx, fdy);
            
      if (--vis_plane_ptr->ymax < vis_plane_ptr->ymin)
	break;
      
      if (spans[x1].y1 <= vis_plane_ptr->ymax && spans[x1].y2 >= vis_plane_ptr->ymax) {
	while (x1 != vis_plane_ptr->xmin) {
	  --x1;
	  if (spans[x1].y1 > vis_plane_ptr->ymax || spans[x1].y2 < vis_plane_ptr->ymax) {
	    ++x1;
	    break;
	  }
	}
      } else {
	int oldx1 = x1;
	do {
	  ++x1;
	  if (x1 > vis_plane_ptr->xmax)
	    x1 = vis_plane_ptr->xmin;
	  if (x1 == oldx1) {
	    if (--vis_plane_ptr->ymax < vis_plane_ptr->ymin)
	      break;
	  }
	} while (spans[x1].y1 > vis_plane_ptr->ymax || spans[x1].y2 < vis_plane_ptr->ymax);	
      }
      
      if (vis_plane_ptr->ymax < vis_plane_ptr->ymin)
	break;
      
      if (spans[x2].y1 <= vis_plane_ptr->ymax && spans[x2].y2 >= vis_plane_ptr->ymax) {
	while (x2 != vis_plane_ptr->xmax) {
	  ++x2;
	  if (spans[x2].y1 > vis_plane_ptr->ymax || spans[x2].y2 < vis_plane_ptr->ymax) {
	    --x2;
	    break;
	  }
	}
      } else {
	do {
	  --x2;
	  if (x2 < vis_plane_ptr->xmin)
	    x2 = vis_plane_ptr->xmax;
	} while (spans[x2].y1 > vis_plane_ptr->ymax || spans[x2].y2 < vis_plane_ptr->ymax);
      }
    }
    
    vis_plane_ptr = vis_plane_ptr->next_vis;
  }
  
  
  vis_plane_ptr = floor_planes_list;
  
  while (vis_plane_ptr) {
    
    plane_light_level = vis_plane_ptr->owner->light_level;
    floor_tex = vis_plane_ptr->owner->floor_tex;
    height_p = player->cur_height - vis_plane_ptr->owner->floor_height;
    spans = vis_plane_ptr->spans;
    
    x1 = vis_plane_ptr->xmin;
    while (spans[x1].y1 != vis_plane_ptr->ymin)
      ++x1;
    
    x2 = x1;
    while (x2 < vis_plane_ptr->xmax && spans[x2].y1 == vis_plane_ptr->ymin)
      ++x2;
    
    if (spans[x2].y1 != vis_plane_ptr->ymin)
      --x2;
    
    for (;;) {
      
      screen_ptr = row_to_pscreen[vis_plane_ptr->ymin] + x1;
      limit = row_to_pscreen[vis_plane_ptr->ymin] + x2 + 1;
      
//       double distance = static_cast<float>(height_p) / (vis_plane_ptr->ymin - vp_center) * pp_distance / cos_left_column_angle;
      distance = height_p * floor_ratio[vis_plane_ptr->ymin];
      xl = player->pos.x + distance * trig_f1;
      yl = player->pos.y + distance * trig_f2;
      xr = player->pos.x + distance * trig_f3;
      yr = player->pos.y + distance * trig_f4; 
      dx = (xr - xl) * inv_width;
      fdx = (int)(dx * FXP_MUL);
      dy = (yr - yl) * inv_width;
      fdy = (int)(dy * FXP_MUL);
      xsrc = xl + dx * (x1 - vp_left);
      fxl = (int)(xsrc * FXP_MUL);
      ysrc = yl + dy * (x1 - vp_left);
      fyl = (int)(ysrc * FXP_MUL);
      
      intensity = plane_light_level * (1 - (distance/(LIGHT_DISTANCE))) * MAX_LIGHT_LEVELS;
      
      if (intensity < MIN_LIGHT_LEVELS)
	intensity = MIN_LIGHT_LEVELS;
      
      if (intensity > MAX_LIGHT_LEVELS)
	intensity = MAX_LIGHT_LEVELS;
      
      tex_ptr = reinterpret_cast<unsigned int *>(floor_tex->light_tex[intensity]);
//       int tex_width = floor_tex->width;
//       int tex_height = floor_tex->height;
      
      draw_hspan(screen_ptr, limit, tex_ptr, fxl, fyl, fdx, fdy);
                    
      if (++vis_plane_ptr->ymin > vis_plane_ptr->ymax)
	break;
      
      if (spans[x1].y1 <= vis_plane_ptr->ymin && spans[x1].y2 >= vis_plane_ptr->ymin) {
	while (x1 != vis_plane_ptr->xmin) {
	  --x1;
	  if (spans[x1].y1 > vis_plane_ptr->ymin || spans[x1].y2 < vis_plane_ptr->ymin) {
	    ++x1;
	    break;
	  }
	}
      } else {
	int oldx1 = x1;
	do {
	  ++x1;
	  if (x1 > vis_plane_ptr->xmax)
	    x1 = vis_plane_ptr->xmin;
	  if (x1 == oldx1) {
	    if (++vis_plane_ptr->ymin > vis_plane_ptr->ymax)
	      break;
	  }
	} while (spans[x1].y1 > vis_plane_ptr->ymin || spans[x1].y2 < vis_plane_ptr->ymin);	
      }
      
      if (vis_plane_ptr->ymin > vis_plane_ptr->ymax)
	break;
      
      if (spans[x2].y1 <= vis_plane_ptr->ymin && spans[x2].y2 >= vis_plane_ptr->ymin) {
	while (x2 != vis_plane_ptr->xmax) {
	  ++x2;
	  if (spans[x2].y1 > vis_plane_ptr->ymin || spans[x2].y2 < vis_plane_ptr->ymin) {
	    --x2;
	    break;
	  }
	}
      } else {
	do {
	  --x2;
	  if (x2 < vis_plane_ptr->xmin)
	    x2 = vis_plane_ptr->xmax;
	} while (spans[x2].y1 > vis_plane_ptr->ymin || spans[x2].y2 < vis_plane_ptr->ymin);
      }
    }
          
    vis_plane_ptr = vis_plane_ptr->next_vis;    
  }
  
}


inline void ScreenRender::draw_hspan(unsigned  int *screen_ptr, unsigned int *limit, 
					unsigned int *tex_ptr, int fxl, int fyl, int fdx, int fdy) {
 
  while (screen_ptr != limit) {
    *screen_ptr++ = *(tex_ptr + (((fyl>>FXP_SHIFT) & 0x3f)*64) + ((fxl>>FXP_SHIFT) & 0x3f));
    fxl += fdx;
    fyl += fdy;
  }
  
}
