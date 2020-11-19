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
    compute_view();
    render_view();
  }
  
  void update_position(int dir);
    
  void update_angle(int dir);
  
  void update_height(int dir);
  
  void update_vp(int dir);
  
  virtual ~XEngine() { }
  
private:
  XScreenRgbInfo *scr_info;
  XRasterizer *rasterizer;
  
  unsigned int *tex_wall, *tex_floor, *tex_ceiling;
  int tex_width, tex_height;
  
  XTextureLoader *tex_loader;
      
  unsigned int *p_screen;
  int xsize, ysize;
  
  int *x_grid, *y_grid;
  const int map_size;
  const int grid_size;
  
  int xp, yp, height_p, pp_distance;
  int xd, yd;
  float angle_p, angle_d;
  float cos_angle_p;
  float sin_angle_p;
  
  const int wall_height;
  int max_distance;
  int top_min, bot_max;
  
  int vp_left, vp_right, vp_top, vp_bot, vp_center;
  int xview, yview;
  
  const int fov;
  struct col_inf {
    float ang, cos_ang, sin_ang;
  } *col_data;
  
  struct col_slice {
    int top, bot;
    unsigned int *tex_ptr;
    int tex_col_off; // fxpoint
    int tex_col_inc; // fxpoint
  } *slice_data;
  
  void init_map();
  void init_data(); 
  void setup_bitmaps();
  void compute_wall_tex_offsets_table();
  void setup_cols_data();
  double deg_to_rad(int deg);
  void compute_view();
  void render_view();
  void render_view2();
};

#endif