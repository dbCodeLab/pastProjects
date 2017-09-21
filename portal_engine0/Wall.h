#ifndef WALL_H
#define WALL_H

#include "Vector2d.h"
#include "Sector.h"
#include "Texture.h"

#include <iostream>
using std::cout;
using std::endl;

class Sector; 

class Wall {
public:
  
  enum WallTypes { PORTAL, SOLID };
  
  Wall(const Vector2d& p1, const Vector2d& p2, unsigned int wall_color, const Texture *wall_texture)
  : color(wall_color), tex(wall_texture)
  {
    points[0] = p1;
    points[1] = p2;
    tan_ang = static_cast<float>(p2.y - p1.y) / (p2.x - p1.x);
  } 
  
  Vector2d points[2];
  float tan_ang;
  
  const unsigned int color; 
  const Texture *tex;
  
  WallTypes type;
  Sector *owner_sector, *next_sector;
  
  int render_col[2];
  int render_top_row[2];
  int render_bot_row[2];
  int render_bot_portal_row[2];
  int left, right;
  
};

#endif