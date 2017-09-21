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
    render();
  }
  
  void update_position(int dir);
    
  void update_angle(int dir);
  
  void update_height(int dir);
  
  void update_vp(int dir);
  
private:
  XScreenRgbInfo *scr_info;
  XRasterizer *rasterizer;
  XTextureLoader *tex_loader_wall;
  XTextureLoader *tex_loader_floor;
  XTextureLoader *tex_loader_ceiling;
  
  double deg_to_rad(int deg) {
    return deg * (M_PI / 180);
  }
  
  void load_bitmaps();
  
  unsigned int *p_screen;
  int xsize, ysize;
  
  int *map;
  const int map_size;
  const int grid_size;
  int xp, yp, height_p, pp_distance;
  int xd, yd;
  float angle_p, angle_d;
  const int wall_height;
  int max_distance;
  int vp_left, vp_right, vp_top, vp_bot, vp_center;
  int *bot_wall, *top_wall;
  int **col_offset;
  
  void init_map();
  void render();
  void init_data();
  
};

#endif