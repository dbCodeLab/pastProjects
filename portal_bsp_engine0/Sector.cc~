#include "Sector.h"

#include <iostream>

using std::cout;
using std::endl;

Sector::Sector(int sector_id, Wall **sector_walls, int sector_num_walls, int sector_height, int sector_height_walls,
	 int sector_floor_color, int sector_ceiling_color, Wall *sector_internal_walls_list)
	: id(sector_id), walls(sector_walls), num_walls(sector_num_walls), height_walls(sector_height_walls), 
	  height(sector_height), floor_color(sector_floor_color), ceiling_color(sector_ceiling_color), 
	  internal_walls(sector_internal_walls_list), bsp_tree(0)
{

}

void Sector::sort_walls() {
    for (int i=1; i!= num_walls; ++i) {
      Wall *cur = walls[i];
      if (cur->type == Wall::SOLID)
	continue;
      int j = i-1;
      while (j>=0 && walls[j]->type == Wall::SOLID) {
	walls[j+1] = walls[j];
	--j;
      }
      walls[j+1] = cur;
    }
}

void Sector::compute_adj_sectors() {
  num_adj_sectors = 0;
  for (int i=0; i!=num_walls; ++i) {
    if (walls[i]->type == Wall::PORTAL) {
      ++num_adj_sectors;
    }
  }
  
  if (num_adj_sectors > 0) {
    adj_sectors = new Sector*[num_adj_sectors];
    for (int i=0, k = 0; i!=num_walls; ++i) {
      if (walls[i]->type == Wall::PORTAL) {
	adj_sectors[k++] = walls[i]->next_sector;
      }
    }
  } else {
    adj_sectors = 0;
  }
  
}