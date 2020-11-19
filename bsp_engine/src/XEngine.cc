#include "XEngine.h"
#include <X11/Xlib.h>
#include <X11/Intrinsic.h>

#include <unistd.h>
#include <fstream>
#include "XTextureLoaderPPM.h"

#define VIEWPORT_LEFT_OFF   20
#define VIEWPORT_RIGHT_OFF  20
#define VIEWPORT_TOP_OFF    20
#define VIEWPORT_BOT_OFF    20

#define FOV 60

#define UPDATE_VP_CENTER_FACTOR 2
#define UPDATE_HEIGHT_FACTOR 2

#define MAP_SIZE 150
#define GRID_SIZE 64
#define PLAYER_HEIGHT 32

#define ANGLE_DISP 0.055
#define POS_DISP 15

#define TEXTURE_WIDTH 64
#define TEXTURE_HEIGHT 64

#define FXP_SHIFT 16
#define FXP_MUL (1<<FXP_SHIFT)

#define NUM_WALL_TEXTURES 3
#define NUM_FLOOR_TEXTURES 2
#define NUM_CEILING_TEXTURES 1

#define MAX_LIGHT_LEN 1000
#define LIGHT_LEN_LEVEL 50


XEngine::XEngine(int xsize, int ysize, XScreenRgbInfo *scr_info)
  : fov(FOV) {
  this->scr_info = scr_info;
  this->rasterizer = new XRasterizer(xsize, ysize, scr_info->p_screenbuf, scr_info->bytes_per_pixel);    
  this->p_screen = reinterpret_cast<unsigned int *>(rasterizer->p_screenbuf);
  this->xsize = rasterizer->xsize;
  this->ysize = rasterizer->ysize; 
  this->tex_loader = new XTextureLoaderPPM(scr_info);
  this->init_data();
}

void XEngine::process_key(char ch) {
      switch (ch) {
	  case 'q':
	    exit(0);
	  case 'a':
	    update_angle(-1);
	    break;
	  case 'd':
	    update_angle(+1);
	    break;
	  case 'w':
	    update_position(+1);
	    break;
	  case 's':
	    update_position(-1);
	    break;
	  case 'x':
	    update_height(+1);
	    break;
	  case 'c':
	    update_height(-1);
	    break;
	  case 'v':
	    update_vp(+1);
	    break;
	  case 'b':
	    update_vp(-1);
	    break;
      }   
}

void XEngine::update_position(int dir) {
    xp += dir * xd * cos(angle_p);
    yp += dir * yd * sin(angle_p);
//     cout << xp << " " << yp << endl;
}
  
void XEngine::update_angle(int dir) {
  angle_p += dir * angle_d;
  if (angle_p >= 2 * M_PI)
    angle_p -= 2 * M_PI;
  if (angle_p < 0)
    angle_p += 2 * M_PI;
}
  
void XEngine::update_height(int dir) {
 height_p += dir * UPDATE_HEIGHT_FACTOR; 
}

void XEngine::update_vp(int dir) {
  vp_center += dir * UPDATE_VP_CENTER_FACTOR;
  if (vp_center < vp_top)
    vp_center = vp_top;
  if (vp_center > vp_bot)
    vp_center = vp_bot;
}

double XEngine::deg_to_rad(int deg) {
  return deg * (M_PI / 180);
}

void XEngine::init_data() {
  
    //srand(time(0));   
    
    vp_left = VIEWPORT_LEFT_OFF;
    vp_right = xsize - VIEWPORT_RIGHT_OFF - 1;
    vp_top = VIEWPORT_TOP_OFF;
    vp_bot = ysize - VIEWPORT_BOT_OFF - 1;
    vp_center = ysize / 2;
  
    xview = vp_right - vp_left + 1;
    yview = vp_bot - vp_top + 1;
        
    xp = yp = GRID_SIZE*2.5; //MAP_SIZE * GRID_SIZE - GRID_SIZE*1.5;
    xd = yd = POS_DISP;
    angle_p = 0;
    angle_d = ANGLE_DISP;
    height_p =  PLAYER_HEIGHT;  
    pp_distance = xsize/2 / tan(deg_to_rad(FOV/2));
    max_distance = 5000;
	
    setup_textures();
            
    setup_screen_data();    
    
    num_lines = 2;
    lines = new line[num_lines];
    lines[0].x1 = 0;
    lines[0].y1 = 0;
    lines[0].x2 = 0;
    lines[0].y2 = 256;
    lines[0].m = static_cast<float>(lines[0].y2 - lines[0].y1) / (lines[0].x2 - lines[0].x1);
    lines[0].color = 0x00FFFF;
    lines[0].height = 2*GRID_SIZE;
    
    lines[1].x1 = 0;
    lines[1].y1 = 0;
    lines[1].x2 = 256;
    lines[1].y2 = 0;
    lines[1].m = static_cast<float>(lines[1].y2 - lines[1].y1) / (lines[1].x2 - lines[1].x1);
    lines[1].color = 0x0000FF;
    lines[1].height = GRID_SIZE;
    
}

