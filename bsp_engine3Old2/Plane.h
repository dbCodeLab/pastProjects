#ifndef PLANE_H
#define PLANE_H

#include "Wall.h"
#include "VertexSet.h"

class Plane {
public:
  enum Position { IN_FRONT, IN_BACK, SPANNING, COINCIDENT }; 
  
  Plane(const Wall& wall);
  Position evaluate_position(const Vector2d& point);
  Position evaluate_position(const Wall& wall);
  bool split(const Wall& wall, Wall& wall1, Wall& wall2, VertexSet& vertex_set);
  
  static const double eps = 0.0001f;
  double a, b, c;
};



#endif