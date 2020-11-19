#include "XEngine.h"
#include <X11/Xlib.h>
#include <X11/Intrinsic.h>

#include <unistd.h>
#include <fstream>
#include "XTextureLoaderPPM.h"

#define VIEWPORT_LEFT_OFF   20
#define VIEWPORT_RIGHT_OFF  20
#define VIEWPORT_TOP_OFF    20
#define VIEWPORT_BOT_OFF    20

#define FOV 60

#define UPDATE_VP_CENTER_FACTOR 2
#define UPDATE_HEIGHT_FACTOR 2

#define PLAYER_HEIGHT 32

#define ANGLE_DISP 0.055 //0.08 //0.055
#define POS_DISP 14

#define FXP_SHIFT 16
#define FXP_MUL (1<<FXP_SHIFT)

#define MAX_LIGHT_LEN 1000
#define LIGHT_LEN_LEVEL 50


XEngine::XEngine(int xsize, int ysize, XScreenRgbInfo *scr_info)
  : fov(FOV) {
  this->scr_info = scr_info;
  this->rasterizer = new XRasterizer(xsize, ysize, scr_info->p_screenbuf, scr_info->bytes_per_pixel);    
  this->p_screen = reinterpret_cast<unsigned int *>(rasterizer->p_screenbuf);
  this->xsize = rasterizer->xsize;
  this->ysize = rasterizer->ysize; 
  this->tex_loader = new XTextureLoaderPPM(scr_info);
  this->setup_data();
}

void XEngine::process_key(char ch) {
      switch (ch) {
	  case 'q':
	    exit(0);
	  case 'a':
	    update_angle(-1);
	    break;
	  case 'd':
	    update_angle(+1);
	    break;
	  case 'w':
	    update_position(+1);
	    break;
	  case 's':
	    update_position(-1);
	    break;
	  case 'x':
	    update_height(+1);
	    break;
	  case 'c':
	    update_height(-1);
	    break;
	  case 'v':
	    update_vp(+1);
	    break;
	  case 'b':
	    update_vp(-1);
	    break;
      }   
}

void XEngine::update_position(int dir) {
    player->pos.x += dir * POS_DISP * cos(player->angle);
    player->pos.y += dir * POS_DISP * sin(player->angle);
//      cout << player->pos.x << " " << player->pos.y << " " << player->angle << endl;
}
  
void XEngine::update_angle(int dir) {
  player->angle += dir * ANGLE_DISP;
  if (player->angle >= 2 * M_PI)
    player->angle -= 2 * M_PI;
  if (player->angle < 0)
    player->angle += 2 * M_PI;
}
  
void XEngine::update_height(int dir) {
 player->height += dir * UPDATE_HEIGHT_FACTOR; 
}

void XEngine::update_vp(int dir) {
  vp_center += dir * UPDATE_VP_CENTER_FACTOR;
  if (vp_center < vp_top)
    vp_center = vp_top;
  if (vp_center > vp_bot)
    vp_center = vp_bot;
}

double XEngine::deg_to_rad(int deg) {
  return deg * (M_PI / 180);
}

void XEngine::setup_data() {
  
    //srand(time(0));   
    
    vp_left = VIEWPORT_LEFT_OFF;
    vp_right = xsize - VIEWPORT_RIGHT_OFF - 1;
    vp_top = VIEWPORT_TOP_OFF;
    vp_bot = ysize - VIEWPORT_BOT_OFF - 1;
    vp_center = ysize / 2;
  
    xview = vp_right - vp_left + 1;
    yview = vp_bot - vp_top + 1;
    pp_distance = xsize/2 / tan(deg_to_rad(FOV/2));
    
    setup_player();  
            
    setup_screen_data();    
    
    setup_textures();
    
    setup_row_blocks();
    
    setup_level_data();
}

void XEngine::setup_textures() {
  
  tex_loader->load("res/xwall1.ppm");
  wall_tex = new Texture(tex_loader->data, tex_loader->width, tex_loader->height);
  
}

void XEngine::setup_screen_data() {
    
  col_data = new col_inf[xsize];
    
  for (int col = vp_left; col <= vp_right; ++col) {
    col_data[col].ang = atan2(static_cast<float>((col - xsize/2)) , pp_distance);    
    col_data[col].cos_ang = cos(col_data[col].ang);
    col_data[col].sin_ang = sin(col_data[col].ang);
    col_data[col].tan_ang = tan(col_data[col].ang);
  }
  
  lower_rows = new int[xsize];
  upper_rows = new int[xsize];
  
  for (int i=vp_left; i<=vp_right; ++i) {
    upper_rows[i] = vp_top;
    lower_rows[i] = vp_bot;
  }
}

void XEngine::setup_player() {
  player = new Player();
    
  player->pos.x = 50;
  player->pos.y = 50;
    
  player->angle = 3 * M_PI / 2;
  player->height = PLAYER_HEIGHT;  
}

