#ifndef LEVEL_H
#define LEVEL_H

#include "Sector.h"
#include "Player.h"

class Level {
public:
  
  Level(Sector **level_sectors, int level_num_sectors);
    
  Sector **sectors;
  int num_sectors;
  
  Sector *player_sector(const Player *player, const Sector *cur_player_sector);   
  
private:
  bool test_in_sector(const Sector *sector, const Player *player);
};

#endif
