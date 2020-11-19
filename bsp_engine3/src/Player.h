#ifndef PLAYER_H
#define PLAYER_H

#include "com_def.h"
#include "Vector2d.h"

class Player {
public:
  Player() { 
    pos.x = PLAYER_INIT_XPOS;
    pos.y = PLAYER_INIT_YPOS;
    angle = PLAYER_INIT_ANGLE;
    height = PLAYER_HEIGHT;  
  }
  
  void update() {
    cos_ang_p = cos(-angle + 3.272e-4);
    sin_ang_p = sin(-angle + 3.272e-4);
    cur_height_set = false;    
  }
  
  Vector2d pos;
  int height;
  double angle;
  double cos_ang_p;
  double sin_ang_p;
  int cur_height;
  bool cur_height_set;
};

#endif