void XEngine::setup_level_data() {
/*
   Wall *wall1 = new Wall(0, Vector2d(-153,454), Vector2d(407, -397), 64, 0xFF0000, 0);
   Wall *wall2 = new Wall(1, Vector2d(0, 0), Vector2d(0, 512), 64, rand(), 0);  
   wall1->next = wall2;
   wall2->next = 0;
   wall_list = wall1;*/
   
/*
  srand(time(0));
  wall_list = 0;
  int n_walls = 10;
  Wall **walls = new Wall*[n_walls];
  for (int i=0; i!=n_walls; ++i) {
    double x1 = rand() % 1024 - 512; //4096 - 2048;
    double y1 = rand() % 1024 - 512; //4096 - 2048;
    double x2 = x1 + (rand() % 512 - 256);
    double y2 = y1 + (rand() % 512 - 256);
    walls[i] = new Wall(i, Vector2d(x1, y1), Vector2d(x2, y2), rand() % 64 + 32, rand(), 0);
    walls[i]->next = wall_list;
    wall_list = walls[i];
  }
  
  bsptree = new BspTree(wall_list);*/
  
/*
  int num_sectors = 3;
  Sector **sectors = new Sector*[num_sectors];
  
 
  int num_walls = 4;
  int wall_height = 64;
  Wall **walls = new Wall*[num_walls];
  walls[0] = new Wall(0, Vector2d(0, 0), Vector2d(640, 0), rand(), 0);
  walls[1] = new Wall(1, Vector2d(640, 0), Vector2d(640, 640), rand(), 0);
  walls[2] = new Wall(2, Vector2d(640, 640), Vector2d(0, 640), rand(), 0);
  walls[3] = new Wall(3, Vector2d(0, 640), Vector2d(0, 0), rand(), 0);
     
 
  sectors[0] = new Sector(0, walls, num_walls, 0, wall_height, rand(), rand());  
    
  for (int i=0; i!=num_walls; ++i) {
    walls[i]->type = Wall::SOLID;
    walls[i]->owner_sector = sectors[0];
    walls[i]->next_sector = 0;    
  }
   

  num_walls = 6;
  wall_height = 128;
  Wall **walls2 = new Wall*[num_walls];
  walls2[0] = new Wall(0, Vector2d(0, 640), Vector2d(640, 640), rand(), 0);
  walls2[1] = new Wall(1, Vector2d(640, 640), Vector2d(640, 640+640), rand(), 0);
  walls2[2] = new Wall(2, Vector2d(640, 640+640), Vector2d(420, 640+640), rand(), 0);
  walls2[3] = new Wall(3, Vector2d(420, 640+640), Vector2d(220, 640+640), rand(), 0);
  walls2[4] = new Wall(4, Vector2d(220, 640+640), Vector2d(0, 640+640), rand(), 0);
  walls2[5] = new Wall(5, Vector2d(0, 640+640), Vector2d(0, 640), rand(), 0);
  
  sectors[1] = new Sector(1, walls2, num_walls, 16, wall_height, rand(), rand());  
    
  for (int i=0; i!=num_walls; ++i) {
    walls2[i]->type = Wall::SOLID;
    walls2[i]->owner_sector = sectors[1];
    walls2[i]->next_sector = 0;    
  }
  
  walls2[0]->type = Wall::PORTAL;
  walls2[0]->owner_sector = sectors[1];
  walls2[0]->next_sector = sectors[0];    
  
  walls[2]->type = Wall::PORTAL;
  walls[2]->owner_sector = sectors[0];
  walls[2]->next_sector = sectors[1];
  

  num_walls = 4;
  wall_height = 256;
  Wall **walls3 = new Wall*[num_walls];
  walls3[0] = new Wall(0, Vector2d(220, 640+640), Vector2d(420, 640+640), rand(), 0);
  walls3[1] = new Wall(1, Vector2d(420, 640+640), Vector2d(420, 1920), rand(), 0);
  walls3[2] = new Wall(2, Vector2d(420, 1920), Vector2d(220, 1920), rand(), 0);
  walls3[3] = new Wall(3, Vector2d(220, 1920), Vector2d(220, 640+640), rand(), 0);
  
  sectors[2] = new Sector(2, walls3, num_walls, 32, wall_height, rand(), rand());
  
  for (int i=0; i!=num_walls; ++i) {
    walls3[i]->type = Wall::SOLID;
    walls3[i]->owner_sector = sectors[2];
    walls3[i]->next_sector = 0;    
  }
  
  walls3[0]->type = Wall::PORTAL;
  walls3[0]->owner_sector = sectors[2];
  walls3[0]->next_sector = sectors[1];  
  
  walls2[3]->type = Wall::PORTAL;
  walls2[3]->owner_sector = sectors[1];
  walls2[3]->next_sector = sectors[2]; 
    

  level = new Level(sectors, num_sectors);*/

/*
  int num_sectors = 4;
  Sector **sectors = new Sector*[num_sectors];
  
  int num_walls = 7;
  int wall_height = 128;
  int color = 0x545454; // 0x303030;
  Wall **walls = new Wall*[num_walls];
  walls[0] = new Wall(0,Vector2d(0, 0), Vector2d(320, -256), rand(), wall_tex); 
  walls[1] = new Wall(0,Vector2d(320, -256), Vector2d(640, 0), rand(), wall_tex);
  walls[2] = new Wall(0,Vector2d(640, 0), Vector2d(784, 256), rand(), wall_tex); 
  walls[3] = new Wall(0,Vector2d(784, 256), Vector2d(640, 512), rand(), wall_tex); 
  walls[4] = new Wall(0,Vector2d(640, 512), Vector2d(256, 512), rand(), wall_tex);
  walls[5] = new Wall(0,Vector2d(256, 512), Vector2d(-64, 256), rand(), wall_tex);
  walls[6] = new Wall(0,Vector2d(-64, 256), Vector2d(0, 0), rand(), wall_tex);
  
  Wall *iwall01 = new Wall(1, Vector2d(100, 100), Vector2d(110, 100), rand(), wall_tex);
  Wall *iwall02 = new Wall(1, Vector2d(110, 100), Vector2d(110, 110), rand(), wall_tex);
  Wall *iwall03 = new Wall(1, Vector2d(110, 110), Vector2d(100, 110), rand(), wall_tex);
  Wall *iwall04 = new Wall(1, Vector2d(100, 110), Vector2d(100, 100), rand(), wall_tex);
  
  iwall01->next = iwall02;
  iwall02->next = iwall03;
  iwall03->next = iwall04;
  
  sectors[0] = new Sector(0,walls, num_walls, 0, wall_height, 0x636363, 0x7A7A7A, iwall01); //0xABABAB);  
    
  for (int i=0; i!=num_walls; ++i) {
    walls[i]->type = Wall::SOLID;
    walls[i]->owner_sector = sectors[0];
    walls[i]->next_sector = 0;    
  }
  
  iwall01->owner_sector = sectors[0];
  iwall02->owner_sector = sectors[0];
  iwall03->owner_sector = sectors[0];
  iwall04->owner_sector = sectors[0];
  
  num_walls = 5;
  wall_height = 64;
  Wall **walls2 = new Wall*[num_walls];
  walls2[0] = new Wall(0,Vector2d(640, 0), Vector2d(1024, 64), rand(), wall_tex); 
  walls2[1] = new Wall(0,Vector2d(1024, 64), Vector2d(1128, 128), rand(), wall_tex);
  walls2[2] = new Wall(0,Vector2d(1128, 128), Vector2d(1100, 256), rand(), wall_tex);
  walls2[3] = new Wall(0,Vector2d(1100, 256), Vector2d(784, 256), rand(), wall_tex);
  walls2[4] = new Wall(0,Vector2d(784, 256), Vector2d(640, 0), rand(), wall_tex);
  
  sectors[1] = new Sector(0,walls2, num_walls, 16, wall_height, 0x7F7F7F, 0x8A8A8A, 0);  
    
  for (int i=0; i!=num_walls; ++i) {
    walls2[i]->type = Wall::SOLID;
    walls2[i]->owner_sector = sectors[1];
    walls2[i]->next_sector = 0;    
  }
  
  walls[2]->type = Wall::PORTAL;
  walls[2]->owner_sector = sectors[0];
  walls[2]->next_sector = sectors[1]; 
     
  walls2[4]->type = Wall::PORTAL;
  walls2[4]->owner_sector = sectors[1];
  walls2[4]->next_sector = sectors[0]; 
  
  
  num_walls = 5;
  wall_height = 64;
  Wall **walls3 = new Wall*[num_walls];
  walls3[0] = new Wall(0,Vector2d(1128, 128), Vector2d(1536, 256), rand(), wall_tex);
  walls3[1] = new Wall(0,Vector2d(1536, 256), Vector2d(1450, 640), rand(), wall_tex);
  walls3[2] = new Wall(0,Vector2d(1450, 640), Vector2d(1200, 784), rand(), wall_tex);
  walls3[3] = new Wall(0,Vector2d(1200, 784), Vector2d(1100, 256), rand(), wall_tex);
  walls3[4] = new Wall(0,Vector2d(1100, 256), Vector2d(1128, 128), rand(), wall_tex);
 
  sectors[2] = new Sector(0,walls3, num_walls, 32, wall_height, 0x636363, 0xABABAB, 0);  
    
  for (int i=0; i!=num_walls; ++i) {
    walls3[i]->type = Wall::SOLID;
    walls3[i]->owner_sector = sectors[2];
    walls3[i]->next_sector = 0;    
  }  
     
  walls3[4]->type = Wall::PORTAL;
  walls3[4]->owner_sector = sectors[2];
  walls3[4]->next_sector = sectors[1];   
 
  walls2[2]->type = Wall::PORTAL;
  walls2[2]->owner_sector = sectors[1];
  walls2[2]->next_sector = sectors[2];
  
  
  num_walls = 5;
  wall_height = 64;
  Wall **walls4 = new Wall*[num_walls];
  walls4[0] = new Wall(0,Vector2d(-64, 256), Vector2d(-512, 320), rand(), wall_tex); 
  walls4[1] = new Wall(0,Vector2d(-512, 320), Vector2d(-784, 256), rand(), wall_tex);
  walls4[2] = new Wall(0,Vector2d(-784, 256), Vector2d(-1024, -64), rand(), wall_tex);
  walls4[3] = new Wall(0,Vector2d(-1024, -64), Vector2d(0, 0), rand(), wall_tex);
  walls4[4] = new Wall(0,Vector2d(0, 0), Vector2d(-64, 256), rand(), wall_tex);
 
  sectors[3] = new Sector(0,walls4, num_walls, 16, wall_height, 0x7F7F7F, 0x8A8A8A, 0);  
    
  for (int i=0; i!=num_walls; ++i) {
    walls4[i]->type = Wall::SOLID;
    walls4[i]->owner_sector = sectors[3];
    walls4[i]->next_sector = 0;    
  }  
  
  walls4[4]->type = Wall::PORTAL;
  walls4[4]->owner_sector = sectors[3];
  walls4[4]->next_sector = sectors[0];   
 
  walls[6]->type = Wall::PORTAL;
  walls[6]->owner_sector = sectors[0];
  walls[6]->next_sector = sectors[3];      
   */
  

/*
  int num_sectors = 2;
  Sector **sectors = new Sector*[num_sectors];
  
  int num_walls = 6;
  int wall_height = 128;
  Wall **walls = new Wall*[num_walls];
  walls[0] = new Wall(0,Vector2d(0, 0), Vector2d(256, 0), rand(), wall_tex); 
  walls[1] = new Wall(0,Vector2d(256, 0), Vector2d(256, 128), rand(), wall_tex);
  walls[2] = new Wall(0,Vector2d(256, 128), Vector2d(256, 256), rand(), wall_tex); 
  walls[3] = new Wall(0,Vector2d(256, 256), Vector2d(256, 512), rand(), wall_tex); 
  walls[4] = new Wall(0,Vector2d(256, 512), Vector2d(0, 512), rand(), wall_tex);
  walls[5] = new Wall(0,Vector2d(0, 512), Vector2d(0, 0), rand(), wall_tex);

  sectors[0] = new Sector(0, walls, num_walls, 0, wall_height, rand(), 0x7A7A7A, 0);
 
  for (int i=0; i!=num_walls; ++i) {
    walls[i]->type = Wall::SOLID;
    walls[i]->owner_sector = sectors[0];
    walls[i]->next_sector = 0;    
  }

  num_walls = 4;
  wall_height = 64;
  Wall **walls2 = new Wall*[num_walls];
  walls2[0] = new Wall(0,Vector2d(256, 128), Vector2d(512, 128), rand(), wall_tex); 
  walls2[1] = new Wall(0,Vector2d(512, 128), Vector2d(512, 256), rand(), wall_tex);
  walls2[2] = new Wall(0,Vector2d(512, 256), Vector2d(256, 256), rand(), wall_tex); 
  walls2[3] = new Wall(0,Vector2d(256, 256), Vector2d(256, 128), rand(), wall_tex); 
  
  sectors[1] = new Sector(0, walls2, num_walls, 16, wall_height, rand(), 0x7A7A7A, 0);
  
  for (int i=0; i!=num_walls; ++i) {
    walls2[i]->type = Wall::SOLID;
    walls2[i]->owner_sector = sectors[1];
    walls2[i]->next_sector = 0;    
  }  
  
  walls[2]->type = Wall::PORTAL;
  walls[2]->owner_sector = sectors[0];
  walls[2]->next_sector = sectors[1];   
 
  walls2[3]->type = Wall::PORTAL;
  walls2[3]->owner_sector = sectors[1];
  walls2[3]->next_sector = sectors[0];     */ 
 

  srand(time(0));
  
  int num_sectors = 6;
  Sector **sectors = new Sector*[num_sectors];
  
  int num_walls = 6;
  int wall_height = 128;
  Wall **walls = new Wall*[num_walls];
  walls[0] = new Wall(1,Vector2d(0, 0), Vector2d(256, 0), rand(), wall_tex); 
  walls[1] = new Wall(0,Vector2d(256, 0), Vector2d(256, 128), rand(), wall_tex);
  walls[2] = new Wall(0,Vector2d(256, 128), Vector2d(256, 256), rand(), wall_tex); 
  walls[3] = new Wall(0,Vector2d(256, 256), Vector2d(256, 512), rand(), wall_tex); 
  walls[4] = new Wall(0,Vector2d(256, 512), Vector2d(0, 512), rand(), wall_tex);
  walls[5] = new Wall(0,Vector2d(0, 512), Vector2d(0, 0), rand(), wall_tex);

  sectors[0] = new Sector(0, walls, num_walls, 0, wall_height, rand(), rand(), 0);
 
  for (int i=0; i!=num_walls; ++i) {
    walls[i]->type = Wall::SOLID;
    walls[i]->owner_sector = sectors[0];
    walls[i]->next_sector = 0;    
  }

  num_walls = 4;
  wall_height = 96;
  Wall **walls2 = new Wall*[num_walls];
  walls2[0] = new Wall(0,Vector2d(256, 128), Vector2d(512, 128), rand(), wall_tex); 
  walls2[1] = new Wall(0,Vector2d(512, 128), Vector2d(512, 256), rand(), wall_tex);
  walls2[2] = new Wall(0,Vector2d(512, 256), Vector2d(256, 256), rand(), wall_tex); 
  walls2[3] = new Wall(0,Vector2d(256, 256), Vector2d(256, 128), rand(), wall_tex); 
  
  sectors[1] = new Sector(0, walls2, num_walls, 16, wall_height, rand(), rand(), 0);
  
  for (int i=0; i!=num_walls; ++i) {
    walls2[i]->type = Wall::SOLID;
    walls2[i]->owner_sector = sectors[1];
    walls2[i]->next_sector = 0;    
  }  
  
  walls[2]->type = Wall::PORTAL;
//   walls[2]->owner_sector = sectors[0];
  walls[2]->next_sector = sectors[1];   
 
  walls2[3]->type = Wall::PORTAL;
//   walls2[3]->owner_sector = sectors[1];
  walls2[3]->next_sector = sectors[0];
  

  num_walls = 4;
  wall_height = 64+16;
  Wall **walls3 = new Wall*[num_walls];
  walls3[0] = new Wall(0,Vector2d(256, 0), Vector2d(512, 0), rand(), wall_tex); 
  walls3[1] = new Wall(0,Vector2d(512, 0), Vector2d(512, 128), rand(), wall_tex);
  walls3[2] = new Wall(0,Vector2d(512, 128), Vector2d(256, 128), rand(), wall_tex); 
  walls3[3] = new Wall(0,Vector2d(256, 128), Vector2d(256, 0), rand(), wall_tex); 
  
  sectors[2] = new Sector(0, walls3, num_walls, 0, wall_height, rand(), rand(), 0);
  
  for (int i=0; i!=num_walls; ++i) {
    walls3[i]->type = Wall::SOLID;
    walls3[i]->owner_sector = sectors[2];
    walls3[i]->next_sector = 0;    
  }  
  
  walls[1]->type = Wall::PORTAL;
//   walls[1]->owner_sector = sectors[0];
  walls[1]->next_sector = sectors[2];   
 
  walls3[3]->type = Wall::PORTAL;
//   walls3[3]->owner_sector = sectors[2];
  walls3[3]->next_sector = sectors[0];
  
  walls2[0]->type = Wall::PORTAL;
//   walls2[0]->owner_sector = sectors[1];
  walls2[0]->next_sector = sectors[2];   
 
  walls3[2]->type = Wall::PORTAL;
//   walls3[2]->owner_sector = sectors[2];
  walls3[2]->next_sector = sectors[1];
 
  
  num_walls = 4;
  wall_height = 128;
  Wall **walls4 = new Wall*[num_walls];
  walls4[0] = new Wall(0,Vector2d(512, 0), Vector2d(784, 0), rand(), wall_tex); 
  walls4[1] = new Wall(0,Vector2d(784, 0), Vector2d(784, 128), rand(), wall_tex);
  walls4[2] = new Wall(0,Vector2d(784, 128), Vector2d(512, 128), rand(), wall_tex); 
  walls4[3] = new Wall(0,Vector2d(512, 128), Vector2d(512, 0), rand(), wall_tex); 
  
  sectors[3] = new Sector(0, walls4, num_walls, 0, wall_height, rand(), rand(), 0);
  
  for (int i=0; i!=num_walls; ++i) {
    walls4[i]->type = Wall::SOLID;
    walls4[i]->owner_sector = sectors[3];
    walls4[i]->next_sector = 0;    
  }  
  
  walls3[1]->type = Wall::PORTAL;
//   walls3[1]->owner_sector = sectors[2];
  walls3[1]->next_sector = sectors[3];   
 
  walls4[3]->type = Wall::PORTAL;
//   walls4[3]->owner_sector = sectors[3];
  walls4[3]->next_sector = sectors[2];
  
  
  num_walls = 4;
  wall_height = 64;
  Wall **walls5 = new Wall*[num_walls];
  walls5[0] = new Wall(0,Vector2d(512, 128), Vector2d(784, 128), rand(), wall_tex); 
  walls5[1] = new Wall(0,Vector2d(784, 128), Vector2d(784, 256), rand(), wall_tex);
  walls5[2] = new Wall(0,Vector2d(784, 256), Vector2d(512, 256), rand(), wall_tex); 
  walls5[3] = new Wall(0,Vector2d(512, 256), Vector2d(512, 128), rand(), wall_tex); 
  
  sectors[4] = new Sector(0, walls5, num_walls, 0, wall_height, rand(), rand(), 0);
  
  for (int i=0; i!=num_walls; ++i) {
    walls5[i]->type = Wall::SOLID;
    walls5[i]->owner_sector = sectors[4];
    walls5[i]->next_sector = 0;    
  }  

  walls5[0]->type = Wall::PORTAL;
  walls5[0]->next_sector = sectors[3];   
 
  walls4[2]->type = Wall::PORTAL;
  walls4[2]->next_sector = sectors[4];
  
  walls5[3]->type = Wall::PORTAL;
  walls5[3]->next_sector = sectors[1];   
 
  walls2[1]->type = Wall::PORTAL;
  walls2[1]->next_sector = sectors[4];
  
  
  num_walls = 5;
  wall_height = 96;
  Wall **walls6 = new Wall*[num_walls];
  walls6[0] = new Wall(0,Vector2d(512, 256), Vector2d(784, 256), rand(), wall_tex); 
  walls6[1] = new Wall(0,Vector2d(784, 256), Vector2d(1024, 256), rand(), wall_tex);
  walls6[2] = new Wall(0,Vector2d(1024, 256), Vector2d(1024, 512), rand(), wall_tex); 
  walls6[3] = new Wall(0,Vector2d(1024, 512), Vector2d(512, 512), rand(), wall_tex); 
  walls6[4] = new Wall(0,Vector2d(512, 512), Vector2d(512, 256), rand(), wall_tex); 
 
  Wall *iwall01 = new Wall(1, Vector2d(784, 256), Vector2d(640, 356), rand(), wall_tex);
  Wall *iwall02 = new Wall(1, Vector2d(640, 356), Vector2d(640, 370), rand(), wall_tex);
  Wall *iwall03 = new Wall(1, Vector2d(640, 370), Vector2d(920, 420), rand(), wall_tex);
  
  Wall *iwall04 = new Wall(1, Vector2d(800, 500), Vector2d(800, 512), 0xFF0000, wall_tex);
  Wall *iwall05 = new Wall(1, Vector2d(800, 500), Vector2d(820, 500), rand(), wall_tex);
  Wall *iwall06 = new Wall(1, Vector2d(820, 500), Vector2d(820, 512), rand(), wall_tex);

  iwall01->next = iwall02;
  iwall02->next = iwall03;
  iwall03->next = iwall04;
  iwall04->next = iwall05;
  iwall05->next = iwall06;
  
  sectors[5] = new Sector(0, walls6, num_walls, 16, wall_height, rand(), rand(), iwall01);
  iwall01->owner_sector = sectors[5];
  iwall02->owner_sector = sectors[5];
  iwall03->owner_sector = sectors[5];
  iwall04->owner_sector = sectors[5];
  iwall05->owner_sector = sectors[5];
  iwall06->owner_sector = sectors[5];
  
  for (int i=0; i!=num_walls; ++i) {
    walls6[i]->type = Wall::SOLID;
    walls6[i]->owner_sector = sectors[5];
    walls6[i]->next_sector = 0;    
  }  

  walls6[0]->type = Wall::PORTAL;
  walls6[0]->next_sector = sectors[4];   
 
  walls5[2]->type = Wall::PORTAL;
  walls5[2]->next_sector = sectors[5];  
  
  level = new Level(sectors, num_sectors);
  
  cur_sector_p = sectors[0];
}

