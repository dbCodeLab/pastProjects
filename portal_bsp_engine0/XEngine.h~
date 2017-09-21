#ifndef ENGINE_H
#define ENGINE_H

#include "XScreenRgbInfo.h"
#include "XRasterizer.h"
#include "XTextureLoader.h"

#include "Player.h"
#include "BspTree.h"
#include "Sector.h"
#include "Level.h"

#include <cmath>
#include <iostream>
using std::cout;
using std::cin;
using std::endl;

class XEngine {
public:
  
  XEngine(int xsize, int ysize, XScreenRgbInfo *scr_info);
 
  void clear_screen() {
    rasterizer->clear_buffer();
  }
  
  void render_screen() {
//     render_background();
    render();
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
  XTextureLoader *tex_loader;
  
  unsigned int *p_screen;
  int xsize, ysize;
  int vp_left, vp_right, vp_top, vp_bot, vp_center;
  int xview, yview;
  int *lower_rows, *upper_rows;
  int pp_distance;
   
  const int fov;   
  struct col_inf {
    float ang, cos_ang, sin_ang, tan_ang;
  } *col_data;
  
  Texture *wall_tex;
  Player *player;
  double cos_ang_p;
  double sin_ang_p;
  Sector *cur_sector_p;
  
  Level *level;
  
  int *next_row_block_ptr;
    
  inline int *alloc_row_block() {
    if (!next_row_block_ptr) {
      free_row_block(new int[2*xsize]);
    }
    int *row_block_ptr = next_row_block_ptr;
    next_row_block_ptr = *reinterpret_cast<int **>(next_row_block_ptr);
    return row_block_ptr;
  }
    
  inline void free_row_block(int *row_block_ptr) {
    *reinterpret_cast<int **>(row_block_ptr) = next_row_block_ptr;
    next_row_block_ptr = row_block_ptr;
  }
  
  void setup_row_blocks();
  
  void setup_data(); 
  void setup_level_data();
  void setup_screen_data();
  void setup_player();
  void setup_textures();
  double deg_to_rad(int deg);
  void render();
  void render_sector(const Sector* cur_sector,const Sector* prev_sector, int left_col_clip, int right_col_Clip, int *lower, int *upper);
  void render_solid_wall(const Wall& wall, int left_col_clip, int right_col_clip, int *lower, int *upper); 
  void render_portal_wall(const Wall& wall, int left_col_clip, int right_col_clip, int *lower, int *upper);
  void render_internal_wall(const Wall& wall, int left_col_clip, int right_col_clip, int *lower, int *upper);
  bool visible_wall(Wall &wall, int left_col_clip, int right_col_clip);
  void render_background();

};

#endif