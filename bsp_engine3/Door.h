#ifndef DOOR_H
#define DOOR_H

#include "Sector.h"

class Door {
public:
  
  enum State { OPENING, OPEN, WAITING, CLOSING, STOP };
  
  Door(Sector *door_sector, Door *next_door) : sec(door_sector), next(next_door)
  {
    init();
  }
  
  void init() {
    state = OPENING;
    mov_c = DOOR_MOV_INT;
  }
  
  void update();
  
  State state;
  Sector *sec;
  int open_c, mov_c;
  Door *next, *next_active;
  
};

#endif