void XEngine::setup_row_blocks() {
  next_row_block_ptr = 0;
  free_row_block(new int[2*xsize]);  
  free_row_block(new int[2*xsize]);
}

void XEngine::render() {
  
  cos_ang_p = cos(-player->angle);
  sin_ang_p = sin(-player->angle);
  cur_sector_p = level->player_sector(player, cur_sector_p);
  render_sector(cur_sector_p, 0, vp_left, vp_right, lower_rows, upper_rows);
  
}

void XEngine::render_sector(const Sector* cur_sector,const Sector* prev_sector,
			    int left_col_clip, int right_col_clip, int *lower, int *upper) {
  
  for (int i=0; i!=cur_sector->num_walls; ++i) {     
      if (visible_wall(*cur_sector->walls[i], left_col_clip, right_col_clip)) {
	switch (cur_sector->walls[i]->type) {
	  case Wall::SOLID:
	    render_solid_wall(*cur_sector->walls[i], left_col_clip, right_col_clip, lower, upper);
	    break;
	  case Wall::PORTAL:    
 	    if (cur_sector->walls[i]->next_sector == prev_sector)
 	      break;	
	    render_portal_wall(*cur_sector->walls[i], left_col_clip, right_col_clip, lower, upper);
	    break;
	}
      }          
  }
  
  BspTree *bsp_tree = cur_sector->bsp_tree;

  if (bsp_tree) {
    bsp_tree->sort_walls(player->pos);	
    for (Wall *wall_ptr = bsp_tree->sort_wall_list; wall_ptr; wall_ptr = wall_ptr->next_sort) {   
      if (visible_wall(*wall_ptr, left_col_clip, right_col_clip)) {
     	render_internal_wall(*wall_ptr, left_col_clip, right_col_clip, lower, upper);
      }
    }
  }
  

}


