#ifndef ELEVATOR_H
#define ELEVATOR_H

#include "Sector.h"

class Elevator {
public:
  
  enum State { ACTIVATE, MOVING_UP, UP, MOVING_DOWN, DOWN };
  
  Elevator(Sector *elevator_sector, Elevator *next_elevator) : sec(elevator_sector), next(next_elevator)
  {
    start_height = elevator_sector->floor_height;
    final_height = elevator_sector->final_floor_height;
    init();
  }
  
  void init() {
    state = ACTIVATE;
    act_c = ELEVATOR_WAIT_TIME;
    mov_c = ELEVATOR_MOV_INT;
  }
  
  void update();
  
  State state;
  bool active;
  Sector *sec;
  int act_c, up_c, mov_c;
  Elevator *next, *next_active;
  int start_height, final_height;
};


#endif