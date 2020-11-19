#ifndef PLANE_H
#define PLANE_H

#include "Wall.h"

class Plane {
public:
  enum Position { SPANNING, IN_FRONT, IN_BACK, COINCIDENT }; 
  
  Plane(const Wall& wall);
  Position evaluate_position(const Vector2d& point);
  Position evaluate_position(const Wall& wall);
  bool split(const Wall& wall, Wall& wall1, Wall& wall2);
  
  static const double EPS;
  
  double a, b, c;
};



#endif