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

#define MAP_SIZE 50
#define GRID_SIZE 64
#define PLAYER_HEIGHT 32
#define WORLD_HEIGHT GRID_SIZE * 4

#define ANGLE_DISP 0.055
#define POS_DISP 10

#define TEXTURE_WIDTH 64
#define TEXTURE_HEIGHT 64

#define FXP_SHIFT 16
#define FXP_MUL (1<<FXP_SHIFT)

#define NUM_WALL_TEXTURES 3
#define NUM_FLOOR_TEXTURES 2
#define NUM_CEILING_TEXTURES 2

#define MAX_LIGHT_LEN 1000
#define LIGHT_LEN_LEVEL 50

#define MAX_RAY_DISTANCE 2000

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
  tex_width = TEXTURE_WIDTH;
  tex_height = TEXTURE_HEIGHT;
  light_distance_levels = MAX_LIGHT_LEN / LIGHT_LEN_LEVEL + 1;

  x_wall_textures = new unsigned int**[NUM_WALL_TEXTURES];  
  gen_light_textures(x_wall_textures, NUM_WALL_TEXTURES, "xwall");
  
  y_wall_textures = new unsigned int**[NUM_WALL_TEXTURES];  
  gen_light_textures(y_wall_textures, NUM_WALL_TEXTURES, "ywall");
  
  floor_textures = new unsigned int**[NUM_FLOOR_TEXTURES];
  gen_light_textures(floor_textures, NUM_FLOOR_TEXTURES, "floor");
      
  ceiling_textures = new unsigned int**[NUM_CEILING_TEXTURES];
  gen_light_textures(ceiling_textures, NUM_CEILING_TEXTURES, "ceiling");
    
  sky_tex = new unsigned int[tex_width * tex_height];
  unsigned int *p = sky_tex;
  for (int i=0; i!=tex_width*tex_height; ++i)
    *p++ = 0xABCDEF;
  
  ceiling_textures[1][0] = ceiling_textures[0][0];
  ceiling_textures[0][0] = sky_tex;
  
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
      int z = j * 6;
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
    ceiling = new plane [map_size * map_size];
    
    for (int i=0; i!=map_size; ++i) {
      for (int j=0; j!=map_size; ++j) {
	if (i==0 || i==map_size-1 || j==0 || j==(map_size-1)) {
	  floor[j + i*map_size].code = BOUNDARY_WALL_CODE;
	  floor[j + i*map_size].height = 3*GRID_SIZE;  	    
	  floor[j + i*map_size].tex = 0; //rand () % NUM_FLOOR_TEXTURES;
// 	  floor[j + i*map_size].wall_tex = rand()%NUM_WALL_TEXTURES;
	  
	  ceiling[j + i*map_size].height = 0*GRID_SIZE;
	  ceiling[j + i*map_size].tex = 0;
// 	  ceiling[j + i*map_size].wall_tex = rand()%NUM_WALL_TEXTURES;
	} else {
	  floor[j + i*map_size].code = NO_WALL_CODE;
	  floor[j + i*map_size].tex = 0; //rand () % NUM_FLOOR_TEXTURES;
	  floor[j + i*map_size].height = 0; //rand() % 50;
	  	  
	  ceiling[j + i*map_size].height = 0; //rand() % 80;
	  ceiling[j + i*map_size].tex = 0;
	}
  
	floor[j + i*map_size].wall_tex = rand()%NUM_WALL_TEXTURES;
	ceiling[j + i*map_size].wall_tex = rand()%NUM_WALL_TEXTURES;
      }
    }
    
    int base = 0, t;
    
    for (int i=10; i!=12; ++i) {
      t = base;
      for (int j=15; j!=25; j++) {
	t += 8;
	floor[j + i*map_size].height = t;
	floor[j + i*map_size].tex = 1;
	floor[j + i*map_size].wall_tex = 0;
      }
    }

    static int height[] = { 0, 16, 32, 48, 64 };
    
    for (int i=15; i!=25; ++i) {
      for (int j=10; j!=20; ++j) {
	floor[j + i*map_size].height = height[1]; 
	floor[j + i*map_size].tex = 1;
      }
    }
    
    for (int i=15; i!=25; ++i) {
      for (int j=20; j!=30; ++j) {
	floor[j + i*map_size].height = height[2]; 
	floor[j + i*map_size].tex = 1;
      }
    }
    
    for (int i=25; i!=31; ++i) {
      for (int j=20; j!=30; ++j) {
	floor[j + i*map_size].height = height[3]; 
	floor[j + i*map_size].tex = 1;
      }
    }
    
    for (int i=31; i!=40; ++i) {
      for (int j=20; j!=30; ++j) {
	floor[j + i*map_size].height = height[4]; 
	floor[j + i*map_size].tex = 1;
      }
    }
    
    
    for (int i=30; i!=48; ++i) {
      for (int j=35; j!=48; ++j) {
	if (rand() % 5 == 0)
	  floor[j + i*map_size].height = rand() % 80; 
	  floor[j + i*map_size].tex = 1; 
      }
    }
    
    for (int i=30; i!=48; ++i) {
      for (int j=2; j!=15; ++j) {
	if (rand() % 5== 0)
	  floor[j + i*map_size].height = 192; 
	  floor[j + i*map_size].tex = 1; 
      }
    }
    
