#include "Elevator.h"

void Elevator::update() {
  switch (state) {
    
    case ACTIVATE:
      if (act_c--<=0)
	state = MOVING_UP; 	
    break;
    
    case MOVING_UP:
      if (sec->floor_height < final_height)
	sec->inc_floor_height();
      else {
	state = UP;
	up_c = ELEVATOR_WAIT_TIME;
      }
    break;
    
    case UP:
      if (up_c--<=0)
	state = MOVING_DOWN; 	
    break;
    
    case MOVING_DOWN:
      if (sec->floor_height > start_height)
	sec->dec_floor_height();
      else
	state = DOWN;
    break;
    
    case DOWN:
      
    break;
  }
}