#include "Level.h"

#include <cstdlib>
// #include <iostream>
// using std::cout;
// using std::endl;

Sector *Level::player_sector(const Player *player) {
  
  for (int i=0; i!=num_sectors; ++i) {
//        cout << "test sector" << i << endl;
    if (test_in_sector(sectors[i], player)) {
      return sectors[i];
    }
  }
  
//   exit(1);
  return sectors[0];
}

bool Level::test_in_sector(const Sector *sector, const Player *player) {
  
  int n_int = 0;
  
  for (int i=0; i!=sector->num_walls; ++i) {
    if (test_intersection(player, sector->walls[i])) {
//        cout << " int con wall " << i << endl;
      ++n_int;
    }
  }

  return (n_int % 2);
}

bool Level::test_intersection(const Player *player, const Wall *wall) {
  
  int x1 = wall->points[0].x;
  int y1 = wall->points[0].y;
  int x2 = wall->points[1].x;
  int y2 = wall->points[1].y;
  int xp = player->x;
  int yp = player->y;
  
  
  int ymin, ymax;
  int xmax, xmin;
  
  if (y1 < y2) {
    ymin =y1;
    ymax = y2;
  } else {
    ymin = y2;
    ymax = y1;
  }
  
  if (ymin > yp || ymax < yp)
     return false;
   
  if (x1 < x2) {
    xmin = x1;
    xmax = x2;
  } else {
    xmin = x2;
    xmax = x1;
  }
  
  if (xmax < xp)
   return false;

  
  float b1 = y1 - wall->tan_ang * x1;
  float xs = (yp - b1) / (wall->tan_ang);
  
  if (xs < xp)
    return false;
  
  if (xs >= xmin && xs <= xmax && yp >= ymin && yp <= ymax) {
      if (xs == x1) {
	return false;
      }
//       cout << "xs: " << xs << " ys: " << yp << endl;
      return true;
  }
  
  return false;
}