#ifndef VIS_PLANE_H
#define VIS_PLANE_H

#include "Sector.h"

class VisPlane {
public:
  
  VisPlane(int n_spans, Sector *vis_plane_sector, VisPlane *vis_plane_next) //, next(vis_plane_next)
  { 
    spans = new Span[n_spans];
    next = 0;
    setup(vis_plane_sector, vis_plane_next);
  }
  
  ~VisPlane() { 
    delete[] spans; 
  }
  
  void setup(Sector *vis_plane_sector, VisPlane *vis_plane_next) {
    xmin = 10000;
    xmax = -1;
    ymin = 10000;
    ymax = -1;  
    owner = vis_plane_sector;
    next_vis = vis_plane_next;
  }
  
  struct Span {
    short y1, y2;
  } *spans;
  
  short int xmin, xmax;
  short int ymin, ymax;
  
  Sector *owner;  
  VisPlane *next;
  VisPlane *next_vis;
};

#endif