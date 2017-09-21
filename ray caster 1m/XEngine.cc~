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
#define WALL_HEIGHT 64
#define PLAYER_HEIGHT 32

#define ANGLE_DISP 0.055
#define POS_DISP 9

#define TEXTURE_WIDTH 64
#define TEXTURE_HEIGHT 64

#define HEIGHT_OFFSET_PRECALC_FACTOR 1
#define FXP_SHIFT 16
#define FXP_MUL (1<<FXP_SHIFT)

#define NUM_WALL_TEXTURES 1
#define NUM_FLOOR_TEXTURES 1
#define NUM_CEILING_TEXTURES 1

#define MAX_LIGHT_LEN 1000
#define LIGHT_LEN_LEVEL 50

#define MAX_RAY_DISTANCE 2000

#define NO_WALL_CODE 0
#define BOUNDARY_WALL_CODE 1
#define INTERNAL_WALL_CODE 2

XEngine::XEngine(int xsize, int ysize, XScreenRgbInfo *scr_info)
  : map_size(MAP_SIZE), grid_size(GRID_SIZE), wall_height(WALL_HEIGHT), fov(FOV) {
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
    
    xp = yp = 96;
    xd = yd = POS_DISP;
    angle_p = 0.0f;
    angle_d = ANGLE_DISP;
    height_p =  PLAYER_HEIGHT;  
    pp_distance = xsize/2 / tan(deg_to_rad(FOV/2));
    max_distance = sqrt((map_size * grid_size)*(map_size * grid_size)+
	                (map_size * grid_size)*(map_size * grid_size));
	
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
  
  /********************************/
  slice_data = new col_info[xsize];
  
  int n = 5000;
  for (int i=0; i!=xsize; ++i) {
    slice_data[i].n_slices = 0;
    col_slice **p = &(slice_data[i].slices_ptr);
    for (int j=0; j!=n; ++j) {
      *p = new col_slice;
      p = &((*p)->next);
    }
    *p = 0; 
  }
  
  /*********************************/
  max_height_precalc = ysize * HEIGHT_OFFSET_PRECALC_FACTOR;
  col_offsets = new unsigned int*[max_height_precalc+1];
  
  for (int h=1; h<=max_height_precalc; ++h) {
    col_offsets[h] = new unsigned int[h];
    float inc = static_cast<float>(wall_height)/h;
    float off = 0.0f;
    for (int i=0; i!=h; i++) {
      col_offsets[h][i] = static_cast<int>(off);
      off += inc;
    }
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
  
}

void XEngine::gen_light_textures(unsigned int ***textures_array, int num_textures, 
				 const char *name_texture) {
  
  char tex_file_name[200];
    
  for (int i=0; i!=num_textures; ++i) {
    sprintf(tex_file_name,"%s%d.ppm",name_texture,(i+1));
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
	floor[j + i*map_size].tex = 0;
	floor[j + i*map_size].height = 0;
	ceiling[j + i*map_size].tex = 0;
	ceiling[j + i*map_size].height = 0;
      }
    }
    
    x_grid = new wall[map_size * (map_size+1)];
    y_grid = new wall[(map_size+1) * map_size];
    
    memset(x_grid, 0x0, (map_size+1) * map_size * sizeof(int));
    memset(y_grid, 0x0, (map_size+1) * map_size * sizeof(int));
    
    for (int i=0; i!=map_size; ++i) {
      x_grid[i*(map_size+1)].code=BOUNDARY_WALL_CODE;
      x_grid[i*(map_size+1)].height=WALL_HEIGHT*2;
      x_grid[i*(map_size+1)].tex=rand() % NUM_WALL_TEXTURES;
      
      x_grid[i*(map_size+1)+1].code=BOUNDARY_WALL_CODE;
      x_grid[i*(map_size+1)+1].height=WALL_HEIGHT*2;
      x_grid[i*(map_size+1)+1].tex=rand() % NUM_WALL_TEXTURES;
      
      x_grid[i*(map_size+1)+map_size].code=BOUNDARY_WALL_CODE;
      x_grid[i*(map_size+1)+map_size].height=WALL_HEIGHT;
      x_grid[i*(map_size+1)+map_size].tex=rand() % NUM_WALL_TEXTURES;
      
      x_grid[i*(map_size+1)+map_size-1].code=BOUNDARY_WALL_CODE;
      x_grid[i*(map_size+1)+map_size-1].height=WALL_HEIGHT;
      x_grid[i*(map_size+1)+map_size-1].tex=rand() % NUM_WALL_TEXTURES;
      
      y_grid[i].code = BOUNDARY_WALL_CODE;
      y_grid[i].height=WALL_HEIGHT;
      y_grid[i].tex=rand() % NUM_WALL_TEXTURES;
      
      y_grid[map_size + i].code = BOUNDARY_WALL_CODE;
      y_grid[map_size + i].height=WALL_HEIGHT;
      y_grid[map_size + i].tex=rand() % NUM_WALL_TEXTURES;
      
      y_grid[map_size * map_size + i].code = BOUNDARY_WALL_CODE;
      y_grid[map_size * map_size + i].height=WALL_HEIGHT;
      y_grid[map_size * map_size + i].tex=rand() % NUM_WALL_TEXTURES;
      
      y_grid[map_size * (map_size-1) + i].code = BOUNDARY_WALL_CODE;
      y_grid[map_size * (map_size-1) + i].height=WALL_HEIGHT;
      y_grid[map_size * (map_size-1) + i].tex=rand() % NUM_WALL_TEXTURES;
    }
     
    
    for (int i=1; i!=map_size-1; ++i) {
      for (int j=1; j!=map_size-1; ++j) {
	if ((i <= 10 || i>=20) && (j>=5 && j<= 30) && rand() % 25 == 0) {
	  int wall_height = (25 + rand() % 50);
	  floor[i * map_size + j].height = wall_height;
	  
	  x_grid[(map_size+1)*i+j].code = INTERNAL_WALL_CODE;
	  x_grid[(map_size+1)*i+j].tex = rand() % NUM_WALL_TEXTURES;
	  x_grid[(map_size+1)*i+j].height = wall_height;
	  
	  x_grid[(map_size+1)*i+j+1].code = INTERNAL_WALL_CODE;
	  x_grid[(map_size+1)*i+j+1].tex = rand() % NUM_WALL_TEXTURES;
	  x_grid[(map_size+1)*i+j+1].height = wall_height;
	  
	  y_grid[map_size*i+j].code = INTERNAL_WALL_CODE;
	  y_grid[map_size*i+j].tex = rand() % NUM_WALL_TEXTURES;
	  y_grid[map_size*i+j].height = wall_height;
	  
	  y_grid[map_size*(i+1)+j].code = INTERNAL_WALL_CODE;
	  y_grid[map_size*(i+1)+j].tex = rand() % NUM_WALL_TEXTURES;
	  y_grid[map_size*(i+1)+j].height = wall_height;
	}
      }
    }
    
    
    int i = 15;
    for (int j=5; j!=20; ++j) {
	  int wall_height = (j-4)*(10);// + rand() % 50);
	  floor[i * map_size + j].height = wall_height;
	  
	  x_grid[(map_size+1)*i+j].code = INTERNAL_WALL_CODE;
	  x_grid[(map_size+1)*i+j].tex = rand() % NUM_WALL_TEXTURES;
	  x_grid[(map_size+1)*i+j].height = wall_height;
	  
	  x_grid[(map_size+1)*i+j+1].code = INTERNAL_WALL_CODE;
	  x_grid[(map_size+1)*i+j+1].tex = rand() % NUM_WALL_TEXTURES;
	  x_grid[(map_size+1)*i+j+1].height = wall_height;
	  
	  y_grid[map_size*i+j].code = INTERNAL_WALL_CODE;
	  y_grid[map_size*i+j].tex = rand() % NUM_WALL_TEXTURES;
	  y_grid[map_size*i+j].height = wall_height;
	  
	  y_grid[map_size*(i+1)+j].code = INTERNAL_WALL_CODE;
	  y_grid[map_size*(i+1)+j].tex = rand() % NUM_WALL_TEXTURES;
	  y_grid[map_size*(i+1)+j].height = wall_height;
	  
	  
	  i++;
	  floor[i * map_size + j].height = wall_height;
	  x_grid[(map_size+1)*i+j].code = INTERNAL_WALL_CODE;
	  x_grid[(map_size+1)*i+j].tex = rand() % NUM_WALL_TEXTURES;
	  x_grid[(map_size+1)*i+j].height = wall_height;
	  
	  x_grid[(map_size+1)*i+j+1].code = INTERNAL_WALL_CODE;
	  x_grid[(map_size+1)*i+j+1].tex = rand() % NUM_WALL_TEXTURES;
	  x_grid[(map_size+1)*i+j+1].height = wall_height;
	  
	  y_grid[map_size*i+j].code = INTERNAL_WALL_CODE;
	  y_grid[map_size*i+j].tex = rand() % NUM_WALL_TEXTURES;
	  y_grid[map_size*i+j].height = wall_height;
	  
	  y_grid[map_size*(i+1)+j].code = INTERNAL_WALL_CODE;
	  y_grid[map_size*(i+1)+j].tex = rand() % NUM_WALL_TEXTURES;
	  y_grid[map_size*(i+1)+j].height = wall_height;
	  
	  i--;
    }
    
        
/*    for (int i=3; i<=6; ++i)
      floor[3 * map_size + i].height = 25;
     
    floor[3 * map_size + 7].height = 45;*/		
     
}    
    
