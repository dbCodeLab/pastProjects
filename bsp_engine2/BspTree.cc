#include "BspTree.h"
#include <cstdlib>
#include <limits>

using std::cout;
using std::endl;

#define MAX_DOUBLE std::numeric_limits<double>::max()
// wall_list != 0
BspTree::BspTree(Wall *wall_list) : n_nodes(0), n_poly(0) {
  root = new BspTree::BspNode;
  build(root, wall_list);
}

std::ostream& operator<<(std::ostream& oss, const Wall& wall) {
  oss << wall.points[0].x << " " << wall.points[0].y << std::endl;
  oss << wall.points[1].x << " " << wall.points[1].y << std::endl << std::endl;
  return oss;
}
  
void BspTree::BspNode::build_brect(Wall *wall_list) {
  double xmin, ymin;
  double xmax, ymax;
  
  xmin = MAX_DOUBLE;
  ymin = MAX_DOUBLE;
  xmax = -MAX_DOUBLE;
  ymax = -MAX_DOUBLE;
  
  for (Wall *pwall = wall_list; pwall; pwall = pwall->next) {
    
    if (pwall->points[0].x < pwall->points[1].x) {
      if (pwall->points[0].x < xmin) 
	xmin = pwall->points[0].x;
      if (pwall->points[1].x > xmax)
	xmax = pwall->points[1].x;
    } else {
      if (pwall->points[1].x < xmin)
	xmin = pwall->points[1].x;
      if (pwall->points[0].x > xmax)
	xmax = pwall->points[0].x;
    }
    
    if (pwall->points[0].y < pwall->points[1].y) {
      if (pwall->points[0].y < ymin) 
	ymin = pwall->points[0].y;
      if (pwall->points[1].y > ymax)
	ymax = pwall->points[1].y;
    } else {
      if (pwall->points[1].y < ymin)
	ymin = pwall->points[1].y;
      if (pwall->points[0].y > ymax)
	ymax = pwall->points[0].y;
    }    
    
  }
  
  brect[0] = new Wall(-1, Vector2d(xmin, ymin), Vector2d(xmax, ymin), 0, 0, 0);
  brect[1] = new Wall(-1, Vector2d(xmax, ymin), Vector2d(xmax, ymax), 0, 0, 0);
  brect[2] = new Wall(-1, Vector2d(xmax, ymax), Vector2d(xmin, ymax), 0, 0, 0);
  brect[3] = new Wall(-1, Vector2d(xmin, ymax), Vector2d(xmin, ymin), 0, 0, 0);
 
}

// pnode != 0, wall_list != 0
void BspTree::build(BspNode *pnode, Wall *wall_list) {
  ++n_nodes;++n_poly;
  pnode->build_brect(wall_list);
  Wall *wall = wall_list;
  wall_list = wall_list->next;
  pnode->partition = new Plane(*wall);
  wall->next = pnode->walls;
  pnode->walls = wall;
  pnode->last = wall;
  pnode->last->next_sort = 0;
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
	cur_wall->next = cur_wall->next_sort = pnode->walls;
	pnode->walls = cur_wall;
	++n_poly;
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
}

void BspTree::sort_walls_rec(BspNode *pnode, const Vector2d& pos) {
  if (!pnode) {
    *sort_wall_list_ptr = 0;
  } else {
    Plane::Position ppos = pnode->partition->evaluate_position(pos);
    switch (ppos) {
      case Plane::IN_FRONT: {
	sort_walls_rec(pnode->back, pos);
	Wall *coplanar_wall = pnode->walls;
	while (coplanar_wall) {
	  *sort_wall_list_ptr = coplanar_wall;
	  sort_wall_list_ptr = &(coplanar_wall->next_sort);
	  coplanar_wall = coplanar_wall->next;
	}
	sort_walls_rec(pnode->front, pos);
      } break;
      
      case Plane::IN_BACK: {
	sort_walls_rec(pnode->front, pos);
	Wall *coplanar_wall = pnode->walls;
	while (coplanar_wall) {
	  *sort_wall_list_ptr = coplanar_wall;
	  sort_wall_list_ptr = &(coplanar_wall->next_sort);
	  coplanar_wall = coplanar_wall->next;
	}
	sort_walls_rec(pnode->back, pos);
      } break;
      
      case Plane::SPANNING:
	sort_walls_rec(pnode->back, pos);
	sort_walls_rec(pnode->front, pos);
      break;
    }
  }
  
}