// //     floor[5 + 15*map_size].height = 25;
//     ceiling[5 + 16*map_size].height = GRID_SIZE * 3;
//     ceiling[5 + 16*map_size].tex =1;
/*

    int j = 1, i;   
    for (i=1; i!=map_size-1; ++i) {
      floor[1 + i*map_size].height = 2.5*GRID_SIZE;
      floor[10 + i*map_size].height = 2.5*GRID_SIZE;
      if (i % 2) {
	floor[1 + i*map_size].height = 3.5*GRID_SIZE;
	floor[10 + i*map_size].height = 3.5*GRID_SIZE;
      }
    }
  
    for (j=1; j!=10; ++j) {
      floor[j + map_size].height = 2.5*GRID_SIZE;
      floor[j + (map_size-2)*map_size].height = 2.5*GRID_SIZE;
      floor[j + 22*map_size].height = 2.5*GRID_SIZE;
      if (j % 2) {
	floor[j + map_size].height = 3.5*GRID_SIZE; 
	floor[j + (map_size-2)*map_size].height = 3.5*GRID_SIZE; 
	floor[j + 22*map_size].height = 3.5*GRID_SIZE;
      }
    }
    
    
    floor[10 + 15*map_size].height = 0;
    ceiling[10 + 15*map_size].height = GRID_SIZE*2.5;
    ceiling[10 + 15*map_size].tex = 0;
    int base = GRID_SIZE*2.5;
    
    for (j=11; j!=20; ++j) { 
      floor[j + 14*map_size].height = 2.5*GRID_SIZE;
      floor[j + 16*map_size].height = 2.5*GRID_SIZE;
      
      floor[j + 15*map_size].height = (j-10)*7;
      ceiling[j + 15*map_size].height = base - (j-10)*7;
      ceiling[j + 15*map_size].tex = 0;
    }
    

    floor[5 + 22*map_size].height = 0;
    ceiling[5 + 22*map_size].height = GRID_SIZE*2.5;
    ceiling[5 + 22*map_size].tex = 0;
    base = GRID_SIZE*2.5;
    
    for (i=23; i!=30; ++i) { 
      floor[4 + i*map_size].height = 2.5*GRID_SIZE;
      floor[6 + i*map_size].height = 2.5*GRID_SIZE;
      
      floor[5 + i*map_size].height = (i-22)*7;
      ceiling[5 + i*map_size].height = base - (i-22)*7;
      ceiling[5 + i*map_size].tex = 0;
    }
        
    int height = (30-22)*7;    
    for (j=2; j!=10; ++j) {
      floor[j + 30*map_size].height = height;
      if (j!=2 && j!=9)
	if (j % 2)
	  floor[j + 31*map_size].height = 2.5*GRID_SIZE;
	else floor[j + 31*map_size].height = 3.5*GRID_SIZE;	
      if (j!=5)
	floor[j + 29*map_size].height = 2.5*GRID_SIZE;
      ceiling[j + 30*map_size].height = base - (30-22)*7;
      ceiling[j + 30*map_size].tex = 0;
    }
    
    base = (30-22)*7;
    for (i=30; i!=35; i++) {
      floor[2 + i*map_size].height = base;
      floor[9 + i*map_size].height = base;
      base -= 7;
    }
    
    for (int i=35; i!=48; ++i) {
      floor[2 + i*map_size].height = base;
      floor[9 + i*map_size].height = base;      
    }
*/    

}    
    
