#include "XApplication.h"

#define SCREEN_WIDTH 640
#define SCREEN_HEIGHT 480

int main() {

  XApplication xapp("prova", SCREEN_WIDTH, SCREEN_HEIGHT);
  
  xapp.execute();
  
  return 0;
}