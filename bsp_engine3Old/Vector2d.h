#ifndef VECTOR_2D_H
#define VECTOR_2D_H
#include <cstdlib>

class Vector2d {
public:
  Vector2d() {}
  Vector2d(double px, double py) : x(px), y(py), t(false), next_t(0) { }
  bool t;
  double x, y;
  double dx, dy;
  double rx, ry;
  Vector2d *next_t;
};

#endif