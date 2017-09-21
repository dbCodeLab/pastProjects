#ifndef VERTEX_SET_H
#define VERTEX_SET_H

#include "Vector2d.h"

class VertexSet {
public:
  VertexSet();
  ~VertexSet();
  Vector2d *insert(const Vector2d& vec);  
  Vector2d *va(int);
  Vector2d *va(const Vector2d& vec);

  int n_vertices;
  int n_segments;
  Vector2d **vertices;
  
  struct Hnode {
    Hnode(Vector2d *pvec, Hnode *pn = 0) : vec(pvec), next(pn) {}
    Vector2d *vec;
    Hnode *next;
  };
  
  struct Hhead {
    Hhead() : head(0), ns(0) { }
    Hnode *head; 
    unsigned int ns;
  };
  
private:
  Hhead *htable;
  unsigned int max_chain_length;
  void insert_ht(Vector2d *pvec);
  unsigned int hash(double x, double y);
};

#endif