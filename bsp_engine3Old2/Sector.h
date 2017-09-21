#ifndef SECTOR_H
#define SECTOR_H

#include "Texture.h"

class Sector {
public:
  Sector(int sector_id, int sector_floor_height, int sector_ceiling_height, double sector_light_level,
	 Texture *sector_floor_tex, Texture *sector_ceiling_tex) 
	: id(sector_id), floor_height(sector_floor_height), ceiling_height(sector_ceiling_height), light_level(sector_light_level), 
	  floor_tex(sector_floor_tex), ceiling_tex(sector_ceiling_tex) 
	{
	  wall_height = sector_ceiling_height - floor_height;
	}
  
  int id;
  int floor_height;
  int ceiling_height;
  int wall_height;
  double light_level;
  Texture *floor_tex;
  Texture *ceiling_tex;
};

#endif