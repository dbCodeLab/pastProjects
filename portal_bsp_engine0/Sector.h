#ifndef SECTOR_H
#define SECTOR_H

#include "Wall.h"
#include "BspTree.h"

class BspTree;
class Wall;

class Sector {
public:
  friend class Level;
  
  Sector(int sector_id, Wall **sector_walls, int sector_num_walls, int sector_height, int sector_height_walls,
	 int sector_floor_color, int sector_ceiling_color, Wall *sector_internal_walls_list);
    
  const int id;
  
  Wall **walls;
  int num_walls;
  int height_walls;
  int height;
  unsigned int floor_color, ceiling_color;  
  
  Wall *internal_walls;
  BspTree *bsp_tree;
  Sector **adj_sectors;
  int num_adj_sectors;
private:
  void sort_walls();
  void compute_adj_sectors();
};

#endif