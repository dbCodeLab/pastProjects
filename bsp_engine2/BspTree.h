#ifndef BSP_TREE_H
#define BSP_TREE_H

#include "Plane.h"

class Plane;

class BspTree {
public:
  
  BspTree(Wall *wall_list);
  
  struct BspNode {
    BspNode() : partition(0), walls(0), last(0), back(0), front(0) { brect[0]=brect[1]=brect[2]=brect[3]=0; }
    void build_brect(Wall *wall_list);
    Plane *partition;
    Wall *brect[4];
    Wall *walls, *last;
    BspNode *front, *back;
  };
  
  BspNode *root;
  int n_nodes, n_poly;
  Wall *sort_wall_list;
  Wall **sort_wall_list_ptr;
  
  void sort_walls(const Vector2d& pos);
private:
  void build(BspNode *pnode, Wall *wall_list);
  void sort_walls_rec(BspNode *pnode, const Vector2d& pos);
};

#endif