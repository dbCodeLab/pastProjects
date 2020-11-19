#ifndef PLAYER_H
#define PLAYER_H

#include "Vector2d.h"

class Player {
public:
  Player() { }
  Vector2d pos;
  int height;
  double angle;
};

#endif