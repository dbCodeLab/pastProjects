#ifndef TEXTURE_H
#define TEXTURE_H

#include "XScreenRgbInfo.h"

class Texture {
public:
  Texture(unsigned char *tex_data_ptr, int tex_width, int tex_height, int tex_light_levels, XScreenRgbInfo *pscr_info)
  : tex_data(tex_data_ptr), width(tex_width), height(tex_height), light_levels(tex_light_levels), scr_info(pscr_info)
  { 
     generate_light_textures(); 
  }
  
  unsigned char *tex_data;
  int light_levels;
  unsigned char **light_tex;
  int width, height;
  XScreenRgbInfo *scr_info;
  
  void generate_light_textures();
};

#endif