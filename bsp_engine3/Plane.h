#ifndef PLANE_H
#define PLANE_H

#include "Wall.h"
#include "VertexSet.h"

class Plane {
public:
  enum Position { IN_FRONT, IN_BACK, SPANNING, COINCIDENT }; 
  
  Plane(const Wall& wall);
  Position evaluate_position(const Wall& wall);
  bool split(const Wall& wall, Wall& wall1, Wall& wall2, VertexSet& vertex_set);
  bool collision(const Vector2d& point);
  bool collision(const Vector2d& point, double distance);
  
  double evaluate(const Vector2d& point) {
    return a * point.x + b * point.y + c;
  }

  Position evaluate_position(const Vector2d& point) {
    double val = evaluate(point);  
    if (val > eps)
      return IN_FRONT;
    else if (val < -eps)
      return IN_BACK;
    else
      return SPANNING;
  }
  
  static const double eps = 0.0001f;
  double a, b, c;
  double idd;
};



#endif