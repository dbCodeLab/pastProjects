#ifndef SECTOR_H
#define SECTOR_H

#include "Wall.h"

class Sector {
public:
  
  Sector(Wall **sector_walls, int sector_num_walls, int sector_height, int sector_height_walls,
	 int sector_floor_color, int sector_ceiling_color) 
	: walls(sector_walls), num_walls(sector_num_walls), height_walls(sector_height_walls), 
	  height(sector_height), floor_color(sector_floor_color), ceiling_color(sector_ceiling_color)
  { }
  
  void sort_walls();
  
  virtual ~Sector() { delete[] walls; }
  
  Wall **walls;
  const int num_walls;
  const int height_walls;
  const int height;
  const unsigned int floor_color, ceiling_color;
};

#endif