void XEngine::setup_screen_data() {
  
  /*********************************/
  col_data = new col_inf[xsize];
    
  for (int col = vp_left; col <= vp_right; ++col) {
    col_data[col].ang = atan2(static_cast<float>((col - xsize/2)) , pp_distance);    
    col_data[col].cos_ang = cos(col_data[col].ang);
    col_data[col].sin_ang = sin(col_data[col].ang);
  }

}

void XEngine::setup_textures() {

  light_distance_levels = MAX_LIGHT_LEN / LIGHT_LEN_LEVEL + 1;

  x_wall_textures = new unsigned int**[NUM_WALL_TEXTURES];  
  gen_light_textures(x_wall_textures, NUM_WALL_TEXTURES, "xwall");
  
  y_wall_textures = new unsigned int**[NUM_WALL_TEXTURES];  
  gen_light_textures(y_wall_textures, NUM_WALL_TEXTURES, "ywall");
  
  floor_textures = new unsigned int**[NUM_FLOOR_TEXTURES];
  gen_light_textures(floor_textures, NUM_FLOOR_TEXTURES, "floor");
        
  ceiling_textures = new unsigned int**[NUM_CEILING_TEXTURES];
  gen_light_textures(ceiling_textures, NUM_CEILING_TEXTURES, "ceiling");
    
  create_sky_texture();
  
}

void XEngine::create_sky_texture() {
  sky_tex = new unsigned int[TEXTURE_WIDTH * TEXTURE_HEIGHT];
  unsigned int *p = sky_tex;
  for (int i=0; i!=TEXTURE_WIDTH*TEXTURE_HEIGHT; ++i)
    *p++ = 0xABCDEF; 
}

void XEngine::gen_light_textures(unsigned int ***textures_array, int num_textures, 
				 const char *name_texture) {
  
  char tex_file_name[200];
    
  for (int i=0; i!=num_textures; ++i) {
    sprintf(tex_file_name,"res/%s%d.ppm",name_texture,(i+1));
    tex_loader->load(tex_file_name);
    unsigned int *tex_ptr = reinterpret_cast<unsigned int*>(tex_loader->data);
    textures_array[i] = new unsigned int *[light_distance_levels];
    for (int j=1; j<=light_distance_levels; ++j) {
      int num_pixels = TEXTURE_HEIGHT * TEXTURE_WIDTH;
      textures_array[i][j-1] = new unsigned int[num_pixels];
      unsigned int *cur_tex_ptr = textures_array[i][j-1];
      memcpy(cur_tex_ptr, tex_ptr, sizeof(unsigned int) * num_pixels);
      int z = j * 10;
      int intensity = 255; //(1 - (LIGHT_LEN_LEVEL * (z)) / max_distance) * NUM_LIGHT_LEVELS;
      if (intensity < 0)
 	intensity = 0;
      for (int k=0; k!=num_pixels; ++k) {
	scr_info->light_native(reinterpret_cast<unsigned char *>(cur_tex_ptr++), intensity);
      }
    }
    tex_loader->release_tex_memory();
  }
  
}


