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
#define WORLD_HEIGHT GRID_SIZE * 5

#define ANGLE_DISP 0.055
#define POS_DISP 10

#define TEXTURE_WIDTH 64
#define TEXTURE_HEIGHT 64

#define FXP_SHIFT 16
#define FXP_MUL (1<<FXP_SHIFT)

#define NUM_WALL_TEXTURES 3
#define NUM_FLOOR_TEXTURES 2
#define NUM_CEILING_TEXTURES 1

#define MAX_LIGHT_LEN 1000
#define LIGHT_LEN_LEVEL 50

#define MAX_RAY_DISTANCE 1000

#define NO_WALL_CODE 0
#define BOUNDARY_WALL_CODE 1
#define INTERNAL_WALL_CODE 2

XEngine::XEngine(int xsize, int ysize, XScreenRgbInfo *scr_info)
  : map_size(MAP_SIZE), fov(FOV) {
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
    
    init_map();
    
    xp = yp = GRID_SIZE*2.5; //MAP_SIZE * GRID_SIZE - GRID_SIZE*1.5;
    xd = yd = POS_DISP;
    angle_p = 0;
    angle_d = ANGLE_DISP;
    height_p =  PLAYER_HEIGHT;  
    pp_distance = xsize/2 / tan(deg_to_rad(FOV/2));
    max_distance = sqrt((map_size * GRID_SIZE)*(map_size * GRID_SIZE)+
	                (map_size * GRID_SIZE)*(map_size * GRID_SIZE));
	
    setup_textures();
            
    setup_screen_data();    

    num_points = 3;
    points = new point[num_points];
    points[0].x = GRID_SIZE;
    points[0].y = GRID_SIZE * 2.5;
    points[0].height = GRID_SIZE;
    points[1].x = GRID_SIZE * 3.5;
    points[1].y = GRID_SIZE * 1;
    points[1].height = GRID_SIZE;
    points[2].x = GRID_SIZE * 7;
    points[2].y = GRID_SIZE * 3;
    points[2].height = GRID_SIZE;    
}

