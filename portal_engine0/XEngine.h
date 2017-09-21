#ifndef ENGINE_H
#define ENGINE_H

#include "XScreenRgbInfo.h"
#include "XRasterizer.h"
#include "XTextureLoader.h"

#include "Level.h"
#include "Player.h"
#include "Texture.h"

#include <cmath>
#include <iostream>
using std::cout;
using std::endl;

class XEngine {
public:
  
  XEngine(int xsize, int ysize, XScreenRgbInfo *scr_info);
 
  void clear_screen() {
    rasterizer->clear_buffer();
  }
  
  void render_screen() {
    render_background();
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
  int *lower_rows;
  
  int pp_distance;
  
  const int fov;
  struct col_inf {
    float ang, cos_ang, sin_ang;
  } *col_data;
    
  
  Texture *wall_tex;
  Player *player;
  int cur_height_p;
  
  Level *level;
  
  void setup_data(); 
  void setup_level_data();
  void setup_screen_data();
  void setup_player();
  void setup_textures();
  double deg_to_rad(int deg);
  void render();
  void render_sector(const Sector* cur_sector,const Sector* prev_sector, int leftColClip, int rightColClip, int *lower);
  void render_solid_wall(const Wall& wall, int leftColClip, int rightColClip, int *lower); 
  void render_portal_wall(const Wall& wall, int leftColClip, int rightColClip, int *lower); 
  bool visible_wall(Wall &wall, int leftColClip, int rightColClip);
  void render_background();

};

#endif