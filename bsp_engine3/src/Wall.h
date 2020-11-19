#ifndef WALL_H
#define WALL_H

#include <cstdlib>
#include <cmath>
#include "Vector2d.h"
#include "Sector.h"
#include "Texture.h"
#include "Plane.h"
#include "com_def.h"

#include <iostream>
// using std::cout;
// using std::endl;

class Plane;

class Wall {
public:
    
  enum WallTypes { PORTAL, SOLID, DOOR, DOOR_SIDE };
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
    
    if (type != SOLID && type != DOOR_SIDE) {
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
    
    compute_components();
    compute_tan();
    compute_length();
    
    light_factor = 1; //(rand() % 10 + 1) / 5.0;
    
    if (id != BWALL_CODE) {
      insert_into_sector_list();
    }
  } 
        
  int id;
  
  Vector2d *points[2];
  double dx, dy;
  double length, isqlength;
  double tan_ang;
  
  Sector *sectors[2];
  WallTypes type;
  Plane *plane;
  
  double light_factor;
  Texture *texture[2];
  int hoff, voff;
  Texture *texture_lu[2][2];
  int tex_offs[2][2][2];
  
  enum CoPlane_Side { SAME, OPP }; 
  CoPlane_Side plane_side;
  
  int render_col[2];
  int render_top_row[2];
  int render_bot_row[2];
  int render_bot_portal_row[2];
  int render_top_portal_row[2];  
  Vector2d tpoints[2];
  double inv_distance[2];
  int left, right;
  
  Wall *next,
       *next_front_in_sec,
       *next_back_in_sec,
       *next_collision;
  
  void compute_components() {
    dx = points[1]->x - points[0]->x; 
    dy = points[1]->y - points[0]->y;
  }
  
  void compute_tan() {
    tan_ang = dy / dx;
  }
  
  void compute_length() {
    isqlength = 1.0 / (dx*dx + dy*dy);
    length = sqrt(dx*dx + dy*dy);
  }
  
  void insert_into_sector_list() {    
    next_front_in_sec = sectors[FRONT]->wall_list;
    sectors[FRONT]->wall_list = this;
    ++sectors[FRONT]->num_walls;
    
    if (type != SOLID && type != DOOR_SIDE) {
      next_back_in_sec = sectors[REAR]->wall_list;
      sectors[REAR]->wall_list = this;
      ++sectors[REAR]->num_walls;      
    }
  }
};

#endif