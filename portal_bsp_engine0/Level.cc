#include "Level.h"
#include <cstdlib>


#include <iostream>
#include "BspTree.h"

using std::cout;
using std::endl;

Level::Level(Sector **level_sectors, int level_num_sectors) 
	: sectors(level_sectors), num_sectors(level_num_sectors)
{
    
  for (int i=0; i!=level_num_sectors; ++i) {
    level_sectors[i]->sort_walls();
    level_sectors[i]->compute_adj_sectors();
    
    if (level_sectors[i]->internal_walls) {
      level_sectors[i]->bsp_tree = new BspTree(level_sectors[i]->internal_walls);  
    } 
    
  }
}

Sector *Level::player_sector(const Player *player, const Sector *cur_player_sector) {
  
  if (test_in_sector(cur_player_sector, player)) {
    return const_cast<Sector *>(cur_player_sector);
  }
    
  for (int i=0; i!=cur_player_sector->num_adj_sectors; ++i) {
    if (test_in_sector(cur_player_sector->adj_sectors[i], player)) {
      return cur_player_sector->adj_sectors[i];
    }
  }
  
  exit(1);
}

bool Level::test_in_sector(const Sector *sector, const Player *player) {
  
  for (int i=0; i!=sector->num_walls; ++i) {
    if (sector->walls[i]->owner_plane->evaluate_position(player->pos) == Plane::IN_BACK)
      return false;
  }

  return true;
}