#ifndef BSP_TREE_H
#define BSP_TREE_H

#include "Plane.h"

class Plane;
class Wall;

class BspTree {
public:
  
  BspTree(Wall *wall_list);
  
  struct BspNode {
    BspNode() : partition(0), walls(0), back(0), front(0) {}
    Plane *partition;
    Wall *walls;
    BspNode *front, *back;
  };
  
  BspNode *root;
  int n_nodes;
  Wall *sort_wall_list;
  Wall **sort_wall_list_ptr;
  
  void sort_walls(const Vector2d& pos);
private:
  void build(BspNode *pnode, Wall *wall_list);
  void sort_walls_rec(BspNode *pnode, const Vector2d& pos);
};

#endif