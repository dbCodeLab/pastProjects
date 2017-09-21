#ifndef VECTOR_2D_H
#define VECTOR_2D_H

class Vector2d {
public:
  Vector2d() {}
  Vector2d(double dx, double dy) : x(dx), y(dy) {}
  double x, y;
};

#endif