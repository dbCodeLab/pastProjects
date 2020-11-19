#ifndef ENGINE_H
#define ENGINE_H

#include "XScreenRgbInfo.h"
#include "XRasterizer.h"
#include "XTextureLoader.h"

//#include <iostream>
//using std::cout;
//using std::endl;

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
  
  void load_ppm() {
    tex_loader->load("res/wall.ppm");
  }
  
  void test() {
    unsigned int *p_screen = reinterpret_cast<unsigned int *>(rasterizer->p_screenbuf);
    int w = tex_loader->width;
    int h = tex_loader->height;
    unsigned int *p_tex = reinterpret_cast<unsigned int *>(tex_loader->data);
    for (int i=0; i!=h; ++i)
      for (int j=0; j!=w; ++j)
	*(p_screen + j + i * rasterizer->xsize) = *p_tex++;
  }
  
private:
  XScreenRgbInfo *scr_info;
  XRasterizer *rasterizer;
  XTextureLoader *tex_loader;
  
};

#endif