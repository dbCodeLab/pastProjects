#include "BspTree.h"
#include <cstdlib>

using std::cout;
using std::endl;

// wall_list != 0
BspTree::BspTree(Wall *wall_list) : n_nodes(0) {
  root = new BspTree::BspNode;
  build(root, wall_list);
}

// pnode != 0, wall_list != 0
void BspTree::build(BspNode *pnode, Wall *wall_list) {
  ++n_nodes;
  Wall *wall = wall_list;
  wall_list = wall_list->next;
  pnode->partition = new Plane(*wall);
  wall->next = pnode->walls;
  pnode->walls = wall;
  Wall *front_list = 0;
  Wall *back_list = 0;
  while (wall_list) {
    Wall *cur_wall = wall_list;
    wall_list = wall_list->next;
    Plane::Position pos = pnode->partition->evaluate_position(*cur_wall);
    switch (pos) {
      case Plane::IN_FRONT:
	cur_wall->next = front_list;
	front_list = cur_wall;
	break;
      case Plane::IN_BACK:
	cur_wall->next = back_list;
	back_list = cur_wall;
	break;
      case Plane::SPANNING: {
	Wall *wall1 = new Wall(*cur_wall);
	Wall *wall2 = new Wall(*cur_wall);
	if (!pnode->partition->split(*cur_wall, *wall1, *wall2))
	  exit(1);
	wall1->next = front_list;
	front_list = wall1;
	wall2->next = back_list;
	back_list = wall2;
      } break;
      case Plane::COINCIDENT:
	cur_wall->next = pnode->walls;
	pnode->walls = cur_wall;
	break;
    }
  }
  
  if (front_list) {
    pnode->front = new BspNode;
    build(pnode->front, front_list);
  }
  
  if (back_list) {
    pnode->back = new BspNode;
    build(pnode->back, back_list);
  }
  
}

void BspTree::sort_walls(const Vector2d& pos) {
  sort_wall_list_ptr = &sort_wall_list;
  sort_walls_rec(root, pos);
//   cout << endl;
}

void BspTree::sort_walls_rec(BspNode *pnode, const Vector2d& pos) {
  if (!pnode) {
    *sort_wall_list_ptr = 0;
  } else {
//     cout << "Ciao, sono su " << pnode->walls->id << endl;
    Plane::Position ppos = pnode->partition->evaluate_position(pos);
    switch (ppos) {
      case Plane::IN_FRONT: {
//  	cout << "rispetto a " << pnode->walls->id << " sono in FRONT, scendo in back" << endl;
	sort_walls_rec(pnode->back, pos);
	Wall *coplanar_wall = pnode->walls;
	while (coplanar_wall) {
	  *sort_wall_list_ptr = coplanar_wall;
//  	  cout << "Aggiungo il muro: " << coplanar_wall->id << endl;
	  sort_wall_list_ptr = &(coplanar_wall->next_sort);
	  coplanar_wall = coplanar_wall->next;
	}
//  	cout << "da " << pnode->walls->id << " scendo in front" << endl;
	sort_walls_rec(pnode->front, pos);
      } break;
      
      case Plane::IN_BACK: {
//  	cout << "rispetto a " << pnode->walls->id << " sono in BACK, scendo in front" << endl;
	sort_walls_rec(pnode->front, pos);
	Wall *coplanar_wall = pnode->walls;
	while (coplanar_wall) {
	  *sort_wall_list_ptr = coplanar_wall;
//  	  cout << "Aggiungo il muro: " << coplanar_wall->id << endl;
	  sort_wall_list_ptr = &(coplanar_wall->next_sort);
	  coplanar_wall = coplanar_wall->next;
	}
//  	cout << "da " << pnode->walls->id << " scendo in back" << endl;
	sort_walls_rec(pnode->back, pos);
      } break;
      
      case Plane::SPANNING:
//  	cout << "rispetto a " << pnode->walls->id << " sono in SPANNING, scendo in BACK.." << endl;
	sort_walls_rec(pnode->back, pos);
//  	cout << "poi scendo in FRONT.." << endl;
	sort_walls_rec(pnode->front, pos);
      break;
    }
  }
  
}