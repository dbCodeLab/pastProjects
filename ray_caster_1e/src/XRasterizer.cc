#include "XRasterizer.h"

XRasterizer::XRasterizer(int xsize, int ysize, unsigned char *p_screenbuf, char bytes_per_pixel) {
 this->xsize = xsize;
 this->ysize = ysize;
 this->p_screenbuf = p_screenbuf;
 this->bytes_per_pixel = bytes_per_pixel;
}
void XRasterizer::draw_line(int x0, int y0, int x1, int y1, unsigned long col) {
    
  float fx, fy, m;
  int x, y, tmp, dx, dy;
    
  dx = x1 - x0;
  dy = y1 - y0;
    
  if (abs(dx) > abs(dy)) {
    if (x1<x0) {
	tmp=x0;x0=x1;x1=tmp;
	tmp=y0;y0=y1;y1=tmp;
    }
    fy=y0;
    m=((float)dy)/dx;
    for (x=x0; x!=x1; x++) {
      draw_point(x, (int)(fy + 0.5), col);
      fy += m;
    }
   } else {
    if (y1<y0) {
      tmp=x0;x0=x1;x1=tmp;
      tmp=y0;y0=y1;y1=tmp;
    }     
    fx = (float)x0;
    if (!(float)dy) return;
    m = ((float)dx)/dy;
    for (y=y0; y!=y1; ++y) {
      draw_point((int)(fx + 0.5), y, col);
      fx += m;
    }
  }
}