void XEngine::compute_view() {

  float radians;
  float distance;
  float inv_grid_size = 1.0f / grid_size;
  int cur_wall_height;
  
  cos_angle_p = cos(angle_p);
  sin_angle_p = sin(angle_p);  
  top_min = vp_bot+1;
  bot_max = vp_top-1;
  cur_wall_height = floor[(xp/GRID_SIZE)+(yp/GRID_SIZE)*map_size].height;
  cur_height_p = height_p + cur_wall_height;
      
  for (int col = vp_left; col <= vp_right; ++col) {

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
	
    int yfactor, xfactor;
    
    if (ang <= M_PI/2 || ang >= 3 * M_PI / 2) {
      grid_x = (static_cast<int>(xp) / grid_size) * grid_size + grid_size;  xfactor = 0;
      grid_x_xoffs = grid_size;
      xmaze_x_offs = 1;
      grid_y_xoffs = grid_size / slope;
      if (grid_y_xoffs < 0)
	grid_y_xoffs = -grid_y_xoffs;
      xfactor = -1;
    } else {
      grid_x = (static_cast<int>(xp) / grid_size) * grid_size;  xfactor = -1;
      grid_x_xoffs = -grid_size;
      xmaze_x_offs = -1;
      grid_y_xoffs = grid_size / slope;
      if (grid_y_xoffs > 0)
	grid_y_xoffs = -grid_y_xoffs;
      xfactor = 0;
    }
    
    if (ang <= M_PI) {
      grid_y = (static_cast<int>(yp) / grid_size) * grid_size + grid_size;  yfactor = 0;
      grid_y_yoffs = grid_size;
      ymaze_y_offs = 1;
      grid_x_yoffs =  slope * grid_size;
      if (grid_x_yoffs < 0)
	grid_x_yoffs = -grid_x_yoffs;
      yfactor = -1;
    } else {
      grid_y = (static_cast<int>(yp) / grid_size) * grid_size;  yfactor = 1;
      grid_y_yoffs = -grid_size;
      ymaze_y_offs = -1;
      grid_x_yoffs =  slope * grid_size;
      if (grid_x_yoffs > 0)
	grid_x_yoffs = -grid_x_yoffs;
      yfactor = 0;
    }
       
    float x_len_dist = grid_size * inv_cos_radians;
    if (x_len_dist < 0)
      x_len_dist = -x_len_dist;
    
    float y_len_dist = grid_size * inv_sin_radians;
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
    float wall_col_inc;
    float wall_tex_off;
    
    int code;
    int wall_proj_height;
    int wall_col;
    int map_pos;
    int bot;
    int top;    
    int light_level;
    int stop_ray;
    int cur_height;
    int prev_height;
    int cur_row;
    int vspan_height;
    
    stop_ray = 0;
    prev_height = cur_wall_height;
    
    unsigned int *col_screen_ptr = p_screen + col;
    unsigned int *screen_ptr;
    int color; 
    
    cur_row = vp_bot;
        
    for(;;) {			
            
      if (xdist < ydist) {

	map_pos = xmaze_x + static_cast<int>(xmaze_y) * (map_size+1);
	
	cur_height = x_grid[map_pos].height; 
	
	code = x_grid[map_pos].code;

	wall_tex_off = 0.0f;
      
	distance = xdist * cos_col_angle;
	if (distance == 0.0f)
	  distance = 1.0f;

	wall_proj_height = pp_distance * cur_height / distance;
	if (wall_proj_height == 0)
	   wall_proj_height = 1;	 
	     
	wall_col_inc = static_cast<float>(cur_height) / wall_proj_height;
	    
	bot = pp_distance * cur_height_p / distance + vp_center;
	top = bot - wall_proj_height + 1;    
	      
	if (top < vp_top) {
	   wall_tex_off = (vp_top - top) * wall_col_inc;
	   top = vp_top;
	}
	      
	if (bot > vp_bot) {
	  bot = vp_bot;
	}
	    
	if (cur_height > prev_height) {

	    if (top <= cur_row) {

	      int wph_low = pp_distance * floor[(xmaze_x+xfactor) + static_cast<int>(xmaze_y) * map_size].height / distance;
	      if (wph_low == 0)
		wph_low = 1;	 
		  		  
	      int bot_low = pp_distance * cur_height_p / distance + vp_center;
	      int top_low = bot_low - wph_low + 1;    
		    
	      if (top_low < vp_top) {
		top_low = vp_top;
	      }
		    
	      if (bot_low > vp_bot) {
		bot_low = vp_bot;
	      }
	      
	      light_level = static_cast<int>(distance / LIGHT_LEN_LEVEL); 
	      if (light_level >= light_distance_levels)
		light_level = light_distance_levels-1;
		
	      wall_col = static_cast<int>(xcross_y) % grid_size;		
	      tex_ptr = x_wall_textures[x_grid[map_pos].tex][light_level] + wall_col * tex_width;
	      tex_col_off = wall_tex_off * FXP_MUL;
	      tex_col_inc = wall_col_inc * FXP_MUL;
	      
	      if (top_low <= cur_row) {
		screen_ptr = col_screen_ptr + top_low * xsize;
		vspan_height = cur_row - top_low + 1;	
	    
 		while (vspan_height--) {
 		  *screen_ptr = color; //0X12ABC2;
 		  screen_ptr += xsize;
 	        }	
	        
	        
		bot = top_low;
	      } else {
		bot = cur_row;
	      }
	      
	      screen_ptr = col_screen_ptr + top * xsize;
	      vspan_height = bot - top + 1;
	      while (vspan_height--) {
		*screen_ptr = *(tex_ptr + (tex_col_off>>FXP_SHIFT) % GRID_SIZE);
		tex_col_off += tex_col_inc;
		screen_ptr += xsize;
	      }
	      	      
	      cur_row = top - 1;		
	    }
	  
	} else {

//     rendering pavimento colonna corrente
//     tex_ptr = reinterpret_cast<unsigned int *>(tex_loader_floor->data);
//     while (bot++ <= vp_bot) {
//       float ratio = static_cast<float>(height_p) /(bot - vp_center);
//       distance = ratio * pp_distance / cos(columnn_angle);
//       int x = distance * cos(radians);
//       int y = distance * sin(radians);
//       x += xp;
//       y += yp;
//       int t = (static_cast<int>(y) % grid_size) * tex_width + (static_cast<int>(x) % grid_size);
//       *screen_ptr = *(tex_ptr + t);
//       screen_ptr += xsize;      
//     }

	  if (top < cur_row) {
	    vspan_height = cur_row - top + 1;
	    screen_ptr = col_screen_ptr + top * xsize;
	    
	    tex_ptr = floor_textures[floor[xmaze_x + static_cast<int>(xmaze_y) * map_size].tex][0];    
	    int h = floor[xmaze_x + static_cast<int>(xmaze_y) * map_size].height;
	    int row = top; 
	    
	    while (vspan_height--) {
 	      float ratio = static_cast<float>(cur_height_p - h) /(row-- - vp_center);
 	      distance = ratio * pp_distance / cos_col_angle;
 	      int x = xp + distance * cos_radians;
 	      int y = yp + distance * sin_radians;
 	      int t = (static_cast<int>(y) % grid_size) * tex_width + (static_cast<int>(x) % grid_size);
 	      *screen_ptr = *(tex_ptr + t);
 	      screen_ptr += xsize;
	    }
	    
	    cur_row = top - 1;
	  }
	  
	}
	
	if (top < top_min)
	  top_min = top;      
	if (bot > bot_max)
          bot_max = bot;
	      
 	//stop_ray = (top == vp_top);
	
	prev_height = cur_height;
	
	if (cur_row < vp_top || code == BOUNDARY_WALL_CODE) {
	  break;
	}
	
	xcross_x += grid_x_xoffs;
	xcross_y += grid_x_yoffs;
	xdist += x_len_dist;
	xmaze_x += xmaze_x_offs;
	xmaze_y += x_yratio;
	
      } else {
	  
	map_pos = static_cast<int>(ymaze_x) + ymaze_y * map_size;

	cur_height = y_grid[map_pos].height;
	
	code = y_grid[map_pos].code;
	
 	wall_tex_off = 0.0f;
      
	distance = ydist * cos_col_angle;
	if (distance == 0.0f)
	  distance = 1.0f;

	wall_proj_height = pp_distance * cur_height / distance;
	if (wall_proj_height == 0)
	  wall_proj_height = 1;
 
	wall_col_inc = static_cast<float>(cur_height) / wall_proj_height;
	      
	bot = pp_distance * cur_height_p / distance + vp_center;
	top = bot - wall_proj_height + 1;  
	      
	if (top < vp_top) {
	  //wall_proj_height -= (vp_top - top);
	  //wall_tex_ioff = (vp_top - top);
	  wall_tex_off = (vp_top - top) * wall_col_inc;
	  top = vp_top;
	}
	      
	//  wall_proj_diff = pp_distance * prev_height / distance;	   
	//  bot -= wall_proj_diff;
	      
	if (bot > vp_bot) {
	   bot = vp_bot;
	}     
	    
	if (cur_height > prev_height) {

	      
	    if (top < cur_row) {
	      
	      int wph_low = pp_distance * floor[static_cast<int>(ymaze_x) + (ymaze_y+yfactor) * map_size].height / distance; //pp_distance * prev_height / distance;
	      if (wph_low == 0)
		wph_low = 1;	 
		  		  
	      int bot_low = pp_distance * cur_height_p / distance + vp_center;
	      int top_low = bot_low - wph_low + 1;    
		    
	      if (top_low < vp_top) {
		top_low = vp_top;
	      }
		    
	      if (bot_low > vp_bot) {
		bot_low = vp_bot;
	      }	     
	      
	      light_level = static_cast<int>(distance / LIGHT_LEN_LEVEL); 
              if (light_level >= light_distance_levels)
		light_level = light_distance_levels-1;
    			
              wall_col = static_cast<int>(ycross_x) % grid_size; 
	      tex_ptr = y_wall_textures[y_grid[map_pos].tex][light_level] + wall_col * tex_width;
	      tex_col_off = wall_tex_off * FXP_MUL;
	      tex_col_inc = wall_col_inc * FXP_MUL;

	      if (top_low <= cur_row) {
		screen_ptr = col_screen_ptr + top_low * xsize;
		vspan_height = cur_row - top_low + 1;	
		

 		while (vspan_height--) {
 		  *screen_ptr = color; //0X12ABC2;
 		  screen_ptr += xsize;
 		}	
		
		
		
		bot = top_low;
	      } else {
		bot = cur_row;
	      }
	      
	      screen_ptr = col_screen_ptr + top * xsize;
	      vspan_height = bot - top + 1;
	      while (vspan_height--) {
		*screen_ptr = *(tex_ptr + (tex_col_off>>FXP_SHIFT) % GRID_SIZE);
		tex_col_off += tex_col_inc;
		screen_ptr += xsize;
	      }
	      
	      cur_row = top - 1;

	    }
	      
	} else {
	  
	  if (top < cur_row) {
	    vspan_height = cur_row - top + 1;
	    screen_ptr = col_screen_ptr + top * xsize;
	    	    
	    tex_ptr = floor_textures[floor[static_cast<int>(ymaze_x) + ymaze_y * map_size].tex][0];
	    int h = floor[static_cast<int>(ymaze_x) + ymaze_y * map_size].height;
	    int row = top; 
	    while (vspan_height--) {
 	      float ratio = static_cast<float>(cur_height_p - h) /(row-- - vp_center);
 	      distance = ratio * pp_distance / cos_col_angle;
 	      int x = xp + distance * cos_radians;
 	      int y = yp + distance * sin_radians;
 	      int t = (static_cast<int>(y) % grid_size) * tex_width + (static_cast<int>(x) % grid_size);
 	      *screen_ptr = *(tex_ptr + t);
 	      screen_ptr += xsize;
	    }   
	    
	    
	    cur_row = top - 1;
	  }
	  
	}

	if (top < top_min)
	  top_min = top;      
	if (bot > bot_max)
	  bot_max = bot;	
	      
        //stop_ray = (top == vp_top);
	    
	prev_height = cur_height;
	
	if (cur_row < vp_top || code == BOUNDARY_WALL_CODE) {
	  break;
	}
	
	ycross_y += grid_y_yoffs;
	ycross_x += grid_y_xoffs;
	ydist += y_len_dist;	
	ymaze_y += ymaze_y_offs;
	ymaze_x += y_xratio;
	
      }
      
    } // fine ciclo for (;;)
   

  } // fine ciclo ray casting
  

}
  

