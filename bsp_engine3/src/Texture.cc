#include "Texture.h"
#include "com_def.h"

#include <iostream>
using std::cout;
using std::endl;


void Texture::generate_light_textures() {
  unsigned int n_texels = width * height;
  light_tex = new unsigned char*[light_levels];
  for (int i=0; i<=light_levels; ++i) {
    if (i==0 || i/LIGHT_LEVEL_SPAN != (i-1)/LIGHT_LEVEL_SPAN) {
      light_tex[i] = new unsigned char[scr_info->bytes_per_pixel * n_texels];
      unsigned int *src_ptr = reinterpret_cast<unsigned int*>(tex_data);
      unsigned int *dst_ptr = reinterpret_cast<unsigned int*>(light_tex[i]);  
      for (int t=0; t!=n_texels; ++t, ++dst_ptr) {
	*dst_ptr = *src_ptr++;
	scr_info->light_native(reinterpret_cast<unsigned char*>(dst_ptr), i);
      }
    } else
      light_tex[i] = light_tex[i-1];
  }
}