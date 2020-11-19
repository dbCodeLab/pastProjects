#ifndef WALL_H
#define WALL_H

#include <iostream>
#include "Vector2d.h"
#include "Texture.h"
#include "Sector.h"
#include "Plane.h"

// using std::cout;
// using std::endl;

class Sector;
class Plane;

class Wall {
public:
    
  enum WallTypes { PORTAL, SOLID };
  
  Wall() : id(-1) { }
  
  Wall(int wall_id, const Vector2d& p1, const Vector2d& p2, unsigned int wall_color, Texture *wall_texture);
    
  void compute_tan();
  void compute_length();
  
  const int id;
  
  Vector2d points[2];
  double ang;
  double tan_ang;
  double length;
   
  Plane *owner_plane;
  Sector *owner_sector, *next_sector;
  
  int render_col[2];
  int render_top_row[2];
  int render_bot_row[2];
  int render_bot_portal_row[2];
  int render_top_portal_row[2];
  Vector2d tpoints[2];
  double distance[2];
  int left, right;
  
  unsigned int color; 
  Texture *tex;
  int tex_voffset;
  int tex_hoffset;
  
  WallTypes type;
  Wall *next;
  Wall *next_sort;
};

#endif