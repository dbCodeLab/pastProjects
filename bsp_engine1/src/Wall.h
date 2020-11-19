#ifndef WALL_H
#define WALL_H

#include <cmath>
#include "Vector2d.h"
#include "Texture.h"

#include <iostream>
// using std::cout;
// using std::endl;

class Wall {
public:
    
  Wall() { }
  
  Wall(int wall_id, const Vector2d& p1, const Vector2d& p2, int wall_height, unsigned int wall_color, Texture *wall_texture)
  : id(wall_id), height(wall_height), color(wall_color), tex(wall_texture), next(0), next_sort(0)
  {
    points[0] = p1;
    points[1] = p2;
    compute_tan();
    compute_length();
  } 
    
  void compute_tan() {
    double dx = points[1].x - points[0].x; 
    double dy = points[1].y - points[0].y;  
    tan_ang = dy / dx;
  }
  
  void compute_length() {
    double dx = points[1].x - points[0].x; 
    double dy = points[1].y - points[0].y;
    length = sqrt(dx*dx + dy*dy);
  }
  
  int id;
  
  Vector2d points[2];
  double length;
  double tan_ang;
  int height;
  
  unsigned int color; 
  Texture *tex;
 
  int render_col[2];
  int render_top_row[2];
  int render_bot_row[2];
  Vector2d tpoints[2];
  double distance[2];
  int left, right;
  
  Wall *next;
  Wall *next_sort;
};

#endif