// renderizza per righe
void XEngine::render_view() {
  
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
  float ratio;
  float distance;
  int light_level;
  int tex_code;  
  float xl;
  float yl;
  float xr;
  float yr;
  float dx;
  float dy;
  col_slice *slice_ptr;
  unsigned int *screen_row_ptr;
  register unsigned int *screen_ptr; 
   
  int starty = vp_center + 1;
  screen_row_ptr = p_screen + vp_left + starty * xsize;
  screen_ptr = screen_row_ptr;
    
  
  for (int i=starty; i<=vp_bot; ++i, screen_row_ptr += xsize, screen_ptr = screen_row_ptr) {
    ratio = static_cast<float>(height_p) /(i - vp_center);
    distance = ratio * pp_distance / cos_left_column_angle;  	      
    xl = xp + distance * cos_sin_prod_diff;
    yl = yp + distance * sin_cos_add;
    xr = xp + distance * cos_sin_prod_add;
    yr = yp + distance * sin_cos_diff;   
    dx = (xr - xl) * inv_width;
    dy = (yr - yl) * inv_width;
    light_level = static_cast<int>(distance / LIGHT_LEN_LEVEL); 
    if (light_level >= light_distance_levels)
      light_level = light_distance_levels-1;
    
    register int fxl = (int)(xl * FXP_MUL);
    register int fdx = (int)(dx * FXP_MUL);
    register int fyl = (int)(yl * FXP_MUL);
    register int fdy = (int)(dy * FXP_MUL);
    register int j = xview;
    
    while (j--) { 
	
	*screen_ptr++ = *(floor_textures[floor[0].tex]
			  [light_level] + 
			 ((((fyl>>FXP_SHIFT)%TEXTURE_HEIGHT)*TEXTURE_WIDTH) + ((fxl>>FXP_SHIFT)%TEXTURE_WIDTH)));
	
	fxl += fdx;
	fyl += fdy;
    }
  }
      
}
  
 