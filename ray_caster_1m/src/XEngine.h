#ifndef ENGINE_H
#define ENGINE_H

#include "XScreenRgbInfo.h"
#include "XRasterizer.h"
#include "XTextureLoader.h"

#include <cmath>
#include <iostream>
using std::cout;
using std::endl;

class XEngine {
public:
  
  XEngine(int xsize, int ysize, XScreenRgbInfo *scr_info);
  
  void draw_point(int x, int y, unsigned long col) {
     rasterizer->draw_point(x, y, col);
  }
  
  void draw_line(int x0, int y0, int x1, int y1, unsigned long col) {
    rasterizer->draw_line(x0, y0, x1, y1, col);
  }
  
  void clear_screen() {
    rasterizer->clear_buffer();
  }
  
  void render_screen() {
    //render_view();
    compute_view();
  }
  
  void process_key(char ch);
  
  void update_position(int dir);
    
  void update_angle(int dir);
  
  void update_height(int dir);
  
  void update_vp(int dir);
  
  virtual ~XEngine() { }
  
private:
  XScreenRgbInfo *scr_info;
  XRasterizer *rasterizer;
  unsigned int *p_screen;
  int xsize, ysize;
  int vp_left, vp_right, vp_top, vp_bot, vp_center;
  int xview, yview;
  
  // int num_wall_textures ? si potrebbe leggere il numero da file e l'elenco dei nomi dei file, per ora
  // uso una costante predef per il numero di textures, poi le textures vengono applicate a random ai muri
  // e alle celle del soffitto/pavimento.
  
  unsigned int ***x_wall_textures;
  unsigned int ***y_wall_textures;
  unsigned int ***floor_textures;
  unsigned int ***ceiling_textures;
  
  int tex_width, tex_height;
  int light_distance_levels;
  int *light_distance;
  
  XTextureLoader *tex_loader;
          
  struct wall {
    int code;
    int tex;
    unsigned int height;
  } *x_grid, *y_grid;
  
  struct plane {
    int tex;
    unsigned int height;
  } *floor, *ceiling;
  
  const int map_size;
  const int grid_size;
  
  int xp, yp, height_p, pp_distance;
  int cur_height_p;
  int xd, yd;
  float angle_p, angle_d;
  float cos_angle_p;
  float sin_angle_p;
  
  const int wall_height;
  float max_distance;
  int top_min, bot_max;
  unsigned int **col_offsets;
  int max_height_precalc;
  

  const int fov;
  struct col_inf {
    float ang, cos_ang, sin_ang;
  } *col_data;
  
  struct col_slice {
    col_slice *next;
    int top, bot;
    unsigned int *tex_ptr;
    int tex_col_off;
    int tex_col_inc;
  };
  
  struct col_info {
    col_slice *slices_ptr;
    int n_slices;
    int top_min, bot_max;
  } *slice_data;
  
  void init_map();
  void init_data(); 
  void setup_textures();
  void gen_light_textures(unsigned int ***, int, const char *);
  void compute_wall_tex_offsets_table();
  void setup_screen_data();
  double deg_to_rad(int deg);
  void compute_view();
  void render_view();
  void render_view2();
};

#endif