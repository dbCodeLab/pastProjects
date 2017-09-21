#include <cstring>
#include <cstdlib>
#include <stdint.h>

#include <iostream>
using std::cout;
using std::endl;

#include "VertexSet.h"

#define DIRECTORY_CAP 512
#define SEGMENT_CAP 256
#define HASH_CAP 4096

VertexSet::VertexSet() : n_vertices(0), n_segments(0) {
  vertices = new Vector2d*[DIRECTORY_CAP];
  n_segments = 0;
  htable = new Hhead[HASH_CAP];
}

VertexSet::~VertexSet() {
  // ...
}

Vector2d *VertexSet::insert(const Vector2d& vec) {
  Vector2d *pvec = va(vec);
  if (pvec) {
    return pvec;
  }
 
  int r = n_vertices/SEGMENT_CAP;
  int c = n_vertices%SEGMENT_CAP;
  
  if (c == 0) {
    vertices[n_segments++] = new Vector2d[SEGMENT_CAP];
  }
  
  vertices[r][c] = vec;
  insert_ht(&vertices[r][c]);
  ++n_vertices;

  return &vertices[r][c];
}

Vector2d * VertexSet::va(int index) {
  return &vertices[index/DIRECTORY_CAP][index%SEGMENT_CAP];
}

Vector2d *VertexSet::va(const Vector2d& vec) {
  double x = vec.x;
  double y = vec.y; 
  
  for (Hnode *p = htable[hash(x, y)].head; p; p = p->next) {
    if (p->vec->x == x && p->vec->y == y) {
      return p->vec;
    }
  }
  return 0;
}

void VertexSet::insert_ht(Vector2d *pvec) {
  unsigned int tpos = hash(pvec->x, pvec->y);
  htable[tpos].head = new Hnode(pvec, htable[tpos].head);  
}

uint32_t jenkins_one_at_a_time_hash(char *key, size_t len)
{
    uint32_t hash, i;
    for(hash = i = 0; i < len; ++i)
    {
        hash += key[i];
        hash += (hash << 10);
        hash ^= (hash >> 6);
    }
    hash += (hash << 3);
    hash ^= (hash >> 11);
    hash += (hash << 15);
    return hash;
}

unsigned int VertexSet::hash(double x, double y) {
  uint32_t h1 = jenkins_one_at_a_time_hash(reinterpret_cast<char *>(&x), sizeof(double));
  uint32_t h2 = jenkins_one_at_a_time_hash(reinterpret_cast<char *>(&y), sizeof(double));
  return static_cast<unsigned int>(h1 * 3 + h2) % HASH_CAP;
}