void XEngine::setup_screen_data() {
  
  /*********************************/
  col_data = new col_inf[xsize];
    
  for (int col = vp_left; col <= vp_right; ++col) {
    col_data[col].ang = atan2(static_cast<float>((col - xsize/2)) , pp_distance);    
    col_data[col].cos_ang = cos(col_data[col].ang);
    col_data[col].sin_ang = sin(col_data[col].ang);
  }
    
  /*********************************/
  distances = new float[ysize * xsize];


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

void XEngine::init_map() {

    floor = new plane[map_size * map_size];

    
    for (int i=0; i!=map_size; ++i) {
      for (int j=0; j!=map_size; ++j) {
	if (i==0 || i==map_size-1 || j==0 || j==(map_size-1)) {
	  floor[j + i*map_size].code = BOUNDARY_WALL_CODE;
	  floor[j + i*map_size].height = WORLD_HEIGHT;  	    
	  floor[j + i*map_size].tex = 0;
	  

	} else {
	  floor[j + i*map_size].code = NO_WALL_CODE;
	  floor[j + i*map_size].tex = 0;
	  floor[j + i*map_size].height = 0;

	}
  
	floor[j + i*map_size].wall_tex = rand()%NUM_WALL_TEXTURES;
      }
    }
        
  
}    
    
void XEngine::render_view() {

  float distance;
  float inv_grid_size = 1.0f / GRID_SIZE;
  int cur_floor_height;;
  unsigned int *screen_col_ptr = p_screen + vp_left;
  float *dist_col_ptr = distances + vp_left;
  int row;
  
  cos_angle_p = cos(angle_p);
  sin_angle_p = sin(angle_p);  
  cur_floor_height = floor[(xp/GRID_SIZE)+(yp/GRID_SIZE)*map_size].height;
  cur_height_p = height_p + cur_floor_height;
      
  memset(distances, 0x0, ysize * xsize * sizeof(float));
  
  for (int col = vp_left; col <= vp_right; ++col, ++screen_col_ptr, ++dist_col_ptr) {

    float cos_col_angle = col_data[col].cos_ang;
    float sin_col_angle = col_data[col].sin_ang;
    float sin_radians = sin_angle_p * cos_col_angle + cos_angle_p * sin_col_angle;
    float cos_radians = cos_angle_p * cos_col_angle - sin_angle_p * sin_col_angle;
    float inv_sin_radians = 1.0f / sin_radians;
    float inv_cos_radians = 1.0f / cos_radians;
    float slope = sin_radians / cos_radians;
    if (slope == 0.0f)
      slope = 3.272e-4;
    
    float ang = angle_p + col_data[col].ang;
    if (ang < 0)
      ang += 2*M_PI;
    if (ang >= 2*M_PI)
      ang -= 2*M_PI;
    
    // dati intersezioni fine map e grid map. nel ciclo di diffusione di un raggio si calcolano
    // intersezioni orizzontali e verticali.
    
    // posizione iniziale sulla grid
    int grid_x, grid_y;
    // punti di intersezione (4 valori: 2 per ciascun tipo di intersezione (vert/oriz))
    int xcross_x, ycross_y;
    float  xcross_y, ycross_x;
    // distanze punti calcolate dalla pos del giocatore
    float x_len_dist, y_len_dist;
    float xdist, ydist;
    // posizioni sulla grid
    int xmaze_x, ymaze_y;
    float xmaze_y, ymaze_x;
        
    // offset fine map
    int grid_x_xoffs, 
	grid_y_yoffs;
    float grid_x_yoffs,
	  grid_y_xoffs;
	  
    // offset grid map
    int xmaze_x_offs,
	ymaze_y_offs;

    int xfactor, yfactor;
    
    if (ang <= M_PI/2 || ang >= 3 * M_PI / 2) {
      grid_x = (static_cast<int>(xp) / GRID_SIZE) * GRID_SIZE + GRID_SIZE;xfactor=0;
      grid_x_xoffs = GRID_SIZE;
      xmaze_x_offs = 1;
      grid_y_xoffs = GRID_SIZE / slope;
      if (grid_y_xoffs < 0)
	grid_y_xoffs = -grid_y_xoffs;
    } else {
      grid_x = (static_cast<int>(xp) / GRID_SIZE) * GRID_SIZE; xfactor=-1;
      grid_x_xoffs = -GRID_SIZE;
      xmaze_x_offs = -1;
      grid_y_xoffs = GRID_SIZE / slope;
      if (grid_y_xoffs > 0)
	grid_y_xoffs = -grid_y_xoffs;
    }
    
    if (ang <= M_PI) {
      grid_y = (static_cast<int>(yp) / GRID_SIZE) * GRID_SIZE + GRID_SIZE; yfactor=0;
      grid_y_yoffs = GRID_SIZE;
      ymaze_y_offs = 1;
      grid_x_yoffs =  slope * GRID_SIZE;
      if (grid_x_yoffs < 0)
	grid_x_yoffs = -grid_x_yoffs;
    } else {
      grid_y = (static_cast<int>(yp) / GRID_SIZE) * GRID_SIZE; yfactor=-1;
      grid_y_yoffs = -GRID_SIZE;
      ymaze_y_offs = -1;
      grid_x_yoffs =  slope * GRID_SIZE;
      if (grid_x_yoffs > 0)
	grid_x_yoffs = -grid_x_yoffs;
    }
       
    x_len_dist = GRID_SIZE * inv_cos_radians;
    if (x_len_dist < 0)
      x_len_dist = -x_len_dist;
    
    y_len_dist = GRID_SIZE * inv_sin_radians;
    if (y_len_dist < 0)
      y_len_dist = -y_len_dist;    
    
    xdist = (xp - grid_x) * inv_cos_radians;      
    if (xdist < 0)
      xdist = -xdist;
       
    ydist = (yp - grid_y) * inv_sin_radians;
    if (ydist < 0)
      ydist = -ydist;
        
    // primo punto di intersezione sulla fine map
    xcross_y = yp + slope * (grid_x - xp);
    grid_x += xfactor;
    xcross_x = grid_x;
    
    ycross_x = xp + (grid_y - yp) / slope; 
    grid_y += yfactor;    
    ycross_y = grid_y;
    
    // posizione iniziale grid map
    xmaze_x = xcross_x * inv_grid_size;
    ymaze_y = ycross_y * inv_grid_size;
    xmaze_y = xcross_y * inv_grid_size;
    ymaze_x = ycross_x * inv_grid_size;
    
    float x_yratio = grid_x_yoffs * inv_grid_size;
    float y_xratio = grid_y_xoffs * inv_grid_size;

    unsigned int *tex_ptr;
    int tex_col_off;
    int tex_col_inc;   
    float wall_tex_off;
    float wall_col_inc;
    
    int code;
    int wall_proj_height;
    int wall_height_diff;
    int wall_col;
    int map_pos;
    int bot;
    int top;    
    int last_top; 
    int light_level;
    int cur_height;
    int prev_height;
    int vspan_height;
    
    unsigned int *screen_ptr;
    unsigned int ***wall_textures;
    float *dist_ptr;   
    
    prev_height = cur_floor_height;
    last_top = vp_bot;

    
    do {
                  
      if (xdist < ydist) {

	map_pos = xmaze_x + static_cast<int>(xmaze_y) * map_size;

	code = floor[map_pos].code;
	cur_height = floor[map_pos].height;
	
	wall_col = static_cast<int>(xcross_y) % GRID_SIZE;
	distance = xdist * cos_col_angle;
	wall_textures = x_wall_textures;
	
	xcross_x += grid_x_xoffs;
 	xcross_y += grid_x_yoffs;
 	xdist += x_len_dist;
 	xmaze_x += xmaze_x_offs;
 	xmaze_y += x_yratio;
		
      } else {
	  
	map_pos = static_cast<int>(ymaze_x) + ymaze_y * map_size;
	
	code = floor[map_pos].code;
	cur_height = floor[map_pos].height;
	
	wall_col = static_cast<int>(ycross_x) % GRID_SIZE;
	distance = ydist * cos_col_angle;
	wall_textures = y_wall_textures;
	
 	ycross_y += grid_y_yoffs;
 	ycross_x += grid_y_xoffs;
 	ydist += y_len_dist;	
 	ymaze_y += ymaze_y_offs;
 	ymaze_x += y_xratio;
		
      }
      
    if (distance > MAX_RAY_DISTANCE)
          break;
    
    if (distance == 0.0f)
	  distance = 1.0f;
        
    // floor

    bot = pp_distance * (cur_height_p - prev_height) / distance + vp_center;
    wall_height_diff = cur_height - prev_height;
    
    
    if (wall_height_diff <= 0) {
      top = ++bot;
    } else {
      
      wall_proj_height = pp_distance * wall_height_diff / distance;
      
      top = bot - wall_proj_height + 1;
      wall_tex_off = 0.0f;
      wall_col_inc = static_cast<float>(wall_height_diff) / wall_proj_height;      
      
      
      if (top <= last_top) {
	
 	if (top < vp_top) {
 	  wall_tex_off = (vp_top - top) * wall_col_inc;
 	  top = vp_top;	
        }
	
	if (bot > last_top) {	
	  bot = last_top;
	}

	screen_ptr = screen_col_ptr + top * xsize;
	light_level = static_cast<int>(distance / LIGHT_LEN_LEVEL); 
	if (light_level >= light_distance_levels)
		light_level = light_distance_levels-1;	
	tex_ptr = wall_textures[floor[map_pos].wall_tex][light_level] + wall_col * TEXTURE_WIDTH;
	tex_col_off = wall_tex_off * FXP_MUL;
	tex_col_inc = wall_col_inc * FXP_MUL; 

	      
	vspan_height = bot - top + 1;

	while (vspan_height--) {
 	  *screen_ptr = *(tex_ptr + (tex_col_off>>FXP_SHIFT) % GRID_SIZE);
 	  tex_col_off += tex_col_inc;
  	  screen_ptr += xsize;
	}  
	
	++bot;
      }
      
    }
    
    if (bot > vp_center && bot <= last_top) {
                      
      screen_ptr = screen_col_ptr + bot * xsize;
      dist_ptr = dist_col_ptr + bot * xsize;
      
      vspan_height = last_top - bot + 1;
           
      row = bot - vp_center;
      
      while (vspan_height--) {	
   	*dist_ptr = static_cast<float>(cur_height_p - prev_height) / row++;
   	dist_ptr += xsize;
      }
        
    }

    if (top <= last_top)
      last_top = top - 1;
        
    prev_height = cur_height;
        
  } while (last_top >= vp_top && code != BOUNDARY_WALL_CODE);

  
 } // ciclo ray casting

}
  
void XEngine::render_floor() {
  
  float cos_left_column_angle = col_data[vp_left].cos_ang;
  float sin_left_column_angle = col_data[vp_left].sin_ang;
  float cos_prod = cos_angle_p * cos_left_column_angle;
  float sin_prod = sin_angle_p * sin_left_column_angle;
  float cos_sin_prod_diff = cos_prod - sin_prod;
  float cos_sin_prod_add = cos_prod + sin_prod;
  float sin_cos = sin_angle_p * cos_left_column_angle;
  float cos_sin = cos_angle_p * sin_left_column_angle;
  float sin_cos_add = sin_cos + cos_sin;
  float sin_cos_diff = sin_cos - cos_sin;
  float inv_width = 1.0f / (vp_right - vp_left);
  float distance;
  float ratio2 = pp_distance / cos_left_column_angle;
  int light_level;
  int tex_code;  
  float xl;
  float yl;
  float xr;
  float yr;
  float dx;
  float dy;

  
  unsigned int *screen_row_ptr;
  unsigned int *screen_ptr;
    
  screen_row_ptr = p_screen + vp_left + (vp_center + 1) * xsize;
  screen_ptr = screen_row_ptr;
  float *dist_row_ptr = distances + vp_left + (vp_center + 1) * xsize;
  float *dist_ptr = dist_row_ptr, *save_ptr;
      
  for (int i = vp_center + 1; i<=vp_bot; ++i, screen_row_ptr += xsize, screen_ptr = screen_row_ptr,
					      dist_row_ptr += xsize, dist_ptr = dist_row_ptr)
  {
      save_ptr = dist_ptr;
      
      int j;
      for (j=vp_left; j<=vp_right; ++j) {
 	if (*dist_ptr != 0.0f)
 	  break;
 	++dist_ptr;
      }
       
      int first_col = j;
      
      if (j == vp_right+1)
	continue;
      
      render_row[0].ratio = *dist_ptr++;
      int n_dist = 1;
                 
      for (; j<=vp_right; ++j) {	
	if (*dist_ptr != 0.0f) {
	  int k;
	  for (k=0; k!=n_dist; ++k) {
	    if (render_row[k].ratio == *dist_ptr) 
	      break;
	  }
	  if (k==n_dist) {
	    render_row[n_dist++].ratio = *dist_ptr;
	  }
	}
	++dist_ptr;	
      }

      for (int k=0; k!=n_dist; ++k) {
	distance = render_row[k].ratio * ratio2;
	
	xl = xp + distance * cos_sin_prod_diff;
	yl = yp + distance * sin_cos_add;
	xr = xp + distance * cos_sin_prod_add;
	yr = yp + distance * sin_cos_diff;   
	dx = (xr - xl) * inv_width;
	dy = (yr - yl) * inv_width;	
	
	render_row[k].distance = distance;
	render_row[k].x = (int)(xl * FXP_MUL);
	render_row[k].y = (int)(yl * FXP_MUL);
	render_row[k].dx = (int)(dx * FXP_MUL);
	render_row[k].dy = (int)(dy * FXP_MUL);	
	
	int light_level = static_cast<int>(distance / LIGHT_LEN_LEVEL); 
	if (light_level >= light_distance_levels)
	  light_level = light_distance_levels-1;	
	render_row[k].light_level = light_level;
      }
            
      dist_ptr = save_ptr;
      plane_render_data *prd;
      int pos = -1;
      unsigned int *ptex;
      
      for (j=vp_left; j<=vp_right; ++j) {
	
	if (*dist_ptr != 0.0f) {
	  
	  prd = &render_row[0];
	  
	  while (prd->ratio != *dist_ptr)
	    ++prd;

	  int fxl = prd->x;
	  int fyl = prd->y;
	  
	  int p = (fxl>>FXP_SHIFT) / GRID_SIZE + (fyl>>FXP_SHIFT) / GRID_SIZE * map_size;
	    
	  if (p != pos) {
	    pos = p;
	    ptex = floor_textures[floor[p].tex][prd->light_level];	    	    
	  }    
	  
          *screen_ptr = *(ptex + ((((fyl>>FXP_SHIFT)%TEXTURE_HEIGHT)*TEXTURE_WIDTH) + ((fxl>>FXP_SHIFT)%TEXTURE_WIDTH)));
	  

	}
	
	for (int k=0; k!=n_dist; ++k) {
	  render_row[k].x += render_row[k].dx;
	  render_row[k].y += render_row[k].dy;
	}
	
	++dist_ptr;
	++screen_ptr;
      }
            
  }
  
  
}

void XEngine::render_points() {
  
  unsigned int *screen_ptr;
      
  int color = 0xFF0000;
  
  for (int i=0; i!=num_points; ++i) {
    int dx = points[i].x - xp;
    int dy = points[i].y - yp;
     
    // formule corrette di trasformazione, poi alignx si puo porendere come distanza
    int alignx = dx * cos(-angle_p) - dy * sin(-angle_p);
    int aligny = dx * sin(-angle_p) + dy * cos(-angle_p);
                    
    if (alignx < 0) {
       points[i].visible = 0;
      continue;
    }

    float distance = alignx;
    if (distance == 0.0f)
	  distance = 1.0f;
    
    int wall_proj_height = pp_distance * points[i].height / distance;
    if (wall_proj_height == 0)
      wall_proj_height = 1;
    
    int bot = pp_distance * height_p / distance + vp_center;
    int top = bot - wall_proj_height + 1;    
     
    int proj = static_cast<int>(aligny * pp_distance / distance) + xsize / 2;
	    
    if (proj >= vp_left && proj <= vp_right) {     // && top <= vp_bot && bot >= vp_top
	
      points[i].visible = 1;
              
      points[i].col = proj;
      points[i].top_row = top;
      points[i].bot_row = bot;
      
      if (i < 1)
	continue;
      
      if (!points[i-1].visible) {
	
	int x1a = points[i-1].x;
	int y1a = points[i-1].y;
	int x2a = points[i].x;
	int y2a = points[i].y;
	
	float ma = static_cast<float>(y2a - y1a) / (x2a - x1a);
	int ext_col;
	
	if (((x1a-xp) * sin(-angle_p) + (y1a-yp) * cos(-angle_p)) < 0)
	  ext_col = vp_left;
	else
	  ext_col = vp_right;
	
	float radians = angle_p + col_data[ext_col].ang;
	float mb = tan(radians);
        int xs, ys;	
	  
	int b1 = y1a - ma * x1a;
	int b2 = yp - mb * xp;
	
	xs = (b1 - b2) / (mb - ma);
	ys = ma * xs + b1;	
	  
	int dx = xs - xp;
	int dy = ys - yp;
  
	int alignx = dx * cos(-angle_p) - dy * sin(-angle_p);
	int aligny = dx * sin(-angle_p) + dy * cos(-angle_p);	  
	  
	float distance = alignx;
	if (distance == 0.0f)
	  distance = 1.0f;
	
	/*
	float distance = sqrt(dx*dx + dy*dy);
	distance *= col_data[vp_left].cos_ang;
      
	float distance = sqrt((xs-xp)*(xs-xp) + (ys-yp)*(ys-yp));
	float dist = sqrt(pp_distance * pp_distance + (xsize/2)*(xsize/2));
	if (distance < dist)
	  distance = dist;	
	*/
	  
	int wall_proj_height = pp_distance * points[i-1].height / distance;
	if (wall_proj_height == 0)
	  wall_proj_height = 1;
	  
	int bot = pp_distance * height_p / distance + vp_center;
	int top = bot - wall_proj_height + 1;      
      
	points[i-1].col = ext_col;
	points[i-1].top_row = top;
	points[i-1].bot_row = bot;	  
	  
      }
	  
      int left_p, right_p;      
      
      if (points[i].col < points[i-1].col) {
	left_p = i;
	right_p = i-1;
      } else {
	left_p = i-1;
	right_p = i;      
      }
	      
      
      float fytop, mtop;
      float fybot, mbot;
      int dx, dytop, dybot;
	
      dx = points[right_p].col - points[left_p].col + 1;
      dytop = points[right_p].top_row - points[left_p].top_row + 1;
      dybot = points[right_p].bot_row - points[left_p].bot_row + 1;    
  
      mtop = static_cast<float>(dytop) / dx;
      mbot = static_cast<float>(dybot) / dx;
      fytop = points[left_p].top_row;
      fybot = points[left_p].bot_row;
      
      
      for (int j=points[left_p].col; j<=points[right_p].col; ++j) {
	
	int ytop = static_cast<int>(fytop + 0.5);
	int ybot = static_cast<int>(fybot + 0.5);
	
	fytop += mtop;
	fybot += mbot;
	
	if (ytop < vp_top)
	  ytop = vp_top;
	
	if (ybot > vp_bot)
	  ybot = vp_bot;
	      
	screen_ptr = p_screen + ytop * xsize + j;
	int span_height = ybot - ytop + 1;
// 	    if (span_height < 0)
// 	      continue;
	while (span_height--) {
	  *screen_ptr = color;
	  screen_ptr += xsize;
	}
	
      }
      
      color += 0xFF;
	  
    } else {
      points[i].visible = 0;
    }
    
    
  } 
  
}

void XEngine::line_y(int x0, int y0, int x1, int y1, int *yp) {
    
  float fx, fy, m;
  int x, y, tmp, dx, dy;
    
  dx = x1 - x0;
  dy = y1 - y0;
    
//   if (abs(dx) > abs(dy)) {
    if (x1<x0) {
	tmp=x0;x0=x1;x1=tmp;
	tmp=y0;y0=y1;y1=tmp;
    }
    fy=y0;
    m=((float)dy)/dx;
    for (x=x0; x<=x1; x++) {
      //draw_point(x, (int)(fy + 0.5), col);
      yp[x] = static_cast<int>(fy + 0.5);
      fy += m;
    }
    
//    } else {
//     if (y1<y0) {
//       tmp=x0;x0=x1;x1=tmp;
//       tmp=y0;y0=y1;y1=tmp;
//     }     
//     fx = (float)x0;
//     if (!(float)dy) return;
//     m = ((float)dx)/dy;
//     for (y=y0; y!=y1; ++y) {
//       //draw_point((int)(fx + 0.5), y, col);
//       fx += m;
//     }
//   }
  
}


/*
void XEngine::test() {
  
  float cos_left_column_angle = col_data[vp_left].cos_ang;
  float sin_left_column_angle = col_data[vp_left].sin_ang;
  
  unsigned int *screen_row_ptr = p_screen + vp_left + (vp_center + 1) * xsize;
  unsigned int *screen_ptr = screen_row_ptr;
  float *dist_row_ptr = distances + vp_left + (vp_center + 1) * xsize;
  float *dist_ptr = dist_row_ptr;
  
//   for (int i=0; i!=ysize; ++i)
//     for (int j=0; j!=xsize; ++j) {
//       if (distances[j + i*xsize] != 0.0) {
// 	cout << distances[j + i*xsize] << " row: " << i << " col: " << j << endl;
//       }
//     }
    
  for (int i = vp_center + 1; i<=vp_bot; ++i, screen_row_ptr += xsize, screen_ptr = screen_row_ptr,
					      dist_row_ptr += xsize, dist_ptr = dist_row_ptr)
  {

    if (i == 500) {
      cout << "row: "  << i << endl;
      
      int j;
      for (j=vp_left+1; j<=vp_right; ++j) {
 	if (*dist_ptr != 0.0f)
 	  break;
 	++dist_ptr;
       }
       
      int first_col = j;
      
      if (j == vp_right+1)
	continue;
      
      render_row[0].distance = *dist_ptr++;
      int n_dist = 1;
      
      int xc[100];
            
      for (; j<=vp_right; ++j) {	
	if (*dist_ptr != 0.0f) {
	  int k;
	  for (k=0; k!=n_dist; ++k) {
	    if (render_row[k].distance == *dist_ptr) 
	      break;
	  }
	  if (k==n_dist) {
	    xc[n_dist-1]=j;
	    render_row[n_dist++].distance = *dist_ptr;
	  }
	}
	++dist_ptr;	
      }
      
      cout << n_dist << " distances" << endl;
    
      for (j=vp_right; j>=vp_left; --j) {
 	--dist_ptr;
	if (*dist_ptr != 0.0f)
 	  break;
      }
       
      int last_col = j;
      xc[n_dist-1]=last_col;
      
      int last_x = first_col;
      int xci = 0;
      int color = 0xFF0000;
      screen_ptr += (first_col-vp_left);
      
      while (n_dist--) {
	cout << xc[xci] << endl;
	while (last_x != xc[xci]) {
	  *screen_ptr++ = color;
	  ++last_x;
	}
	++xci;
	color += 0xFFFF;
      }
      
    }
    
  }
  
//   cout << endl << endl;
}
 */


/*
 * 
 * void XEngine::render_points() {
  
  unsigned int *screen_ptr;
      
  for (int i=0; i!=num_points; ++i) {
    int dx = points[i].x - xp;
    int dy = points[i].y - yp;
     
    int alignx = dx * cos(-angle_p) - dy * sin(-angle_p);
    int aligny = dx * sin(-angle_p) + dy * cos(-angle_p);
        
    points[i].visible = 1;
    
     if (alignx < 0) {
       points[i].visible = 0;
//        continue;
     }
    
    float distance = alignx; //sqrt(alignx*alignx + aligny*aligny);
    
    int proj = (int)(aligny * pp_distance / distance) + xsize / 2;
            
    int wall_proj_height = pp_distance * points[i].height / distance;
    if (wall_proj_height == 0)
      wall_proj_height = 1;
    
    int bot = pp_distance * height_p / distance + vp_center;
    int top = bot - wall_proj_height + 1;    
//     float wall_col_inc = static_cast<float>(wall_height) / wall_proj_height;
//     float wall_tex_off = 0.0f;
//     int wall_tex_ioff = 0;
    
    if (top < vp_top) {
      //wall_proj_height -= (vp_top - top);
//       wall_tex_ioff = (vp_top - top);
//       wall_tex_off = wall_tex_ioff * wall_col_inc;
      top = vp_top;
    }
      
    if (bot > vp_bot) {
      //wall_proj_height -= (bot - vp_bot);
      bot = vp_bot;
    }
        
    
    if (top <= vp_bot && bot >= vp_top && proj >= vp_left && proj <= vp_right) {
      points[i].visible = 1;
//       screen_ptr = p_screen + top * xsize + proj;
//  
//       int n = bot - top + 1;
//       while (n--) {
// 	*screen_ptr = 0xFF0000;
// 	screen_ptr += xsize;
//       }
      
    } else 
      points[i].visible = 0;
    
    points[i].col = proj;
    points[i].top_row = top;
    points[i].bot_row = bot;
    
  } 
  
  if (points[0].visible || points[1].visible) {
    
//     int *ytop = new int[xsize];
//     int *ybot = new int[xsize];
    
    int left_p, right_p;
    
    if (points[0].col < points[1].col) {
      left_p = 0;
      right_p = 1;
    } else {
      left_p = 1;
      right_p = 0;      
    }
    
     if (points[left_p].col < vp_left) {
       points[left_p].col = vp_left;
     }
     
     if (points[right_p].col > vp_right) {
       points[right_p].col = vp_right; 
     }
    
    
//     line_y(points[left_p].col, points[left_p].top_row, points[right_p].col, points[right_p].top_row, ytop);
//     line_y(points[left_p].col, points[left_p].bot_row, points[right_p].col, points[right_p].bot_row, ybot);
    

//     float fy, m;
//     int x, y, tmp, dx, dy;
//       
//     dx = x1 - x0;
//     dy = y1 - y0;
//       
//       if (x1<x0) {
// 	  tmp=x0;x0=x1;x1=tmp;
// 	  tmp=y0;y0=y1;y1=tmp;
//       }
//       fy=y0;
//       m=((float)dy)/dx;
//       for (x=x0; x<=x1; x++) {
// 	//draw_point(x, (int)(fy + 0.5), col);
// 	yp[x] = static_cast<int>(fy + 0.5);
// 	fy += m;
//       }
    
    
    float fytop, mtop;
    float fybot, mbot;
    int dx, dytop, dybot;
      
    dx = points[right_p].col - points[left_p].col + 1;
    dytop = points[right_p].top_row - points[left_p].top_row + 1;
    dybot = points[right_p].bot_row - points[left_p].bot_row + 1;    
 
    mtop = static_cast<float>(dytop) / dx;
    mbot = static_cast<float>(dybot) / dx;
    fytop = points[left_p].top_row;
    fybot = points[left_p].bot_row;
    
    
    for (int j=points[left_p].col; j<=points[right_p].col; ++j) {
         
      int ytop = static_cast<int>(fytop + 0.5);
      int ybot = static_cast<int>(fybot + 0.5);
      
      fytop += mtop;
      fybot += mbot;
      
      if (ytop < vp_top)
	ytop = vp_top;
      
      if (ybot > vp_bot)
	ybot = vp_bot;
            
      screen_ptr = p_screen + ytop * xsize + j;
      int span_height = ybot - ytop + 1;
          if (span_height < 0)
	    continue;
      while (span_height--) {
	*screen_ptr = 0xFF0000;
	screen_ptr += xsize;
      }
      
    }

  }
  
}

*/


/*
 * 

       if (!points[i-1].visible) {
	int x1a = points[i-1].x;
	int y1a = points[i-1].y;
	int x2a = points[i].x;
	int y2a = points[i].y;
	float ma = static_cast<float>(y2a - y1a) / (x2a - x1a);
		
	float radians = angle_p + col_data[vp_left].ang;
	
// 	if (radians >= 2 * M_PI)
// 	  radians -= 2 * M_PI;
// 	else if (radians < 0)
// 	  radians += 2 * M_PI;
	
// 	float sin_radians = sin(radians);
// 	float cos_radians = cos(radians);	
// 	int x2b = MAX_RAY_DISTANCE * cos_radians + xp;
// 	int y2b = MAX_RAY_DISTANCE * sin_radians + yp;
	float mb = tan(radians);

	int xs, ys;	
	
	int b1 = y1a - ma * x1a;
	int b2 = yp - mb * xp;
	xs = (b1 - b2) / (mb - ma);
	ys = ma * xs + b1;
	
//  	int b1 = (xp - x1a) * ma + (yp - y1a);
//  	xs = b1 / (mb - ma);
//  	ys = y1a + (xs - x1a) * ma;	

// 	int b1 = (xp - x2a) * ma + (yp - y2a);
// 	xs = b1 / (mb - ma);
// 	ys = y2a + (xs - x2a) * ma;	

	
 	int dx = xs - xp;
 	int dy = ys - yp;
// 	
 	int alignx = dx * cos(-angle_p) - dy * sin(-angle_p);
 	int aligny = dx * sin(-angle_p) + dy * cos(-angle_p);
			
// 	if (alignx < 0) {
// 	  points[i].visible = 0;
// 	  continue;
// 	}

	float distance = alignx;
//	float distance = sqrt(dx*dx + dy*dy);
//	distance *= col_data[vp_left].cos_ang;
  
//  	float distance = sqrt((xs-xp)*(xs-xp) + (ys-yp)*(ys-yp));
// 	float dist = sqrt(pp_distance * pp_distance + (xsize/2)*(xsize/2));
// 	if (distance < dist)
// 	  distance = dist;
	
	int wall_proj_height = pp_distance * points[i-1].height / distance;
	if (wall_proj_height == 0)
	  wall_proj_height = 1;
	
	int bot = pp_distance * height_p / distance + vp_center;
	int top = bot - wall_proj_height + 1;    

	if (top < vp_top) {
	  top = vp_top;
	}
	  
	if (bot > vp_bot) {
	  bot = vp_bot;
	}    
    
	points[i-1].col = vp_left;
	points[i-1].top_row = top;
	points[i-1].bot_row = bot;
      }
 */



/*


 if (!points[i-1].visible) {
	int x1a = points[i-1].x;
	int y1a = points[i-1].y;
	int x2a = points[i].x;
	int y2a = points[i].y;
	
 	int x1a_rot = (x1a - xp) * cos(-angle_p) - (y1a - yp) * sin(-angle_p);
 	int y1a_rot = (x1a - xp) * sin(-angle_p) + (y1a - yp) * cos(-angle_p);	
 	int x2a_rot = (x2a - xp) * cos(-angle_p) - (y2a - yp) * sin(-angle_p);
 	int y2a_rot = (x2a - xp) * sin(-angle_p) + (y2a - yp) * cos(-angle_p);		
	
	float ma_rot = static_cast<float>(y2a_rot - y1a_rot) / (x2a_rot - x1a_rot);
	float ba_rot = y1a_rot - ma_rot * x1a_rot;
	int projc = ma_rot * pp_distance + ba_rot;
	
	if (projc > xsize/2) {
	  float ma = static_cast<float>(y2a - y1a) / (x2a - x1a);
	  float radians = angle_p + col_data[vp_left].ang;
	  float mb = tan(radians);

	  int xs, ys;	
	  
	  int b1 = y1a - ma * x1a;
	  int b2 = yp - mb * xp;
	  xs = (b1 - b2) / (mb - ma);
	  ys = ma * xs + b1;	
	  
	  int dx = xs - xp;
	  int dy = ys - yp;
  
	  int alignx = dx * cos(-angle_p) - dy * sin(-angle_p);
	  int aligny = dx * sin(-angle_p) + dy * cos(-angle_p);	  
	  
	  float distance = alignx;
	  if (distance == 0.0f)
		distance = 1.0f;
	  
	  float distance = sqrt(dx*dx + dy*dy);
	  distance *= col_data[vp_left].cos_ang;
      
	  float distance = sqrt((xs-xp)*(xs-xp) + (ys-yp)*(ys-yp));
	  float dist = sqrt(pp_distance * pp_distance + (xsize/2)*(xsize/2));
	  if (distance < dist)
	    distance = dist;	
	  
	  
	  int wall_proj_height = pp_distance * points[i-1].height / distance;
	  if (wall_proj_height == 0)
	    wall_proj_height = 1;
	  
	  int bot = pp_distance * height_p / distance + vp_center;
	  int top = bot - wall_proj_height + 1;    

	  if (top < vp_top) {
	    top = vp_top;
	  }
	    
	  if (bot > vp_bot) {
	    bot = vp_bot;
	  }    
      
	  points[i-1].col = vp_left;
	  points[i-1].top_row = top;
	  points[i-1].bot_row = bot;	  
	  
	} else {
	  
	  points[i-1].col = projc;
	  
	  
	  float distance = sqrt(projc*projc + pp_distance*pp_distance);//pp_distance;
	  if (distance == 0.0f)
		distance = 1.0f;
	  
// 	  float distance = sqrt(dx*dx + dy*dy);
// 	  distance *= col_data[vp_left].cos_ang;
//       
// 	  float distance = sqrt((xs-xp)*(xs-xp) + (ys-yp)*(ys-yp));
// 	  float dist = sqrt(pp_distance * pp_distance + (xsize/2)*(xsize/2));
// 	  if (distance < dist)
// 	    distance = dist;	
	  
	  
	  int wall_proj_height = pp_distance * points[i-1].height / distance;
	  if (wall_proj_height == 0)
	    wall_proj_height = 1;
	  
	  int bot = pp_distance * height_p / distance + vp_center;
	  int top = bot - wall_proj_height + 1;    

	  if (top < vp_top) {
	    top = vp_top;
	  }
	    
	  if (bot > vp_bot) {
	    bot = vp_bot;
	  }    	  
	  
	  points[i-1].top_row = top;
	  points[i-1].bot_row = bot;	  
	  
	  // tratto cols[vp_left, projc]
	  for (int j=vp_left; j<projc; ++j) {
	    screen_ptr = p_screen + vp_top * xsize + j;
	    int span_height = vp_bot - vp_top + 1;
	    while (span_height--) {
	    *screen_ptr = 0x0000cd;
	    screen_ptr += xsize;
	    }
	  }
	  
	}
      }
      
      
*/