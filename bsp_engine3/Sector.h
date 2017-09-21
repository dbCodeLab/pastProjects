#ifndef SECTOR_H
#define SECTOR_H

#include "Texture.h"
#include "com_def.h"

class Wall;

class Sector {
public:
  
  enum SectorTypes { AREA, DOOR, ELEVATOR };
  
  Sector(int sector_id, int sector_floor_height, int sector_ceiling_height, double sector_light_level,
	 Texture *sector_floor_tex, Texture *sector_ceiling_tex, SectorTypes sector_type = AREA, int final_floor_height_sec = -1) 
	: id(sector_id), floor_height(sector_floor_height), ceiling_height(sector_ceiling_height), light_level(sector_light_level*SECTOR_LIGHT_FACTOR_M), 
	  floor_tex(sector_floor_tex), ceiling_tex(sector_ceiling_tex) , vis(false), wall_list(0), num_walls(0), type(sector_type), adj_sec_list(0)
	{
	  wall_height = sector_ceiling_height - floor_height;
	  if (type == ELEVATOR)
	    final_floor_height = final_floor_height_sec;
	}
  
  void inc_ceiling_height() {
    ++ceiling_height;
    ++wall_height;
  }
  
  void dec_ceiling_height() {
    --ceiling_height;
    --wall_height;    
  }
  
  void inc_floor_height() {
    ++floor_height;
    --wall_height;
  }
  
  void dec_floor_height() {
    --floor_height;
    ++wall_height;    
  }
  
  int id;
  SectorTypes type;
  int floor_height;
  int ceiling_height;
  int start_ceiling_height; // usato per i door_side
  int final_floor_height;   // usato per gli ELEVATOR sectors
  int wall_height;
  double light_level;
  Texture *floor_tex;
  Texture *ceiling_tex;
  bool vis;
  Sector *next_vis;
  Wall *wall_list;
  int num_walls;
  
  struct adj_sec_node {
    Sector *adj_sec;
    adj_sec_node *next;
  } *adj_sec_list;
  
};

#endif