#include "XRasterizer.h"

XRasterizer::XRasterizer(int xsize, int ysize, unsigned char *p_screenbuf, char bytes_per_pixel) {
 this->xsize = xsize;
 this->ysize = ysize;
 this->p_screenbuf = p_screenbuf;
 this->bytes_per_pixel = bytes_per_pixel;
}