bool XEngine::visible_wall(Wall& wall, int left_col_clip, int right_col_clip) {
  
  double dx[2], dy[2];
  double alignx[2], aligny[2];
  double distance[2], max_distance;
  int wall_proj_height[2];
  int wall_proj_height_portal_bot[2];
  int wall_proj_height_portal_top[2];
  int top[2], bot[2];
  int top_portal[2], bot_portal[2];
  int proj_col[2];
  int left, right;
  double xdiff;
  double ydiff;
  double m_left, m_right;
  int left_col, right_col;

  dx[0] = wall.points[0].x - player->pos.x;
  dy[0] = wall.points[0].y - player->pos.y;  
  dx[1] = wall.points[1].x - player->pos.x;
  dy[1] = wall.points[1].y - player->pos.y;  
    
  alignx[0] = dx[0] * cos_ang_p - dy[0] * sin_ang_p;
  aligny[0] = dx[0] * sin_ang_p + dy[0] * cos_ang_p;
   
  alignx[1] = dx[1] * cos_ang_p - dy[1] * sin_ang_p;
  aligny[1] = dx[1] * sin_ang_p + dy[1] * cos_ang_p;    
     
  distance[0] = alignx[0];
  if (abs(distance[0]) == 0.0)
    distance[0] = 1.0;
 
  distance[1] = alignx[1];
  if (distance[1] == 0.0)
    distance[1] = 1.0;
   
  if (distance[0] > distance[1])
    max_distance = distance[0];
  else 
    max_distance = distance[1];
    
  if (max_distance <= 0) {
    return false;
  }

  wall.tpoints[0].x = distance[0];
  wall.tpoints[0].y = aligny[0];
  wall.tpoints[1].x = distance[1];
  wall.tpoints[1].y = aligny[1];
  
  if (aligny[0] < aligny[1]) {
    left = 0;
    right = 1;
  } else {
    left = 1;
    right = 0;
  }
      
  if (distance[left] < 0) {    
    xdiff = alignx[right] - alignx[left];
    ydiff = aligny[right] - aligny[left];
    m_left = ydiff / xdiff;
    aligny[left] = aligny[left] + m_left * (1-alignx[left]);
    distance[left] = alignx[left] = 1;  
  } else if (distance[right] < 0) {    
    xdiff = alignx[right] - alignx[left];
    ydiff = aligny[right] - aligny[left];
    m_right = ydiff / xdiff;
    aligny[right] = aligny[right] + m_right * (1-alignx[right]);
    distance[right] = alignx[right] = 1; 
  }
  
  proj_col[left] = static_cast<int>(aligny[left] * pp_distance / distance[left]) + xsize / 2;
  proj_col[right] = static_cast<int>(aligny[right] * pp_distance / distance[right]) + xsize / 2;

  if (proj_col[left] < proj_col[right]) {
    if (proj_col[right] <= left_col_clip || proj_col[left] >= right_col_clip) {
      return false;
    }
    left_col = 0;
    right_col = 1;
  } else {
    if (proj_col[left] <= left_col_clip || proj_col[right] >= right_col_clip) {
      return false;
    }
    left_col = 1;
    right_col = 0;   
  }  
  
  wall_proj_height[left] = pp_distance * wall.owner_sector->height_walls / distance[left];
  if (wall_proj_height[left] == 0)
    wall_proj_height[left] = 1;    

  bot[left] = pp_distance * (player->height + cur_sector_p->height - wall.owner_sector->height) / distance[left] + vp_center;
  top[left] = bot[left] - wall_proj_height[left] + 1;  

  wall_proj_height[right] = pp_distance * wall.owner_sector->height_walls / distance[right];
  if (wall_proj_height[right] == 0)
    wall_proj_height[right] = 1;    
        
  bot[right] = pp_distance * (player->height + cur_sector_p->height - wall.owner_sector->height) / distance[right] + vp_center;
  top[right] = bot[right] - wall_proj_height[right] + 1;       

  if (wall.type == Wall::PORTAL) {
    int cur_bot_height = wall.owner_sector->height;
    int next_bot_height = wall.next_sector->height;

    if (next_bot_height > cur_bot_height) {
      wall_proj_height_portal_bot[left] = pp_distance * (next_bot_height - cur_bot_height) / distance[left];
      if (wall_proj_height_portal_bot[left] == 0) {
	    wall_proj_height_portal_bot[left] = 1; 
      }
      wall_proj_height_portal_bot[right] = pp_distance * (next_bot_height - cur_bot_height) / distance[right];
      if (wall_proj_height_portal_bot[right] == 0) {
	wall_proj_height_portal_bot[right] = 1;  
      }
      
      bot_portal[left] = bot[left] - wall_proj_height_portal_bot[left] + 1;
      bot_portal[right] = bot[right] - wall_proj_height_portal_bot[right] + 1;
    } else {
      bot_portal[left] = bot[left];
      bot_portal[right] = bot[right];
    }
     
    int cur_top_height = cur_bot_height + wall.owner_sector->height_walls;
    int next_top_height = next_bot_height + wall.next_sector->height_walls;
    
    if (next_top_height < cur_top_height) {
      wall_proj_height_portal_top[left] = pp_distance * (cur_top_height - next_top_height) / distance[left];
      if (wall_proj_height_portal_top[left] == 0) {
	wall_proj_height_portal_top[left] = 1; 
      }     
      wall_proj_height_portal_top[right] = pp_distance * (cur_top_height - next_top_height) / distance[right];
      if (wall_proj_height_portal_top[right] == 0) {
	wall_proj_height_portal_top[right] = 1; 
      } 
      
      top_portal[left] = top[left] + wall_proj_height_portal_top[left] - 1;
      top_portal[right] = top[right] + wall_proj_height_portal_top[right] - 1;
    } else {
      top_portal[left] = top[left];
      top_portal[right] = top[right];      
    }
    
    wall.render_bot_portal_row[0] = bot_portal[left];
    wall.render_top_portal_row[0] = top_portal[left];
    wall.render_bot_portal_row[1] = bot_portal[right];
    wall.render_top_portal_row[1] = top_portal[right];

  }

  wall.render_col[0] = proj_col[left];  
  wall.render_top_row[0] = top[left];
  wall.render_bot_row[0] = bot[left];
 
  wall.render_col[1] = proj_col[right];
  wall.render_top_row[1] = top[right];
  wall.render_bot_row[1] = bot[right];
    
  wall.distance[0] = distance[left];
  wall.distance[1] = distance[right];
  
  wall.left = left_col;
  wall.right = right_col;

  return true;          
}
    