void XEngine::render_view() {

  float radians;
  float distance;
  float inv_grid_size = 1.0f / GRID_SIZE;
  int cur_floor_height, cur_ceiling_height;
  unsigned int *col_screen_ptr = p_screen + vp_left;
  
  cos_angle_p = cos(angle_p);
  sin_angle_p = sin(angle_p);  
  cur_floor_height = floor[(xp/GRID_SIZE)+(yp/GRID_SIZE)*map_size].height;
  cur_ceiling_height = ceiling[(xp/GRID_SIZE)+(yp/GRID_SIZE)*map_size].height;
  cur_height_p = height_p + cur_floor_height;
      
  for (int col = vp_left; col <= vp_right; ++col, ++col_screen_ptr) {

    float cos_col_angle = col_data[col].cos_ang;
    float sin_col_angle = col_data[col].sin_ang;
    float sin_radians = sin_angle_p * cos_col_angle + cos_angle_p * sin_col_angle;
    float cos_radians = cos_angle_p * cos_col_angle - sin_angle_p * sin_col_angle;
    float inv_sin_radians = 1.0f / sin_radians;
    float inv_cos_radians = 1.0f / cos_radians;
    float slope = sin_radians / cos_radians;
    if (slope == 0.0f)
      slope = 0.0001;//3.272e-4;
    
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
    int wall_proj_height, wall_proj_height_c;
    int wall_height_diff, wall_height_diff_c;
    int wall_col;
    int map_pos;
    int bot, bot_c;
    int top, top_c;    
    int last_top; 
    int last_bot;
    int light_level;
    int cur_height, cur_height_c;
    int prev_height, prev_height_c;
    int max_height;
    int vspan_height;
    
    unsigned int *screen_ptr;
        
    
    prev_height = cur_floor_height;
    prev_height_c = cur_ceiling_height;
    last_top = vp_bot;
    last_bot = vp_top;
    
    do {
                  
      if (xdist < ydist) {

	map_pos = xmaze_x + static_cast<int>(xmaze_y) * map_size;

	code = floor[map_pos].code;
	cur_height = floor[map_pos].height;
	cur_height_c = ceiling[map_pos].height;
	
	wall_col = static_cast<int>(xcross_y) % GRID_SIZE;
	distance = xdist * cos_col_angle;

	xcross_x += grid_x_xoffs;
 	xcross_y += grid_x_yoffs;
 	xdist += x_len_dist;
 	xmaze_x += xmaze_x_offs;
 	xmaze_y += x_yratio;
		
      } else {
	  
	map_pos = static_cast<int>(ymaze_x) + ymaze_y * map_size;
	
	code = floor[map_pos].code;
	cur_height = floor[map_pos].height;
	cur_height_c = ceiling[map_pos].height;
	
	wall_col = static_cast<int>(ycross_x) % GRID_SIZE;
	distance = ydist * cos_col_angle;
	
 	ycross_y += grid_y_yoffs;
 	ycross_x += grid_y_xoffs;
 	ydist += y_len_dist;	
 	ymaze_y += ymaze_y_offs;
 	ymaze_x += y_xratio;
		
      }
      
    if (distance == 0.0f)
	  distance = 1.0f;

    // ceil

    bot_c = -pp_distance * (WORLD_HEIGHT - cur_height_p - prev_height_c) / distance + vp_center;
    wall_height_diff_c = cur_height_c - prev_height_c;
    
    if (wall_height_diff_c <= 0) {
      top_c = --bot_c;
    } else {
      wall_proj_height_c = pp_distance * wall_height_diff_c / distance;
      
      top_c = bot_c + wall_proj_height_c - 1;
      wall_tex_off = 0.0f;
      wall_col_inc = static_cast<float>(wall_height_diff_c) / wall_proj_height_c;
      
      if (bot_c <= last_top && top_c >= last_bot) {
	
 	if (top_c > last_top) {
 	  wall_tex_off = (top_c - last_top) * wall_col_inc;
 	  top_c = last_top;
 	}
	
	if (bot_c < last_bot) {
	  bot_c = last_bot; 
	}
	
	screen_ptr = col_screen_ptr + top_c * xsize;
	tex_ptr = x_wall_textures[ceiling[map_pos].wall_tex][0] + wall_col * tex_width;
	tex_col_off = wall_tex_off * FXP_MUL;
	tex_col_inc = wall_col_inc * FXP_MUL; 
	
	vspan_height = top_c - bot_c + 1;

 	while (vspan_height--) {
 	  *screen_ptr = *(tex_ptr + (tex_col_off>>FXP_SHIFT) % GRID_SIZE);
 	  tex_col_off += tex_col_inc;
 	  screen_ptr -= xsize;
 	}
	
	--bot_c;
      }
    }
    
    if (bot_c < vp_center && bot_c >= last_bot) {
                  
      if (bot_c > last_top)
	bot_c = last_top;
	
      screen_ptr = col_screen_ptr + bot_c * xsize;
      vspan_height = bot_c - last_bot + 1;
      
      while (vspan_height--) {
	float ratio = static_cast<float>(WORLD_HEIGHT - cur_height_p - prev_height_c) /(vp_center - bot_c--);
 	float dist_ceil = ratio * pp_distance / cos_col_angle; //cos(columnn_angle);
        int x = xp + dist_ceil * cos_radians;
        int y = yp + dist_ceil * sin_radians;
	int index = (x/GRID_SIZE)+(y/GRID_SIZE)*map_size;
  	if (index >= 0 && index <= map_size * map_size - 1) {
  	  int t = (y % GRID_SIZE) * tex_width + (x % GRID_SIZE);
  	  tex_ptr = ceiling_textures[ceiling[(x/GRID_SIZE)+(y/GRID_SIZE)*map_size].tex][0] + t;
  	  *screen_ptr = *tex_ptr;
 	} else
	  *screen_ptr = 0;
        screen_ptr -= xsize;  	
      }
      
    }
    
    if (top_c >= last_bot) {
      last_bot = top_c + 1; 
      if (last_bot > last_top)
	break;
    }
    
    prev_height_c = cur_height_c;
    
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
      
      
      if (top <= last_top && bot >= last_bot) {
	
 	if (top < last_bot) {
 	  wall_tex_off = (last_bot - top) * wall_col_inc;
 	  top = last_bot;	
        }
	
	if (bot > last_top) {	
	  bot = last_top;
	}

	screen_ptr = col_screen_ptr + top * xsize;
	tex_ptr = x_wall_textures[floor[map_pos].wall_tex][0] + wall_col * tex_width;
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
                
      if (bot < last_bot)
	bot = last_bot;
      
      screen_ptr = col_screen_ptr + bot * xsize;
      vspan_height = last_top - bot + 1;

      while (vspan_height--) {
	float ratio = static_cast<float>(cur_height_p - prev_height) /(bot++ - vp_center);
	float dist_floor = ratio * pp_distance / cos_col_angle; //cos(columnn_angle);
        int x = xp + dist_floor * cos_radians;
        int y = yp + dist_floor * sin_radians;
	int index = (x/GRID_SIZE)+(y/GRID_SIZE)*map_size;
 	if (index >= 0 && index <= map_size * map_size - 1) {
 	  int t = (y % GRID_SIZE) * tex_width + (x % GRID_SIZE);
 	  tex_ptr = floor_textures[floor[(x/GRID_SIZE)+(y/GRID_SIZE)*map_size].tex][0] + t;
 	  *screen_ptr = *tex_ptr;
	} else 
	  *screen_ptr = 0;
        screen_ptr += xsize;  	
      }
        
    }

    if (top <= last_top)
      last_top = top - 1;
        
    prev_height = cur_height;
        
  } while (last_top >= last_bot && code != BOUNDARY_WALL_CODE);
  
  
  if (last_bot <= last_top) {
    screen_ptr = col_screen_ptr + last_bot * xsize;
    do {
      *screen_ptr = 0xABCDEF;
      screen_ptr += xsize;
    } while (++last_bot <= last_top);
  }
  
 } // ciclo ray casting

}
  
 