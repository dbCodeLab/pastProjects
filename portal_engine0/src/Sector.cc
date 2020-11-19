#include "Sector.h"

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