void XEngine::render() {
  
  unsigned int *screen_ptr;
  render_line rl1, rl2;
  
  for (int i=0; i!=num_lines; ++i) {
    
    int dx[2], dy[2];
    int alignx[2], aligny[2];
    float distance[2], max_distance, dist;
    int wall_proj_height[2];
    int top[2], bot[2];
    int proj_col[2];
    int left, right;
    int xleft, yleft, xright, yright;
    float ext_angle;
    float tan_ext_angle;
    int xs, ys, b1, b2;
    
    dx[0] = lines[i].x1 - xp;
    dy[0] = lines[i].y1 - yp;  
    dx[1] = lines[i].x2 - xp;
    dy[1] = lines[i].y2 - yp;  
    
    alignx[0] = dx[0] * cos(-angle_p) - dy[0] * sin(-angle_p);
    aligny[0] = dx[0] * sin(-angle_p) + dy[0] * cos(-angle_p);
    
    alignx[1] = dx[1] * cos(-angle_p) - dy[1] * sin(-angle_p);
    aligny[1] = dx[1] * sin(-angle_p) + dy[1] * cos(-angle_p);    
    
    distance[0] = alignx[0];
    if (abs(distance[0]) == 0.0f)
	  distance[0] = 1.0f;
 
    distance[1] = alignx[1];
    if (distance[1] == 0.0f)
	  distance[1] = 1.0f;
   
    if (distance[0] > distance[1])
      max_distance = distance[0];
    else 
      max_distance = distance[1];
    
    if (max_distance <= 0) {
//       cout << "back clip" << endl;
      continue;
    }

    // left - right (o meglio up - down) rispetto al pp
    if (aligny[0] < aligny[1]) {
      left = 0;
      right = 1;
      xleft = lines[i].x1; xright = lines[i].x2;
      yleft = lines[i].y1; yright = lines[i].y2;
    } else {
      left = 1;
      right = 0;
      xleft = lines[i].x2; xright = lines[i].x1;
      yleft = lines[i].y2; yright = lines[i].y1;
    }
    
    if (distance[left] > 0) {
      proj_col[left] = static_cast<int>(aligny[left] * pp_distance / distance[left]) + xsize / 2;
      
      if (distance[right] > 0) {
	
	proj_col[right] = static_cast<int>(aligny[right] * pp_distance / distance[right]) + xsize / 2;
	
	if (proj_col[right] > proj_col[left]) {
	  if (proj_col[right] < vp_left) {
// 	    cout << "left clip" << endl;
	    continue;		    
	  }
	  if (proj_col[left] > vp_right) {
// 	    cout << "right clip" << endl;
	    continue; 		    
	  }
        } else { 
	  if (proj_col[left] < vp_left) {
// 	    cout << "left clip" << endl;
	    continue;		    
	  }
	  if (proj_col[right] > vp_right) {
// 	    cout << "right clip" << endl;
	    continue; 		    
	  }	    
	}
	
      } else {

	if (proj_col[left] < vp_left && aligny[right] <= 0) {
// 	  cout << "left clip" << endl;
	  continue;	
	}
	
	if (proj_col[left] > vp_right && aligny[right] >= 0) {
// 	  cout << "right clip" << endl;
	  continue; 		    
	}
	
      }

    } else {
      
      proj_col[right] = static_cast<int>(aligny[right] * pp_distance / distance[right]) + xsize / 2;
      
      if (proj_col[right] < vp_left && aligny[left] < 0) {
// 	cout << "left clip" << endl;
	continue;		
      }
      
      if (proj_col[right] > vp_right && aligny[left] >= 0) {
//  	cout << "right clip" << endl;
 	continue; 	
      }          
      
    }

    
    if (distance[left] <= 0 || proj_col[left] < vp_left || proj_col[left] > vp_right) {

      if (aligny[left] < 0)
 	proj_col[left] = vp_left;
      else
 	proj_col[left] = vp_right;

      ext_angle = angle_p + col_data[proj_col[left]].ang;	
      tan_ext_angle = tan(ext_angle);
      b1 = yleft - lines[i].m * xleft;
      b2 = yp - tan_ext_angle * xp;
      xs = (b1 - b2) / (tan_ext_angle - lines[i].m);
      ys = lines[i].m * xs + b1;			
      dist = (xs - xp) * cos(-angle_p) - (ys - yp) * sin(-angle_p);
          
      if (dist < 0) {
	if (proj_col[left] == vp_right) {
	  proj_col[left] = vp_left;
	  if (proj_col[right] <= vp_left) {
// 	    cout << "clippp" << endl;
	    continue;
	  }
	}else {
	  proj_col[left] = vp_right;
	  if (proj_col[right] >= vp_right) {
// 	    cout << "clippp" << endl;
	    continue;
	  }
	}
				
	ext_angle = angle_p + col_data[proj_col[left]].ang;	
	tan_ext_angle = tan(ext_angle);	
	b1 = yleft - lines[i].m * xleft;
	b2 = yp - tan_ext_angle * xp;
	xs = (b1 - b2) / (tan_ext_angle - lines[i].m);
	ys = lines[i].m * xs + b1;			
	dist = (xs - xp) * cos(-angle_p) - (ys - yp) * sin(-angle_p);	
	
      }
      
      if (dist < 0) {
// 	cout << "clip!" << endl;
	continue;
      }
      
      if (dist == 0.0f)
	dist = 1.0f;     
                 
      distance[left] = dist;
    }
    
    wall_proj_height[left] = pp_distance * lines[i].height / distance[left];
    if (wall_proj_height[left] == 0)
      wall_proj_height[left] = 1;    
        
    bot[left] = pp_distance * height_p / distance[left] + vp_center;
    top[left] = bot[left] - wall_proj_height[left] + 1;     
    
    
    if (distance[right] <= 0 || proj_col[right] > vp_right || proj_col[right] < vp_left) {
//       cout << "r cut " << endl;
      if (aligny[right] < 0)
 	proj_col[right] = vp_left;
      else
 	proj_col[right] = vp_right;
      
      ext_angle = angle_p + col_data[proj_col[right]].ang;	
      tan_ext_angle = tan(ext_angle);	
      b1 = yright - lines[i].m * xright;
      b2 = yp - tan_ext_angle * xp;
      xs = (b1 - b2) / (tan_ext_angle - lines[i].m);
      ys = lines[i].m * xs + b1;				  
      dist = (xs - xp) * cos(-angle_p) - (ys - yp) * sin(-angle_p);
      
      if (dist < 0) {
	
	if (proj_col[right] == vp_right) {
	  proj_col[right] = vp_left;
	  if (proj_col[left] <= vp_left) {
// 	    cout << "clippp" << endl;
	    continue;
	  }
	} else {
	  proj_col[right] = vp_right;
	  if (proj_col[left] >= vp_right) {
// 	    cout << "clippp" << endl;
	    continue;
	  }
	}
	
	ext_angle = angle_p + col_data[proj_col[right]].ang;	
	tan_ext_angle = tan(ext_angle);	
	b1 = yright - lines[i].m * xright;
	b2 = yp - tan_ext_angle * xp;
	xs = (b1 - b2) / (tan_ext_angle - lines[i].m);
	ys = lines[i].m * xs + b1;				  
	dist = (xs - xp) * cos(-angle_p) - (ys - yp) * sin(-angle_p);
      }      
      
      if (dist < 0) {
// 	cout << "clip!" << endl;
	continue;
      }
      
      if (dist == 0.0f)
	dist = 1.0f;  
            
      distance[right] = dist;
    }
    
    wall_proj_height[right] = pp_distance * lines[i].height / distance[right];
    if (wall_proj_height[right] == 0)
      wall_proj_height[right] = 1;    
        
    bot[right] = pp_distance * height_p / distance[right] + vp_center;
    top[right] = bot[right] - wall_proj_height[right] + 1;  
 
    rl1.col = proj_col[left];
    rl1.top_row = top[left];
    rl1.bot_row = bot[left];
    
    rl2.col = proj_col[right];
    rl2.top_row = top[right];
    rl2.bot_row = bot[right];
           
    render_line *left_col, *right_col;
    
    if (rl1.col < rl2.col) {
	left_col = &rl1;
	right_col = &rl2;
    } else {
	left_col = &rl2;
	right_col = &rl1;   
    }   

    float fytop, mtop;
    float fybot, mbot;
    int coldx, dytop, dybot;    
    int ytop, ybot;
    int color = lines[i].color;
    
    coldx = right_col->col - left_col->col + 1;
    dytop = right_col->top_row - left_col->top_row + 1;
    dybot = right_col->bot_row - left_col->bot_row + 1;
    
    mtop = static_cast<float>(dytop)/coldx;
    mbot = static_cast<float>(dybot)/coldx;    
    
    fytop = left_col->top_row;
    fybot = left_col->bot_row;
    
    for (int j=left_col->col; j<=right_col->col; ++j) {
      ytop = static_cast<int>(fytop + 0.5);
      ybot = static_cast<int>(fybot + 0.5);     
      fytop += mtop;
      fybot += mbot;
      
      if (ytop > vp_bot)
	continue;
	
      if (ytop < vp_top)
	  ytop = vp_top;
	
      if (ybot < vp_top)
	continue;
      
      if (ybot > vp_bot)
	  ybot = vp_bot;
      
      screen_ptr = p_screen + ytop * xsize + j;
      int span_height = ybot - ytop + 1;
            
      while (span_height--) {
	*screen_ptr = color;
	screen_ptr += xsize;
      }
      
    }
    
    
  }
  
}

