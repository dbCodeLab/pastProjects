#ifndef X_RASTER_H
#define X_RASTER_H

#include <cstdlib>
#include <cstring>

class XRasterizer {
public:
  XRasterizer(int xsize, int ysize, unsigned char *p_screenbuf, char bytes_per_pixel);

  unsigned char *address_of_point(int x, int y) {
    return p_screenbuf + (x + y * xsize) * bytes_per_pixel;
  }
  
  void draw_point_at_paddress(unsigned char *p, unsigned long col) {
    *reinterpret_cast<unsigned long *>(p) = col;
    /*
    register int i;
    unsigned long mask = MAX_BYTE;
    char shift = 0;
    
    for (i=0; i!=scr_info->bytes_per_pixel; ++i) {
      *p++ = (col & mask) >> shift;
      mask <<= BITS_PER_BYTE;
      shift += BITS_PER_BYTE;
    }
    */ 
  }
  
  void draw_point(int x, int y, unsigned long col) {
    draw_point_at_paddress(address_of_point(x, y), col);  
  }
    
  void clear_buffer() {
    memset(p_screenbuf, 0x0, static_cast<size_t>(xsize * ysize * bytes_per_pixel));
  }
  
  void draw_line(int x0, int y0, int x1, int y1, unsigned long col);
  
  virtual ~XRasterizer() { }

  int xsize, ysize;
  unsigned char *p_screenbuf;
  char bytes_per_pixel;
};

#endif