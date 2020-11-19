#ifndef WALL_H
#define WALL_H

#include <cstdlib>
#include <cmath>
#include "Vector2d.h"
#include "Sector.h"
#include "Texture.h"

#include <iostream>
// using std::cout;
// using std::endl;

class Wall {
public:
    
  enum WallTypes { PORTAL, SOLID };
  enum SideTypes { FRONT, REAR };
  enum TexPosTypes { LOWER, UPPER };
  
  Wall() { }
  
  Wall(int wall_id, Vector2d *p1, Vector2d *p2, WallTypes wall_type,
       Sector *wall_sector_front, Sector *wall_sector_rear,
       Texture *wall_tex_front, Texture *wall_tex_rear,
       Texture *wall_tex_front_lower, Texture *wall_tex_front_upper,
       Texture *wall_tex_rear_lower, Texture *wall_tex_rear_upper, Wall *wall_next=0)
  : id(wall_id), type(wall_type), next(wall_next)
  {
    points[0] = p1;
    points[1] = p2;
    texture[FRONT] = wall_tex_front;
    sectors[FRONT] = wall_sector_front;
    
    if (type == PORTAL) {
      sectors[REAR] = wall_sector_rear;
      texture[REAR] = wall_tex_rear;  
      texture_lu[FRONT][LOWER] = wall_tex_front_lower;
      texture_lu[FRONT][UPPER] = wall_tex_front_upper;
      texture_lu[REAR][LOWER] = wall_tex_rear_lower;
      texture_lu[REAR][UPPER] = wall_tex_rear_upper;     
    } else {
      sectors[REAR] = 0;
      texture[REAR] = 0;
    }
    
    compute_tan();
    compute_length();
    
    light_factor = 1; //(rand() % 10 + 1) / 5.0;
  } 
        
  int id;
  
  Vector2d *points[2];
  double length;
  double tan_ang;
  
  Sector *sectors[2];
  WallTypes type;
  
  double light_factor;
  Texture *texture[2];
  Texture *texture_lu[2][2];
  
  int render_col[2];
  int render_top_row[2];
  int render_bot_row[2];
  int render_bot_portal_row[2];
  int render_top_portal_row[2];  
  Vector2d tpoints[2];
  double inv_distance[2];
  int left, right;
  
  Wall *next;

  void compute_tan() {
    double dx = points[1]->x - points[0]->x; 
    double dy = points[1]->y - points[0]->y;  
    tan_ang = dy / dx;
  }
  
  void compute_length() {
    double dx = points[1]->x - points[0]->x; 
    double dy = points[1]->y - points[0]->y;
    length = sqrt(dx*dx + dy*dy);
  }
};

#endif