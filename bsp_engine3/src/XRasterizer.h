#ifndef X_RASTER_H
#define X_RASTER_H

#include <cstdlib>
#include <cstring>

class XRasterizer {
public:
  XRasterizer(int xsize, int ysize, unsigned char *p_screenbuf, char bytes_per_pixel);

  void clear_buffer() {
    memset(p_screenbuf, 0x0, static_cast<size_t>(xsize * ysize * bytes_per_pixel));
  }

  virtual ~XRasterizer() { }

  int xsize, ysize;
  unsigned char *p_screenbuf;
  char bytes_per_pixel;
};

#endif