void XEngine::render_solid_wall(const Wall& wall, int left_col_clip, int right_col_clip, int *lower, int *upper) {
    
    unsigned int *screen_ptr;
    int left_col = wall.left;
    int right_col = wall.right;
	
    int span_height;
    int intensity;
    
    int w_color;
    int wall_color = wall.color;
    int ceiling_color = wall.owner_sector->ceiling_color;
    int floor_color = wall.owner_sector->floor_color;
    
    double wall_proj_height;
    double wall_vtex_off;
    double wall_vtex_inc;
    int wall_vtex_off_fxp;
    int wall_vtex_inc_fxp;  
    unsigned int *tex_ptr, *wall_tex;
    int tex_width, tex_height;
    int tex_col;
    
    double x1, y1;
    double x2, y2;
    double y4;
    double prod1, prod2;
    double fact1, fact2;
    double finc;
    double woff;
    
    double fytop, mtop;
    double fybot, mbot;
    int coldx, dytop, dybot;    
    int ytop, ybot;
    int col_left, col_right;
    int top_row_start, bot_row_start;
    int top_row_end, bot_row_end;
    double mdist;
    double dist;
        
    mdist = (wall.distance[right_col] - wall.distance[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col] + 1);
    
    if (wall.render_col[left_col] < left_col_clip) {
      mtop = static_cast<double>(wall.render_top_row[right_col] - wall.render_top_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      mbot = static_cast<double>(wall.render_bot_row[right_col] - wall.render_bot_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      top_row_start = wall.render_top_row[left_col] + mtop * (left_col_clip - wall.render_col[left_col]);
      bot_row_start = wall.render_bot_row[left_col] + mbot * (left_col_clip - wall.render_col[left_col]);
      dist = wall.distance[left_col] + mdist * (left_col_clip - wall.render_col[left_col]);
      col_left = left_col_clip;
    } else {
      top_row_start = wall.render_top_row[left_col];
      bot_row_start = wall.render_bot_row[left_col];
      col_left = wall.render_col[left_col]; 
      dist = wall.distance[left_col];
    }

    if (wall.render_col[right_col] > right_col_clip) {
      mtop = static_cast<double>(wall.render_top_row[right_col] - wall.render_top_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      mbot = static_cast<double>(wall.render_bot_row[right_col] - wall.render_bot_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      top_row_end = wall.render_top_row[right_col] - mtop * (wall.render_col[right_col] - right_col_clip);
      bot_row_end = wall.render_bot_row[right_col] - mbot * (wall.render_col[right_col] - right_col_clip);
      col_right = right_col_clip;
    } else {
      top_row_end = wall.render_top_row[right_col];
      bot_row_end = wall.render_bot_row[right_col];
      col_right = wall.render_col[right_col]; 
    }
        
    coldx = col_right - col_left + 1;
    dytop = top_row_end - top_row_start + 1;
    dybot = bot_row_end - bot_row_start + 1;
    
    mtop = static_cast<double>(dytop)/coldx;
    mbot = static_cast<double>(dybot)/coldx;    
    
    fytop = top_row_start;
    fybot = bot_row_start;    
  
    x1 = wall.tpoints[left_col].x;
    y1 = wall.tpoints[left_col].y;
    x2 = wall.tpoints[right_col].x;
    y2 = wall.tpoints[right_col].y;
    y4 = col_left - xsize / 2;
    prod1 = pp_distance * y1;
    prod2 = pp_distance * (y2 - y1);
    fact1 = y4 * x1 - prod1;
    finc = x2 - x1;
    fact2 = prod2 - y4 * finc;
    
    wall_tex = reinterpret_cast<unsigned int*>(wall.tex->data);
    tex_width = wall.tex->width;
    tex_height = wall.tex->height;
    
    for (int j=col_left; j<=col_right; ++j, dist += mdist, ++y4, fact1 += x1, fact2 -= finc) {
      
      ytop = static_cast<int>(fytop + 0.5);
      ybot = static_cast<int>(fybot + 0.5);      
      fytop += mtop;
      fybot += mbot;
      
      if (lower[j] < upper[j])
	continue;
	
      if (ytop > lower[j] || ybot < upper[j]) {
	screen_ptr = p_screen + upper[j] * xsize + j;
	span_height = lower[j] - upper[j] + 1;
	if (span_height > 0) {
	  if (ytop > lower[j])
	    w_color = wall.owner_sector->ceiling_color;
	  else
	    w_color = wall.owner_sector->floor_color;
	  while (span_height--) {
	      *screen_ptr = w_color;
	      screen_ptr += xsize;
	  }
	}
	continue;
      }
	
  
      wall_proj_height = ybot - ytop + 1;
      wall_vtex_off = wall.tex_voffset;
      wall_vtex_inc = wall.owner_sector->height_walls / wall_proj_height;
            
      if (ytop < upper[j]) {
 	  wall_vtex_off += (upper[j] - ytop) * wall_vtex_inc;
	  ytop = upper[j];
      }
	  
      if (ybot > lower[j]) {
	  ybot = lower[j];
      }
            
      /**********CEILING*******************/
      screen_ptr = p_screen + upper[j] * xsize + j;
      span_height = ytop - upper[j];

      while (span_height--) {
	*screen_ptr = ceiling_color;
	screen_ptr += xsize;
      }
      
      /***********WALL*******************/
/*     
      w_color = wall_color;
 
      intensity = (1 - dist / 1500) * NUM_LIGHT_LEVELS;
      if (intensity < 0)
	intensity = 0;
      scr_info->light_native(reinterpret_cast<unsigned char*>(&w_color), intensity);      
      dist += mdist;*/
      
      // formula: woff = (y4*x1 - pp_distance * y1) / (pp_distance * (y2 - y1) - y4*(x2 - x1))
      woff = fact1 / fact2;
      tex_col = static_cast<int>(woff * wall.length + wall.tex_hoffset) % tex_width;
      while (tex_col < 0)
	tex_col += tex_width;
   
      tex_ptr = wall_tex + tex_col * tex_width;
      wall_vtex_off_fxp = wall_vtex_off * FXP_MUL;
      wall_vtex_inc_fxp = wall_vtex_inc * FXP_MUL; 
  
      screen_ptr = p_screen + ytop * xsize + j;
      span_height = ybot - ytop + 1;
      
      while (span_height--) {
	*screen_ptr = *(tex_ptr + (wall_vtex_off_fxp>>FXP_SHIFT) % tex_height);
	wall_vtex_off_fxp += wall_vtex_inc_fxp;
	screen_ptr += xsize;
      }
        
      
      /***********FLOOR*******************/
      span_height = lower[j] - ybot;
      
      while (span_height--) {      
	*screen_ptr = floor_color;
	screen_ptr += xsize;
      }
      
    }
    
}

void XEngine::render_portal_wall(const Wall& wall, int left_col_clip, int right_col_clip, int *lower, int *upper) {

    unsigned int *screen_ptr;
    int left_col = wall.left;
    int right_col = wall.right;

    int span_height;
    int intensity;
    int w_color;
    int wall_color = wall.color;
    int ceiling_color = wall.owner_sector->ceiling_color;
    int floor_color = wall.owner_sector->floor_color;
      
    double fytop, mtop;
    double fybot, mbot;
    double fybot_portal, mbot_portal;
    double fytop_portal, mtop_portal;
    int coldx, dytop, dybot, dybot_portal, dytop_portal;    
    int ytop, ybot, ybot_portal, ytop_portal;
    int col_left, col_right;
    int top_row_start, bot_row_start;
    int top_row_end, bot_row_end;
    int bot_portal_row_start, top_portal_row_start;
    int bot_portal_row_end, top_portal_row_end;
    double mdist;
    double light_dist;
    
    mdist = (wall.distance[right_col] - wall.distance[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]); 
      
    if (wall.render_col[left_col] < left_col_clip) {
      mtop = static_cast<double>(wall.render_top_row[right_col] - wall.render_top_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      mbot = static_cast<double>(wall.render_bot_row[right_col] - wall.render_bot_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      mbot_portal = static_cast<double>(wall.render_bot_portal_row[right_col] - wall.render_bot_portal_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      mtop_portal = static_cast<double>(wall.render_top_portal_row[right_col] - wall.render_top_portal_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      top_row_start = wall.render_top_row[left_col] + mtop * (left_col_clip - wall.render_col[left_col]);
      bot_row_start = wall.render_bot_row[left_col] + mbot * (left_col_clip - wall.render_col[left_col]);
      bot_portal_row_start = wall.render_bot_portal_row[left_col] + mbot_portal * (left_col_clip - wall.render_col[left_col]);
      top_portal_row_start = wall.render_top_portal_row[left_col] + mtop_portal * (left_col_clip - wall.render_col[left_col]);
      light_dist = wall.distance[left_col] + mdist * (left_col_clip - wall.render_col[left_col]);
      col_left = left_col_clip;
    } else {
      top_row_start = wall.render_top_row[left_col];
      bot_row_start = wall.render_bot_row[left_col];
      bot_portal_row_start = wall.render_bot_portal_row[left_col];
      top_portal_row_start = wall.render_top_portal_row[left_col];
      col_left = wall.render_col[left_col]; 
      light_dist = wall.distance[left_col];
    }

    if (wall.render_col[right_col] > right_col_clip) {
      mtop = static_cast<double>(wall.render_top_row[right_col] - wall.render_top_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      mbot = static_cast<double>(wall.render_bot_row[right_col] - wall.render_bot_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      mbot_portal = static_cast<double>(wall.render_bot_portal_row[right_col] - wall.render_bot_portal_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      mtop_portal = static_cast<double>(wall.render_top_portal_row[right_col] - wall.render_top_portal_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      top_row_end = wall.render_top_row[right_col] - mtop * (wall.render_col[right_col] - right_col_clip);
      bot_row_end = wall.render_bot_row[right_col] - mbot * (wall.render_col[right_col] - right_col_clip);
      bot_portal_row_end = wall.render_bot_portal_row[right_col] - mbot_portal * (wall.render_col[right_col] - right_col_clip);
      top_portal_row_end = wall.render_top_portal_row[right_col] - mtop_portal * (wall.render_col[right_col] - right_col_clip);
      col_right = right_col_clip;
    } else {
      top_row_end = wall.render_top_row[right_col];
      bot_row_end = wall.render_bot_row[right_col];
      bot_portal_row_end = wall.render_bot_portal_row[right_col];
      top_portal_row_end = wall.render_top_portal_row[right_col];
      col_right = wall.render_col[right_col]; 
    }
        
    coldx = col_right - col_left + 1;
    dytop = top_row_end - top_row_start + 1;
    dybot = bot_row_end - bot_row_start + 1;
    dybot_portal = bot_portal_row_end - bot_portal_row_start + 1;
    dytop_portal = top_portal_row_end - top_portal_row_start + 1;
    
    mtop = static_cast<double>(dytop)/coldx;
    mbot = static_cast<double>(dybot)/coldx;    
    mbot_portal = static_cast<double>(dybot_portal)/coldx;
    mtop_portal = static_cast<double>(dytop_portal)/coldx;
    
    fytop = top_row_start;
    fybot = bot_row_start;
    fybot_portal = bot_portal_row_start;
    fytop_portal = top_portal_row_start;
    
    int *row_block_ptr = alloc_row_block();
    int *portal_lower = row_block_ptr;
    int *portal_upper = row_block_ptr + xsize;
    
    for (int j=col_left; j<=col_right; ++j) {
      
      ytop = static_cast<int>(fytop + 0.5);
      ybot = static_cast<int>(fybot + 0.5);   
      ybot_portal = static_cast<int>(fybot_portal + 0.5);
      ytop_portal = static_cast<int>(fytop_portal + 0.5);
      
      fytop += mtop;
      fybot += mbot;
      fybot_portal += mbot_portal;
      fytop_portal += mtop_portal;
            
      if (lower[j] < upper[j]) {
	portal_upper[j] = upper[j];
	portal_lower[j] = lower[j];
	continue;
      }
	
      if (ytop > lower[j] || ybot < upper[j]) {
	screen_ptr = p_screen + upper[j] * xsize + j;
	span_height = lower[j] - upper[j] + 1;
	if (span_height > 0) {
	  if (ytop > lower[j])
	    w_color = ceiling_color;
	  else
	    w_color = floor_color;
	  while (span_height--) {
	      *screen_ptr = w_color;
	      screen_ptr += xsize;
	  }
	}
	portal_upper[j] = upper[j];
	portal_lower[j] = lower[j];
	continue;
      }      
      
      if (ytop < upper[j])
	  ytop = upper[j];

      if (ybot > lower[j])
	ybot = lower[j];
      
      if (ytop_portal < ytop)
	ytop_portal = ytop;
      
      if (ytop_portal > ybot)
	ytop_portal = ybot;
      
      if (ybot_portal > ybot)
	ybot_portal = ybot;
      
      if (ybot_portal < ytop)
	ybot_portal = ytop;
      
      portal_upper[j] = ytop_portal;
      portal_lower[j] = ybot_portal;
            
      /*********CEILING&TOP****************/
      
      screen_ptr = p_screen + upper[j] * xsize + j;
      span_height = ytop - upper[j];
      
      while (span_height--) {
	*screen_ptr = ceiling_color;
	screen_ptr += xsize;
      }
      
      if (ytop_portal > ytop) {
	
	w_color = wall_color;
	intensity = (1 - light_dist / 2500) * NUM_LIGHT_LEVELS;
	if (intensity < 0)
	  intensity = 0;
	scr_info->light_native(reinterpret_cast<unsigned char*>(&w_color), intensity);
	
	screen_ptr = p_screen + ytop * xsize + j;
	span_height = ytop_portal - ytop;

	while (span_height--) {
	 *screen_ptr = w_color;
 	  screen_ptr += xsize;  
	}

      }
      
      

      /************BOT&FLOOR***************/
      if (ybot_portal < ybot) {
	
	w_color = wall_color;
	intensity = (1 - light_dist / 2500) * NUM_LIGHT_LEVELS;
	if (intensity < 0)
	  intensity = 0;
	scr_info->light_native(reinterpret_cast<unsigned char*>(&w_color), intensity);
	
	screen_ptr = p_screen + (1 + ybot_portal) * xsize + j; // (ybot_portal + 1)
 	
 	span_height = ybot - ybot_portal;
 	
 	while (span_height--) {
 	  *screen_ptr = w_color;
 	  screen_ptr += xsize;
 	}
 	
      }
      
      light_dist += mdist;

      screen_ptr = p_screen + (1 + ybot) * xsize + j;
      span_height = lower[j] - ybot;
      
      while (span_height--) {      
	*screen_ptr = floor_color;
	screen_ptr += xsize;
      }
           
    }

    render_sector(wall.next_sector, wall.owner_sector, col_left, col_right, portal_lower, portal_upper);

    free_row_block(row_block_ptr);
    
}


void XEngine::render_internal_wall(const Wall& wall, int left_col_clip, int right_col_clip, int *lower, int *upper) {

    int left_col = wall.left;
    int right_col = wall.right;
	
    int span_height;
    int intensity;
    int w_color;
    int wall_color = wall.color;
         
    double fytop, mtop;
    double fybot, mbot;
    int coldx, dytop, dybot;    
    int ytop, ybot;
    int col_left, col_right;
    int top_row_start, bot_row_start;
    int top_row_end, bot_row_end;
    double mdist;
    double light_dist;
    
    
    mdist = (wall.distance[right_col] - wall.distance[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]); 
    
    int col_diff = (wall.render_col[right_col] - wall.render_col[left_col]);
    int off_diff;
    
    if (wall.render_col[left_col] < left_col_clip) {
      off_diff = (left_col_clip - wall.render_col[left_col]);      
      mtop = static_cast<double>(wall.render_top_row[right_col] - wall.render_top_row[left_col]) / col_diff;
      mbot = static_cast<double>(wall.render_bot_row[right_col] - wall.render_bot_row[left_col]) / col_diff;
      top_row_start = wall.render_top_row[left_col] + mtop * off_diff;
      bot_row_start = wall.render_bot_row[left_col] + mbot * off_diff;
      light_dist = wall.distance[left_col] + mdist * off_diff;
      col_left = left_col_clip;
    } else {
      top_row_start = wall.render_top_row[left_col];
      bot_row_start = wall.render_bot_row[left_col];
      col_left = wall.render_col[left_col]; 
      light_dist = wall.distance[left_col];
    }

    if (wall.render_col[right_col] > right_col_clip) {
      off_diff = (wall.render_col[right_col] - right_col_clip);     
      mtop = static_cast<double>(wall.render_top_row[right_col] - wall.render_top_row[left_col]) / col_diff;
      mbot = static_cast<double>(wall.render_bot_row[right_col] - wall.render_bot_row[left_col]) / col_diff;
      top_row_end = wall.render_top_row[right_col] - mtop * off_diff;
      bot_row_end = wall.render_bot_row[right_col] - mbot * off_diff;
      col_right = right_col_clip;
    } else {
      top_row_end = wall.render_top_row[right_col];
      bot_row_end = wall.render_bot_row[right_col];
      col_right = wall.render_col[right_col]; 
    }
        
    coldx = col_right - col_left + 1;
    dytop = top_row_end - top_row_start + 1;
    dybot = bot_row_end - bot_row_start + 1;
    
    mtop = static_cast<double>(dytop)/coldx;
    mbot = static_cast<double>(dybot)/coldx;    
    
    fytop = top_row_start;
    fybot = bot_row_start;
    
    for (int j=col_left; j<=col_right; ++j) {
  
      ytop = static_cast<int>(fytop + 0.5);
      ybot = static_cast<int>(fybot + 0.5);      
      fytop += mtop;
      fybot += mbot;
      
      if (lower[j] < upper[j])
	continue;
	
      if (ytop > lower[j] || ybot < upper[j]) {
	continue;
      }
	
      if (ytop < upper[j])
	  ytop = upper[j];
	  
      if (ybot > lower[j])
	  ybot = lower[j];
                  
      /***********WALL*******************/
      w_color = wall_color;
      intensity = (1 - light_dist / 2500) * NUM_LIGHT_LEVELS;
      if (intensity < 0)
	intensity = 0;
      scr_info->light_native(reinterpret_cast<unsigned char*>(&w_color), intensity);    
      light_dist += mdist;
      
      span_height = ybot - ytop + 1;
      register unsigned int *screen_ptr = p_screen + ytop * xsize + j;
      
      while (span_height--) {
	*screen_ptr = w_color;
	screen_ptr += xsize;
      }
            
   }  
}

void XEngine::render_background() {

  unsigned int *screen_row_ptr = p_screen + vp_top * xsize + vp_left;
  unsigned int *screen_ptr = screen_row_ptr;
  int i;
  
  for (i=vp_top; i!=vp_center+1; ++i) {
    for (int j=vp_left; j<=vp_right; ++j) {
      *screen_ptr++ = 0xFFFFFF;
    }
    screen_row_ptr += xsize;
    screen_ptr = screen_row_ptr;
  }
  
  for (; i<=vp_bot; ++i) {
    for (int j=vp_left; j<=vp_right; ++j) {
      *screen_ptr++ = 0x838b83;
    }
    screen_row_ptr += xsize;
    screen_ptr = screen_row_ptr;    
  }
  
}