void XEngine::render2() {
  cout << xp << " " << yp << endl;
  
  unsigned int *screen_ptr;
  render_line rl1, rl2;
  
  for (int i=0; i!=num_lines; ++i) {
    
    int dx[2], dy[2];
    int alignx[2], aligny[2];
    double distance[2], max_distance, dist;
    int wall_proj_height[2];
    int top[2], bot[2];
    int proj_col[2];
    int left, right;
    int xleft, yleft, xright, yright;
    int xs, ys, b1, b2;
    
    dx[0] = lines[i].x1 - xp;
    dy[0] = lines[i].y1 - yp;  
    dx[1] = lines[i].x2 - xp;
    dy[1] = lines[i].y2 - yp;  
    
    alignx[0] = dx[0] * cos(-angle_p) - dy[0] * sin(-angle_p);
    aligny[0] = dx[0] * sin(-angle_p) + dy[0] * cos(-angle_p);
    
    alignx[1] = dx[1] * cos(-angle_p) - dy[1] * sin(-angle_p);
    aligny[1] = dx[1] * sin(-angle_p) + dy[1] * cos(-angle_p);    
    
    distance[0] = alignx[0];
    if (abs(distance[0]) == 0.0f)
	  distance[0] = 1.0f;
 
    distance[1] = alignx[1];
    if (distance[1] == 0.0f)
	  distance[1] = 1.0f;
   
    if (distance[0] > distance[1])
      max_distance = distance[0];
    else 
      max_distance = distance[1];
    
    if (max_distance <= 0) {
//       cout << "back clip" << endl;
      continue;
    }    
    
    // left - right (o meglio up - down) rispetto al pp
    if (aligny[0] < aligny[1]) {
      left = 0;
      right = 1;
    } else {
      left = 1;
      right = 0;
    }
    
    if (distance[left] < 0) {
//       cout << "clip left non visibile" << endl;
      double xdiff = alignx[right] - alignx[left];
      double ydiff = aligny[right] - aligny[left];
      double m_left = ydiff / xdiff;
      int new_align_left = aligny[left] + m_left * (1-alignx[left]);
      aligny[left] = new_align_left;
      distance[left] = alignx[left] = 1;
    } else if (distance[right] < 0) {
//       cout << "clip right non visibile" << endl;
      double xdiff = alignx[right] - alignx[left];
      double ydiff = aligny[right] - aligny[left];
      double m_right = ydiff / xdiff;
      int new_align_right = aligny[right] + m_right * (1-alignx[right]);
      aligny[right] = new_align_right;
      distance[right] = alignx[right] = 1;    
    }
    
    proj_col[left] = static_cast<int>(aligny[left] * pp_distance / distance[left]) + xsize / 2;
    proj_col[right] = static_cast<int>(aligny[right] * pp_distance / distance[right]) + xsize / 2;
    
    wall_proj_height[left] = pp_distance * lines[i].height / distance[left];
    if (wall_proj_height[left] == 0)
      wall_proj_height[left] = 1;    
        
    bot[left] = pp_distance * height_p / distance[left] + vp_center;
    top[left] = bot[left] - wall_proj_height[left] + 1;    
    
    wall_proj_height[right] = pp_distance * lines[i].height / distance[right];
    if (wall_proj_height[right] == 0)
      wall_proj_height[right] = 1;    
        
    bot[right] = pp_distance * height_p / distance[right] + vp_center;
    top[right] = bot[right] - wall_proj_height[right] + 1;  
    
    rl1.col = proj_col[left];
    rl1.top_row = top[left];
    rl1.bot_row = bot[left];
    
    rl2.col = proj_col[right];
    rl2.top_row = top[right];
    rl2.bot_row = bot[right];
           
    render_line *left_col, *right_col;
    
    if (rl1.col < rl2.col) {
	left_col = &rl1;
	right_col = &rl2;
    } else {
	left_col = &rl2;
	right_col = &rl1;   
    }   

    double fytop, mtop;
    double fybot, mbot;
    int coldx, dytop, dybot;    
    int ytop, ybot;
    int color = lines[i].color;
    int col_left, col_right;
    int top_row_start, bot_row_start;
    int top_row_end, bot_row_end;
    
    if (left_col->col < vp_left) {
//       cout << "clip vp_left" << endl;
      mtop = static_cast<double>(right_col->top_row - left_col->top_row) / (right_col->col - left_col->col);
      mbot = static_cast<double>(right_col->bot_row - left_col->bot_row) / (right_col->col - left_col->col);
      top_row_start = left_col->top_row + mtop * (vp_left - left_col->col);
      bot_row_start = left_col->bot_row + mbot * (vp_left - left_col->col);
      col_left = vp_left;
    } else {
      top_row_start = left_col->top_row;
      bot_row_start = left_col->bot_row;
      col_left = left_col->col; 
    }

    if (right_col->col > vp_right) {
//       cout << "clip vp_right" << endl;
      mtop = static_cast<double>(right_col->top_row - left_col->top_row) / (right_col->col - left_col->col);
      mbot = static_cast<double>(right_col->bot_row - left_col->bot_row) / (right_col->col - left_col->col);
//       (yd - ys) / (xd - xs ) = m -> ys = -m * () + yd
      top_row_end = right_col->top_row - mtop * (right_col->col - vp_right);
      bot_row_end = right_col->bot_row - mbot * (right_col->col - vp_right);
      col_right = vp_right;
    } else {
      top_row_end = right_col->top_row;
      bot_row_end = right_col->bot_row;
      col_right = right_col->col; 
    }
    
//     cout << "col_left: " << col_left << " col_right: " << col_right << endl;
    
    coldx = col_right - col_left + 1;
    dytop = top_row_end - top_row_start + 1;
    dybot = bot_row_end - bot_row_start + 1;
    
    mtop = static_cast<double>(dytop)/coldx;
    mbot = static_cast<double>(dybot)/coldx;    
    
    fytop = top_row_start;
    fybot = bot_row_start;
    
//     cout << "col_left: " << col_left << " col_right: " << col_right << endl;
    
    for (int j=col_left; j<=col_right; ++j) {
      

      ytop = static_cast<int>(fytop + 0.5);
      ybot = static_cast<int>(fybot + 0.5);     
      fytop += mtop;
      fybot += mbot;
   
//       cout << "col_left: " << col_left << " col_right: " << col_right << endl;
//       cout << "ytop_left: " << top_row_start << " ybot_left: " << bot_row_start << endl;
      
      if (ytop > vp_bot)
	continue;
	
      if (ytop < vp_top)
	  ytop = vp_top;
	
      if (ybot < vp_top)
	continue;
      
      if (ybot > vp_bot)
	  ybot = vp_bot;
      
      screen_ptr = p_screen + ytop * xsize + j;
      int span_height = ybot - ytop + 1;
//             cout << span_height << endl;
// 	    if (span_height < 0)
// 	      continue;
      while (span_height--) {
	*screen_ptr = color;
	screen_ptr += xsize;
      }
      
    }
    
//     cout << endl << endl;
    
  }
}

void XEngine::render_background() {

  unsigned int *screen_row_ptr = p_screen + vp_top * xsize + vp_left;
  unsigned int *screen_ptr = screen_row_ptr;
  int i;
  
  for (i=vp_top; i!=vp_center+1; ++i) {
    for (int j=vp_left; j<=vp_right; ++j) {
      *screen_ptr++ = 0xFFFFFF;
    }
    screen_row_ptr += xsize;
    screen_ptr = screen_row_ptr;
  }
  
  for (; i<=vp_bot; ++i) {
    for (int j=vp_left; j<=vp_right; ++j) {
      *screen_ptr++ = 0x696969;
    }
    screen_row_ptr += xsize;
    screen_ptr = screen_row_ptr;    
  }
  
}