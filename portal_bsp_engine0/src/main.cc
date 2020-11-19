#include "XApplication.h"

#include <cstdlib>

int main(int argc, char **argv) {

  if (argc < 3)
    exit(1);
  
  int xscreen = atoi(argv[1]);
  int yscreen = atoi(argv[2]);
 
  if (xscreen < 32 || xscreen > 1280 || yscreen < 32 || yscreen > 1280)
    exit(1);
  
  XApplication xapp("engine", xscreen, yscreen);
  
  xapp.execute();
  
  return 0;
}