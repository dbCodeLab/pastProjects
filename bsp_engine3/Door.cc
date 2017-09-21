#include "Door.h"
#include "Wall.h"

void Door::update() {
  switch (state) {
    case OPENING:
      if (sec->ceiling_height < sec->start_ceiling_height-DOOR_CEILING_OFF)
	sec->inc_ceiling_height();
      else {
	state = OPEN;	
	open_c = DOOR_OPEN_TIME;
      }
    break;
    
    case OPEN:
      if (open_c--<=0)
	state = WAITING; 
    break;
    
    case CLOSING:
      if (sec->ceiling_height > sec->floor_height)
	sec->dec_ceiling_height();
      else
	state = STOP;
    break;
    
    case WAITING:
      
    break;
    
    case STOP:

    break;
  }
}