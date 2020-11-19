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

#define ANGLE_DISP 0.025 //0.055
#define POS_DISP 2.4

#define FXP_SHIFT 16
#define FXP_MUL (1<<FXP_SHIFT)

#define LIGHT_DISTANCE 1536

#define MAX_DISTANCE 5

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

double XEngine::deg_to_rad(int deg) {
  return deg * (M_PI / 180);
}

void XEngine::setup_data() {
      
    srand(time(0));
    
    vp_left = VIEWPORT_LEFT_OFF;
    vp_right = xsize - VIEWPORT_RIGHT_OFF - 1;
    vp_top = VIEWPORT_TOP_OFF;
    vp_bot = ysize - VIEWPORT_BOT_OFF - 1;
    vp_center = ysize / 2;
  
    pp_distance = xsize/2 / tan(deg_to_rad(FOV/2));
        
    setup_textures();   
    setup_screen_data();    
    setup_player();        
    setup_level_data();
      
}

void XEngine::setup_textures() {
    
  tex_loader->load("res/wall0.ppm");
  wall_tex[0] = new Texture(tex_loader->data, tex_loader->width, tex_loader->height, NUM_LIGHT_LEVELS, scr_info);
  
  tex_loader->load("res/wall1.ppm");
  wall_tex[1] = new Texture(tex_loader->data, tex_loader->width, tex_loader->height, NUM_LIGHT_LEVELS, scr_info);
  
  tex_loader->load("res/floor0.ppm");
  floor_tex[0] = new Texture(tex_loader->data, tex_loader->width, tex_loader->height, NUM_LIGHT_LEVELS, scr_info);
  
  tex_loader->load("res/floor1.ppm");
  floor_tex[1] = new Texture(tex_loader->data, tex_loader->width, tex_loader->height, NUM_LIGHT_LEVELS, scr_info);
  
  tex_loader->load("res/ceiling0.ppm");
  ceiling_tex[0] = new Texture(tex_loader->data, tex_loader->width, tex_loader->height, NUM_LIGHT_LEVELS, scr_info);
 
  tex_loader->load("res/ceiling1.ppm");
  ceiling_tex[1] = new Texture(tex_loader->data, tex_loader->width, tex_loader->height, MAX_LIGHT_LEVELS, scr_info);
  
  tex_loader->load("res/ceiling2.ppm");
  ceiling_tex[2] = new Texture(tex_loader->data, tex_loader->width, tex_loader->height, MAX_LIGHT_LEVELS, scr_info);
}

void XEngine::setup_player() {
  player = new Player();
    
  player->pos.x = 200;
  player->pos.y = 200;
    
  player->angle = 3 * M_PI / 2;
  player->height = PLAYER_HEIGHT;  
}

void XEngine::setup_screen_data() {
  
  /*********************************/
  col_data = new col_info[xsize];
    
  for (int col = vp_left; col <= vp_right; ++col) {
    col_data[col].ang = atan2(static_cast<double>((col - xsize/2)) , pp_distance);    
    col_data[col].cos_ang = cos(col_data[col].ang);
    col_data[col].sin_ang = sin(col_data[col].ang);
  }
  
  xview = vp_right - vp_left + 1;
  
  /*********************************/
  z_lower = new int[xsize];
  z_upper = new int[xsize];
  
  /*********************************/
  render_info.clip = new bool[xsize];
  render_info.screen_spans = new screen_rendering::wall_span[xsize];
}

void XEngine::setup_level_data() {
/*  
   vertex_set = new VertexSet();
   Wall *wall_list = 0;
   Wall *ptmp = 0;
   Sector *sector[20];
   sector[0] = new Sector(0, 0, 96, 10, floor_tex[0], ceiling_tex[0]); 
   wall_list = create_square_room(wall_tex[0], sector[0], Vector2d(0,0), 8192, wall_list);
   
   int num_walls = 1000;
   
   while (num_walls--) {
      int x1, y1, x2, y2;
      double length;
      do {
	x1 = rand() % 8192 - 4096;
	y1 = rand() % 8192 - 4096;
	x2 = rand() % 8192 - 4096;
	y2 = rand() % 8192 - 4096;
	length = sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1));
      } while (length < 50 || length > 350);
      Vector2d *p1 = vertex_set->insert(Vector2d(x1, y1));
      Vector2d *p2 = vertex_set->insert(Vector2d(x2, y2));
      wall_list = new Wall(num_walls, p1, p2, Wall::SOLID, sector[0], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   }*/


   vertex_set = new VertexSet();
   Wall *wall_list = 0;
     
   Sector *sector[20];
   sector[0] = new Sector(1, 20, 96, 1, floor_tex[1], ceiling_tex[1]); //1 
   sector[1] = new Sector(2, 0, 128, 1.5, floor_tex[0], ceiling_tex[2]); // 1
   sector[2] = new Sector(3, 32, 150, 1, floor_tex[0], ceiling_tex[1]); // 1.5
   sector[3] = new Sector(4, 42, 140, 1, floor_tex[1], ceiling_tex[0]); // 2
   sector[4] = new Sector(5, 52, 130, 1, floor_tex[1], ceiling_tex[0]); // 2
   sector[5] = new Sector(6, 62, 150, 1, floor_tex[0], ceiling_tex[1]); // 1
   sector[6] = new Sector(7, 72, 170, 1, floor_tex[0], ceiling_tex[1]); // 1
   
   sector[7] = new Sector(8, 30, 86, 1, floor_tex[0], ceiling_tex[0]); // 1 EXP
   sector[8] = new Sector(9, 10, 150, 1, floor_tex[0], ceiling_tex[1]); // 1 EXP
   
   sector[9] = new Sector(10, 72, 256, 0.9, floor_tex[0], ceiling_tex[1]); // 1
   sector[10] = new Sector(11, 82, 170, 1, floor_tex[0], ceiling_tex[1]); // 1
   
   
   Vector2d *v0 = vertex_set->insert(Vector2d(0,300));
   Vector2d *v1 = vertex_set->insert(Vector2d(300,0));
   Vector2d *v2 = vertex_set->insert(Vector2d(700,0));
   Vector2d *v3 = vertex_set->insert(Vector2d(700,500));
   Vector2d *v4 = vertex_set->insert(Vector2d(350,500)); 
   Vector2d *v5 = vertex_set->insert(Vector2d(350,1000));
   
   Vector2d *v6 = vertex_set->insert(Vector2d(700,1000));
   
   Vector2d *v7 = vertex_set->insert(Vector2d(700,1500));
   Vector2d *v8 = vertex_set->insert(Vector2d(350,1500));
   Vector2d *v9 = vertex_set->insert(Vector2d(0,1000));
   
   Vector2d *vA = vertex_set->insert(Vector2d(660,500));
   Vector2d *vB = vertex_set->insert(Vector2d(390,500));
   
   Vector2d *vC = vertex_set->insert(Vector2d(350,540));
   Vector2d *vD = vertex_set->insert(Vector2d(350,960));
   
   Vector2d *vE = vertex_set->insert(Vector2d(390,1000));
   Vector2d *vF = vertex_set->insert(Vector2d(660,1000));
   
   Vector2d *vI0 = vertex_set->insert(Vector2d(390,540));
   Vector2d *vI1 = vertex_set->insert(Vector2d(390,960));
   Vector2d *vI2 = vertex_set->insert(Vector2d(660,540));
   Vector2d *vI3 = vertex_set->insert(Vector2d(660,960));
   Vector2d *vI4 = vertex_set->insert(Vector2d(700,540));
   Vector2d *vI5 = vertex_set->insert(Vector2d(700,960));
   
   Vector2d *v10 = vertex_set->insert(Vector2d(500,1350));
   Vector2d *v11 = vertex_set->insert(Vector2d(700,1350));
   Vector2d *v12 = vertex_set->insert(Vector2d(500,1500));
   
   Vector2d *v713 = vertex_set->insert(Vector2d(700,2000));
   Vector2d *v13 = vertex_set->insert(Vector2d(750,2048));
   Vector2d *v14 = vertex_set->insert(Vector2d(500,2048));   
   
   Vector2d *v15 = vertex_set->insert(Vector2d(1024,2048));
   Vector2d *v16 = vertex_set->insert(Vector2d(1024,2256));
   Vector2d *v17 = vertex_set->insert(Vector2d(550,2256)); 
    
   Vector2d *v18 = vertex_set->insert(Vector2d(1220,2100)); 
   Vector2d *v19 = vertex_set->insert(Vector2d(1044,2256)); 
      
   Vector2d *v20 = vertex_set->insert(Vector2d(1220,2700)); 
   Vector2d *v21 = vertex_set->insert(Vector2d(1044,2700));
   
   Vector2d *v22 = vertex_set->insert(Vector2d(1500,2900)); 
   Vector2d *v23 = vertex_set->insert(Vector2d(1500,3100));
   
   Vector2d *v24 = vertex_set->insert(Vector2d(2000,2500)); //
   Vector2d *v25 = vertex_set->insert(Vector2d(2300,2500));
   
   Vector2d *v26 = vertex_set->insert(Vector2d(1600,2400)); 
   Vector2d *v27 = vertex_set->insert(Vector2d(1700,1900));
   Vector2d *v27A = vertex_set->insert(Vector2d(2000,1900)); 
   Vector2d *v28A = vertex_set->insert(Vector2d(2200,1900));
   Vector2d *v28 = vertex_set->insert(Vector2d(2400,1900)); 
   Vector2d *v29 = vertex_set->insert(Vector2d(2500,2400));
   
   Vector2d *v30 = vertex_set->insert(Vector2d(2000,1000)); 
   Vector2d *v31 = vertex_set->insert(Vector2d(2200,1000));
   
   wall_list = new Wall(0, v0, v1, Wall::SOLID, sector[0], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v1, v2, Wall::SOLID, sector[0], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v2, v3, Wall::SOLID, sector[0], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);

   wall_list = new Wall(1, v8, v9, Wall::SOLID, sector[0], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v9, v0, Wall::SOLID, sector[0], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);

   wall_list = new Wall(1, v3, vA, Wall::SOLID, sector[0], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, vA, vB, Wall::PORTAL, sector[0], sector[1], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, vB, v4, Wall::SOLID, sector[0], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   
   wall_list = new Wall(1, v4, vC, Wall::SOLID, sector[0], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, vC, vD, Wall::PORTAL, sector[0], sector[1], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, vD, v5, Wall::SOLID, sector[0], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   
   wall_list = new Wall(1, v5, vE, Wall::SOLID, sector[0], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, vE, vF, Wall::PORTAL, sector[0], sector[1], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, vF, v6, Wall::SOLID, sector[0], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   
   wall_list = new Wall(1, vI0, vB, Wall::SOLID, sector[1], 0, wall_tex[1], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, vC, vI0, Wall::SOLID, sector[1], 0, wall_tex[1], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, vI1, vD, Wall::SOLID, sector[1], 0, wall_tex[1], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, vE, vI1, Wall::SOLID, sector[1], 0, wall_tex[1], 0, 0, 0, 0, 0, wall_list);
   
   wall_list = new Wall(1, vA, vI2, Wall::SOLID, sector[1], 0, wall_tex[1], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, vI2, vI4, Wall::SOLID, sector[1], 0, wall_tex[1], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, vI4, vI5, Wall::SOLID, sector[1], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, vI5, vI3, Wall::SOLID, sector[1], 0, wall_tex[1], 0, 0, 0, 0, 0, wall_list);   
   wall_list = new Wall(1, vI3, vF, Wall::SOLID, sector[1], 0, wall_tex[1], 0, 0, 0, 0, 0, wall_list);   

   wall_list = create_column(wall_tex[0], sector[0], Vector2d(450, 1400), 40, wall_list);
   wall_list = create_column(wall_tex[0], sector[0], Vector2d(450, 1250), 40, wall_list);
   wall_list = create_column(wall_tex[0], sector[0], Vector2d(550, 1250), 40, wall_list);
   wall_list = create_column(wall_tex[0], sector[0], Vector2d(650, 1250), 40, wall_list);
   
   wall_list = new Wall(1, v10, v11, Wall::PORTAL, sector[2], sector[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, v12, v10, Wall::PORTAL, sector[2], sector[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, v6, v11, Wall::SOLID, sector[0], sector[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, v11, v7, Wall::SOLID, sector[2], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
//    wall_list = new Wall(1, v7, v12, Wall::SOLID, sector[2], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v12, v8, Wall::SOLID, sector[0], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(0, v7, v713, Wall::SOLID, sector[2], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(0, v713, v13, Wall::SOLID, sector[2], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
//    wall_list = new Wall(1, v13, v14, Wall::SOLID, sector[2], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v14, v12, Wall::SOLID, sector[2], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   
   wall_list = create_column(wall_tex[0], sector[2], Vector2d(510, 1560), 30, wall_list);
   wall_list = create_column(wall_tex[0], sector[2], Vector2d(510, 1660), 30, wall_list);
   wall_list = create_column(wall_tex[0], sector[2], Vector2d(510, 1760), 30, wall_list);
   wall_list = create_column(wall_tex[0], sector[2], Vector2d(510, 1860), 30, wall_list);
   wall_list = create_column(wall_tex[0], sector[2], Vector2d(510, 1960), 30, wall_list);
   
   wall_list = create_column(wall_tex[0], sector[2], Vector2d(690, 1460), 30, wall_list);
   wall_list = create_column(wall_tex[0], sector[2], Vector2d(690, 1560), 30, wall_list);
   wall_list = create_column(wall_tex[0], sector[2], Vector2d(690, 1660), 30, wall_list);
   wall_list = create_column(wall_tex[0], sector[2], Vector2d(690, 1760), 30, wall_list);   
   wall_list = create_column(wall_tex[0], sector[2], Vector2d(690, 1860), 30, wall_list);
   wall_list = create_column(wall_tex[0], sector[2], Vector2d(690, 1960), 30, wall_list);
   
   int l = 60/2;
   Vector2d pos(400, 250);
   Vector2d *v1C = vertex_set->insert(Vector2d(pos.x-l, pos.y-l));
   Vector2d *v2C = vertex_set->insert(Vector2d(pos.x+l, pos.y-l));
   Vector2d *v3C = vertex_set->insert(Vector2d(pos.x+l, pos.y+l));
   Vector2d *v4C = vertex_set->insert(Vector2d(pos.x-l, pos.y+l));
     
   wall_list = new Wall(100, v1C, v2C, Wall::PORTAL, sector[7], sector[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list); 
   wall_list = new Wall(101, v2C, v3C, Wall::PORTAL, sector[7], sector[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list); 
   wall_list = new Wall(102, v3C, v4C, Wall::PORTAL, sector[7], sector[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list); 
   wall_list = new Wall(103, v4C, v1C, Wall::PORTAL, sector[7], sector[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list); 
   
   l = 70/2;
   Vector2d pos1(600, 2150);
   Vector2d *v1D = vertex_set->insert(Vector2d(pos1.x-l, pos1.y-l));
   Vector2d *v2D = vertex_set->insert(Vector2d(pos1.x+l, pos1.y-l));
   Vector2d *v3D = vertex_set->insert(Vector2d(pos1.x+l, pos1.y+l));
   Vector2d *v4D = vertex_set->insert(Vector2d(pos1.x-l, pos1.y+l));
   
   wall_list = new Wall(100, v1D, v2D, Wall::PORTAL, sector[8], sector[2], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list); 
   wall_list = new Wall(101, v2D, v3D, Wall::PORTAL, sector[8], sector[2], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list); 
   wall_list = new Wall(102, v3D, v4D, Wall::PORTAL, sector[8], sector[2], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list); 
   wall_list = new Wall(103, v4D, v1D, Wall::PORTAL, sector[8], sector[2], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   
   
   
   wall_list = new Wall(1, v13, v15, Wall::SOLID, sector[2], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   
   
   wall_list = new Wall(1, v15, v16, Wall::PORTAL, sector[2], sector[3], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, v16, v17, Wall::SOLID, sector[2], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v17, v14, Wall::SOLID, sector[2], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   
   wall_list = new Wall(1, v15, v18, Wall::SOLID, sector[3], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v18, v19, Wall::PORTAL, sector[3], sector[4], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, v19, v16, Wall::SOLID, sector[3], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
      
   wall_list = new Wall(1, v18, v20, Wall::SOLID, sector[4], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v20, v21, Wall::PORTAL, sector[4], sector[5], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, v21, v19, Wall::SOLID, sector[4], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   
   wall_list = new Wall(1, v20, v22, Wall::SOLID, sector[5], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v22, v23, Wall::PORTAL, sector[5], sector[6], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, v23, v21, Wall::SOLID, sector[5], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);

   wall_list = new Wall(1, v22, v24, Wall::SOLID, sector[6], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v24, v25, Wall::PORTAL, sector[6], sector[9], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, v25, v23, Wall::SOLID, sector[6], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   
   wall_list = new Wall(1, v24, v26, Wall::SOLID, sector[9], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v26, v27, Wall::SOLID, sector[9], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v27, v27A, Wall::SOLID, sector[9], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v27A, v28A, Wall::PORTAL, sector[9], sector[10], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, v28A, v28, Wall::SOLID, sector[9], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v28, v29, Wall::SOLID, sector[9], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v29, v25, Wall::SOLID, sector[9], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
     
   wall_list = create_column(wall_tex[0], sector[9], Vector2d(1800, 2300), 50, wall_list);
   wall_list = create_column(wall_tex[0], sector[9], Vector2d(2200, 2300), 50, wall_list);
   wall_list = create_column(wall_tex[0], sector[9], Vector2d(1800, 2100), 50, wall_list);
   wall_list = create_column(wall_tex[0], sector[9], Vector2d(2200, 2100), 50, wall_list);
    
   wall_list = new Wall(1, v27A, v30, Wall::SOLID, sector[10], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v30, v31, Wall::SOLID, sector[10], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v31, v28A, Wall::SOLID, sector[10], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   

  
/* 
   cout << "vertices: " << vertex_set->n_vertices << endl;
   cout << "segments: " << vertex_set->n_segments << endl;
   cout << "max_chain_length: " << vertex_set->max_chain_length << endl;*/

 
      
   bsp_tree = new BspTree(wall_list, vertex_set);
   cout << bsp_tree->n_nodes << " " << bsp_tree->n_poly << endl;

}

void XEngine::render() {

  cos_ang_p = cos(-player->angle + 3.272e-4);
  sin_ang_p = sin(-player->angle + 3.272e-4);
  cur_height_set = false;
     
  init_tvlist();
  init_zBuffers();
  init_render();  
  compute_visible_walls(); 
  render_floor();
  render_ceiling();
  render_solid_walls();
  update_tvlist();
  
}

inline void XEngine::init_tvlist() { 
  t_vlist = 0;
}

inline void XEngine::update_tvlist() {  
  for (register Vector2d *p = t_vlist; p; p = p->next_t) {
    p->t = false;
  }
}

inline void XEngine::init_render() {
  render_info.stop = false;
  render_info.n_col = xview;
  memset(render_info.clip, 0, xsize * sizeof(bool));
  memset(render_info.screen_spans, 0xFF, xsize * sizeof(screen_rendering::wall_span));
  render_info.y_min = ysize+1;
  render_info.y_max = -1;
  render_info.x_min = xsize+1;
  render_info.x_max = -1;
  render_info.l_walls_list = 0;
  render_info.u_walls_list = 0;
  render_info.floor_planes_list = 0;
  render_info.ceiling_planes_list = 0;
}

inline void XEngine::init_zBuffers() {
  for (register int i=0; i!=xsize; ++i) {
    z_upper[i] = vp_top;
    z_lower[i] = vp_bot;
  }  
}

void XEngine::compute_visible_walls() {
//  if (brect_visible(bsp_tree->root)) {
   compute_visible_walls_rec(bsp_tree->root, player->pos);
//  }
}

void XEngine::compute_visible_walls_rec(BspTree::BspNode *pnode, const Vector2d& pos) {

    Wall *cwall;
    int prev_height;
    Wall::SideTypes cur_side, next_side;
    
    Plane::Position ppos = pnode->partition->evaluate_position(pos);
    switch (ppos) {
      case Plane::IN_FRONT: {
	if (pnode->front && brect_visible(pnode->front)) {
	  compute_visible_walls_rec(pnode->front, pos);
	  if (render_info.stop)
	    return;
	}
    
	cwall = pnode->walls;
	do {
	  
	  if (!visible_bwall(*cwall)) {
	    cwall = cwall->next;
	    continue;
	  }
	  
	  if (!cur_height_set) {	    
	    cur_height = player->height + cwall->sectors[Wall::FRONT]->floor_height;      
	    cur_height_set = true;
	  }
	  
	  prev_height = cur_height;
	  if (cwall->type == Wall::SOLID) {
	    cur_side = Wall::FRONT;
 	    cur_height -= cwall->sectors[Wall::FRONT]->floor_height; 
	  } else {
	    cur_side = Wall::FRONT;
	    next_side = Wall::REAR;
 	    cur_height -= cwall->sectors[Wall::FRONT]->floor_height;
	  }
	    
	  if (visible_wall(*cwall, cur_side, next_side)) {	        
	    	    
	    if (cwall->type == Wall::SOLID) {
	      process_solid_wall(*cwall);
	    } else {
	      process_portal_wall(*cwall, Wall::FRONT);
	    }
	    
	  }
	  
	  cur_height = prev_height;
	  cwall = cwall->next;
	} while (cwall);
		
	
 	if (!render_info.n_col) {
 	  render_info.stop = true;
 	  return;
	}
	
	if (pnode->back && brect_visible(pnode->back)) {
	  compute_visible_walls_rec(pnode->back, pos);
	  if (render_info.stop)
	    return;	  
	}
      } break;
      
      case Plane::IN_BACK: {
	if (pnode->back && brect_visible(pnode->back)) {
	  compute_visible_walls_rec(pnode->back, pos);
	  if (render_info.stop)
	    return;	  
	}
	
	cwall = pnode->walls;
	do {
	  
	  if (!visible_bwall(*cwall)) {
	    cwall = cwall->next;
	    continue;
	  }
	  
	  if (!cur_height_set) {	    
	    if (cwall->type == Wall::PORTAL)
	      cur_height = player->height + cwall->sectors[Wall::REAR]->floor_height;
	    else {
	      cur_height = player->height + cwall->sectors[Wall::FRONT]->floor_height;
	    }
	    cur_height_set = true;
	  }
	  
	  prev_height = cur_height;
	  if (cwall->type == Wall::SOLID) {
 	    cur_side = Wall::FRONT;
 	    cur_height -= cwall->sectors[Wall::FRONT]->floor_height;
	  } else {    
	    cur_side = Wall::REAR;
	    next_side = Wall::FRONT;
 	    cur_height -= cwall->sectors[Wall::REAR]->floor_height;
	  }
	    
	  if (visible_wall(*cwall, cur_side, next_side)) {
      
	    if (cwall->type == Wall::SOLID) {
	      process_solid_wall(*cwall);
	    } else {    
	      process_portal_wall(*cwall, Wall::REAR);
	    }
	    
	  }
	  
	  cur_height = prev_height;
	  cwall = cwall->next;
	} while (cwall);
			
	if (!render_info.n_col) {
 	  render_info.stop = true;
 	  return;
	}
	
	if (pnode->front && brect_visible(pnode->front)) {
	  compute_visible_walls_rec(pnode->front, pos);
	  if (render_info.stop)
	    return;	  
	}
      } break;
      
      case Plane::SPANNING: {
	if (pnode->back && brect_visible(pnode->back)) {
	  compute_visible_walls_rec(pnode->back, pos);
	  if (render_info.stop)
	    return;	  
	}
	
	if (pnode->front && brect_visible(pnode->front)) {
	  compute_visible_walls_rec(pnode->front, pos);
	  if (render_info.stop)
	    return;	  
	}
      } break;
    } 
    
    
}

// pnode != 0
bool XEngine::brect_visible(BspTree::BspNode *pnode) {
  return visible_bwall(*pnode->brect[0]) || visible_bwall(*pnode->brect[1]) ||
	 visible_bwall(*pnode->brect[2]) || visible_bwall(*pnode->brect[3]);
}

bool XEngine::visible_wall(Wall& wall, Wall::SideTypes cur_side, Wall::SideTypes next_side) {
  
  double dx[2], dy[2];
  double aligny[2];
  double distance[2], max_distance;
  double wall_proj_height[2];
  double wall_proj_height_portal_bot[2];
  double wall_proj_height_portal_top[2];
  double top[2], bot[2];
  double top_portal[2], bot_portal[2];
  double proj_col[2];
  int left, right;
  int left_col, right_col;
  double xdiff;
  double ydiff;
  double m_left, m_right;
  
  Vector2d *p0 = wall.points[0];
    
  if (!p0->t) {
    p0->dx = p0->x - player->pos.x;
    p0->dy = p0->y - player->pos.y;  
    p0->rx = p0->dx * cos_ang_p - p0->dy * sin_ang_p;
    if (p0->rx == 0.0f)
      p0->rx = 1.0f;
    p0->ry = p0->dx * sin_ang_p + p0->dy * cos_ang_p;
    p0->t = true;
    p0->next_t = t_vlist;
    t_vlist = p0;
  }

  distance[0] = p0->rx;
    
  Vector2d *p1 = wall.points[1];
  
  if (!p1->t) {
    p1->dx = p1->x - player->pos.x;
    p1->dy = p1->y - player->pos.y;  
    p1->rx = p1->dx * cos_ang_p - p1->dy * sin_ang_p;
    if (p1->rx == 0.0f)
      p1->rx = 1.0f;
    p1->ry = p1->dx * sin_ang_p + p1->dy * cos_ang_p;   
    p1->t = true;
    p1->next_t = t_vlist;
    t_vlist = p1;
  }

  distance[1] = p1->rx;
   
  if (distance[0] > distance[1])
    max_distance = distance[0];
  else 
    max_distance = distance[1];
    
  if (max_distance <= MAX_DISTANCE) {
    return false;
  }
  
  aligny[0] = p0->ry;  
  aligny[1] = p1->ry;
  
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
    xdiff = distance[right] - distance[left];
    ydiff = aligny[right] - aligny[left];
    m_left = ydiff / xdiff;
    aligny[left] = aligny[left] + m_left * (1-distance[left]);
    distance[left] = 1;
  } else if (distance[right] < 0) {
    xdiff = distance[right] - distance[left];
    ydiff = aligny[right] - aligny[left];
    m_right = ydiff / xdiff;
    aligny[right] = aligny[right] + m_right * (1-distance[right]);
    distance[right] = 1;    
  }
  
  proj_col[left] = static_cast<int>(aligny[left] * pp_distance / distance[left]) + xsize / 2;
  proj_col[right] = static_cast<int>(aligny[right] * pp_distance / distance[right]) + xsize / 2;
    
  if (proj_col[left] < proj_col[right]) {
    if (proj_col[right] <= vp_left || proj_col[left] >= vp_right) {
      return false;
    }
    left_col = 0;
    right_col = 1;
  } else {
    if (proj_col[left] <= vp_left || proj_col[right] >= vp_right) {
      return false;
    }
    left_col = 1;
    right_col = 0;   
  }  
  
  wall_proj_height[left] = pp_distance * wall.sectors[cur_side]->wall_height / distance[left];
  if (wall_proj_height[left] == 0)
    wall_proj_height[left] = 1;    
        
  bot[left] = pp_distance * cur_height / distance[left] + vp_center;
  top[left] = bot[left] - wall_proj_height[left] + 1;  
    
  wall_proj_height[right] = pp_distance * wall.sectors[cur_side]->wall_height / distance[right];
  if (wall_proj_height[right] == 0)
    wall_proj_height[right] = 1;    
        
  bot[right] = pp_distance * cur_height / distance[right] + vp_center;
  top[right] = bot[right] - wall_proj_height[right] + 1;       
  
  if (wall.type == Wall::PORTAL) {
    
    int cur_bot_height = wall.sectors[cur_side]->floor_height;
    int next_bot_height = wall.sectors[next_side]->floor_height;

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
     
    int cur_top_height = cur_bot_height + wall.sectors[cur_side]->wall_height;
    int next_top_height = next_bot_height + wall.sectors[next_side]->wall_height;
    
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
      
  wall.inv_distance[0] = 1.0/distance[left];
  wall.inv_distance[1] = 1.0/distance[right];
  
  wall.left = left_col;
  wall.right = right_col;
    
  return true;          
}
    
bool XEngine::visible_bwall(Wall& wall) {
  
  double dx[2], dy[2];
  double alignx[2], aligny[2];
  double distance[2], max_distance;
  double top[2], bot[2];
  int proj_col[2];
  int left, right;
  double xdiff;
  double ydiff;
  double m_left, m_right;
    
  Vector2d *p0 = wall.points[0];
    
  if (!p0->t) {
    p0->dx = p0->x - player->pos.x;
    p0->dy = p0->y - player->pos.y;  
    p0->rx = p0->dx * cos_ang_p - p0->dy * sin_ang_p;
    if (p0->rx == 0.0f)
      p0->rx = 1.0f;    
    p0->ry = p0->dx * sin_ang_p + p0->dy * cos_ang_p;   
    p0->t = true;
    p0->next_t = t_vlist;
    t_vlist = p0;
  }

  distance[0] = p0->rx;
    
  Vector2d *p1 = wall.points[1];
  
  if (!p1->t) {
    p1->dx = p1->x - player->pos.x;
    p1->dy = p1->y - player->pos.y;  
    p1->rx = p1->dx * cos_ang_p - p1->dy * sin_ang_p;
    if (p1->rx == 0.0f)
      p1->rx = 1.0f;    
    p1->ry = p1->dx * sin_ang_p + p1->dy * cos_ang_p;   
    p1->t = true;
    p1->next_t = t_vlist;
    t_vlist = p1;
  }

  distance[1] = p1->rx;
      
  if (distance[0] > distance[1])
    max_distance = distance[0];
  else 
    max_distance = distance[1];
    
  if (max_distance <= MAX_DISTANCE) {
    return false;
  }
  
  aligny[0] = p0->ry;
  aligny[1] = p1->ry;

  if (aligny[0] < aligny[1]) {
    left = 0;
    right = 1;
  } else {
    left = 1;
    right = 0;
  }
  
  if (distance[left] < 0) {
    xdiff = distance[right] - distance[left];
    ydiff = aligny[right] - aligny[left];
    m_left = ydiff / xdiff;
    aligny[left] = aligny[left] + m_left * (1-distance[left]);
    distance[left] = 1;
  } else if (distance[right] < 0) {
    xdiff = distance[right] - distance[left];
    ydiff = aligny[right] - aligny[left];
    m_right = ydiff / xdiff;
    aligny[right] = aligny[right] + m_right * (1-distance[right]);
    distance[right] = 1;    
  }
  
  proj_col[left] = static_cast<int>(aligny[left] * pp_distance / distance[left]) + xsize / 2;
  proj_col[right] = static_cast<int>(aligny[right] * pp_distance / distance[right]) + xsize / 2;
    
  if (proj_col[left] < proj_col[right]) {
    if (proj_col[right] <= vp_left || proj_col[left] >= vp_right) {
      return false;
    }
  } else {
    if (proj_col[left] <= vp_left || proj_col[right] >= vp_right) {
      return false;
    }
  }  
    
  return true;          
}

void XEngine::process_solid_wall(const Wall& wall) {
  
    unsigned int *screen_ptr;
    int left_col = wall.left;
    int right_col = wall.right;
	
    double wall_proj_height;
    double wall_vtex_off;
    double wall_vtex_inc;
    int wall_vtex_off_fxp;
    int wall_vtex_inc_fxp;  
    unsigned int *tex_ptr, *wall_tex_ptr;
    int tex_width, tex_height;
    int tex_col;
    int intensity;
    
    double x1, y1;
    double x2, y2;
    double y4;
    double prod1, prod2;
    double fact1, fact2;
    double finc;
    double woff;
    int span_height;
    
    double fytop, mtop;
    double fybot, mbot;
    int coldx, dytop, dybot;    
    int ytop, ybot;
    int col_left, col_right;
    int top_row_start, bot_row_start;
    int top_row_end, bot_row_end;
    double m_inv_dist;
    double inv_dist;
    
    m_inv_dist = (wall.inv_distance[right_col] - wall.inv_distance[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]); 
      
    if (wall.render_col[left_col] < vp_left) {
      mtop = static_cast<double>(wall.render_top_row[right_col] - wall.render_top_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      mbot = static_cast<double>(wall.render_bot_row[right_col] - wall.render_bot_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      top_row_start = wall.render_top_row[left_col] + mtop * (vp_left - wall.render_col[left_col]);
      bot_row_start = wall.render_bot_row[left_col] + mbot * (vp_left - wall.render_col[left_col]);
      inv_dist = wall.inv_distance[left_col] + m_inv_dist * (vp_left - wall.render_col[left_col]);
      col_left = vp_left;
    } else {
      top_row_start = wall.render_top_row[left_col];
      bot_row_start = wall.render_bot_row[left_col];
      col_left = wall.render_col[left_col]; 
      inv_dist = wall.inv_distance[left_col];
    }

    if (wall.render_col[right_col] > vp_right) {
      mtop = static_cast<double>(wall.render_top_row[right_col] - wall.render_top_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      mbot = static_cast<double>(wall.render_bot_row[right_col] - wall.render_bot_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      top_row_end = wall.render_top_row[right_col] - mtop * (wall.render_col[right_col] - vp_right);
      bot_row_end = wall.render_bot_row[right_col] - mbot * (wall.render_col[right_col] - vp_right);
      col_right = vp_right;
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
        
    x1 = wall.tpoints[0].x;
    y1 = wall.tpoints[0].y;
    x2 = wall.tpoints[1].x;
    y2 = wall.tpoints[1].y;
    y4 = col_left - xsize / 2;
    prod1 = pp_distance * y1;
    prod2 = pp_distance * (y2 - y1);
    fact1 = y4 * x1 - prod1;
    finc = x2 - x1;
    fact2 = prod2 - y4 * finc;
    
//      wall_tex_ptr = reinterpret_cast<unsigned int*>(wall.texture[Wall::FRONT]->tex_data);
    tex_width = wall.texture[Wall::FRONT]->width;
    tex_height = wall.texture[Wall::FRONT]->height;

    VisPlane *floor_plane, *ceiling_plane;
    bool new_floor_plane = true;
    bool new_ceiling_plane = true;
    screen_rendering::wall_span *wall_span_ptr = render_info.screen_spans + col_left;

    for (int j=col_left; j<=col_right; ++j, inv_dist += m_inv_dist, ++y4, fact1 += x1, fact2 -= finc, ++wall_span_ptr) {
      
      ytop = static_cast<int>(fytop);
      ybot = static_cast<int>(fybot);     
      fytop += mtop;
      fybot += mbot;
            
      if (render_info.clip[j]) {	
 	new_floor_plane = true;
	new_ceiling_plane = true;
	continue;
      }
      
      if (ytop > z_lower[j]) {	
	ytop = z_lower[j]+1;	
	render_info.clip[j] = 1;
	goto CeilingA;
      }
      
      if (ybot < z_upper[j]) {
	ybot = z_upper[j]-1;	
	render_info.clip[j] = 1;
	goto FloorA;
      }
      
      wall_proj_height = ybot - ytop + 1;
      wall_vtex_off = 0.0;
      wall_vtex_inc = wall.sectors[Wall::FRONT]->wall_height / wall_proj_height;
      
      if (ytop < z_upper[j]) {
	  wall_vtex_off += (z_upper[j] - ytop) * wall_vtex_inc;
	  ytop = z_upper[j];
      }
	      
      if (ybot > z_lower[j])
	  ybot = z_lower[j];
      
      render_info.clip[j] = 1;
      --render_info.n_col;
            
      /***********WALL*******************/
      
      intensity = (1 - 1/inv_dist / (wall.light_factor * wall.sectors[Wall::FRONT]->light_level) / LIGHT_DISTANCE) * MAX_LIGHT_LEVELS;
            
      if (intensity < 0)
	intensity = 0;
      if (intensity > MAX_LIGHT_LEVELS)
	intensity = MAX_LIGHT_LEVELS;
      
      woff = fact1 / fact2;
      wall_tex_ptr = reinterpret_cast<unsigned int*>(wall.texture[Wall::FRONT]->light_tex[intensity]);
      tex_ptr = wall_tex_ptr + (static_cast<int>(fabs(woff) * wall.length) % tex_width) * tex_width;
                 
      wall_vtex_off_fxp = wall_vtex_off * FXP_MUL;
      wall_vtex_inc_fxp = wall_vtex_inc * FXP_MUL; 
      
      screen_ptr = p_screen + ytop * xsize + j;
      span_height = ybot - ytop + 1;
      
      wall_span_ptr->ytop = ytop;
      wall_span_ptr->ybot = ybot;
      wall_span_ptr->tex_col_ptr = tex_ptr;
      wall_span_ptr->tex_off = wall_vtex_off_fxp;
      wall_span_ptr->tex_inc = wall_vtex_inc_fxp;
      wall_span_ptr->tex_height = tex_height;
      
      if (ytop < render_info.y_min)
	render_info.y_min = ytop;
      
      if (ybot > render_info.y_max)
	render_info.y_max = ybot;
      
      if (j < render_info.x_min)
	render_info.x_min = j;
      
      if (j > render_info.x_max)
	render_info.x_max = j;
/*            
      while (span_height--) {	
	*screen_ptr = *(tex_ptr + ((wall_vtex_off_fxp>>FXP_SHIFT) & 0x3f)); //% tex_height);
 	wall_vtex_off_fxp += wall_vtex_inc_fxp;	
 	screen_ptr += xsize;
      }*/
            
FloorA:
      if (z_lower[j] > ybot) {
	
	if (new_floor_plane) {
	  floor_plane = new VisPlane(xsize, wall.sectors[Wall::FRONT], render_info.floor_planes_list);
	  render_info.floor_planes_list = floor_plane;
	  new_floor_plane = false;
	} 
	
	int ymin = ybot + 1;
	int ymax = z_lower[j];
	floor_plane->spans[j].y1 = ymin;
	if (floor_plane->ymin > ymin)
	  floor_plane->ymin = ymin;
	floor_plane->spans[j].y2 = ymax;
	if (floor_plane->ymax < ymax)
	  floor_plane->ymax = ymax;
	if (floor_plane->xmin > j)
	  floor_plane->xmin = j;
	if (floor_plane->xmax < j)
	  floor_plane->xmax = j;
      } else {
	new_floor_plane = true;
      }
         
CeilingA:
      if (ytop > z_upper[j]) {
	
	if (new_ceiling_plane) {
	  ceiling_plane = new VisPlane(xsize, wall.sectors[Wall::FRONT], render_info.ceiling_planes_list);
	  render_info.ceiling_planes_list = ceiling_plane;
	  new_ceiling_plane = false;
	} 
	
	int ymin = z_upper[j];
	int ymax = ytop - 1;
	ceiling_plane->spans[j].y1 = ymin;
	if (ceiling_plane->ymin > ymin)
	  ceiling_plane->ymin = ymin;
	ceiling_plane->spans[j].y2 = ymax;
	if (ceiling_plane->ymax < ymax)
	  ceiling_plane->ymax = ymax;
	if (ceiling_plane->xmin > j)
	  ceiling_plane->xmin = j;
	if (ceiling_plane->xmax < j)
	  ceiling_plane->xmax = j;
      } else {
	new_ceiling_plane = true;
      }
      
    }
    
}

void XEngine::render_solid_walls() {

  unsigned int *screen_ptr;
 
  for (int i=render_info.y_min; i<=render_info.y_max; ++i) {
    screen_ptr = p_screen + i * xsize + render_info.x_min;
    screen_rendering::wall_span *span = render_info.screen_spans + render_info.x_min;
    screen_rendering::wall_span *limit = render_info.screen_spans + render_info.x_max + 1;
    while (span != limit) {       
      if (span->ytop <= i && span->ybot >= i) {
	  *screen_ptr = *(span->tex_col_ptr + ((span->tex_off>>FXP_SHIFT) & 0x7f)); //% span->tex_height);
 	  span->tex_off += span->tex_inc;
      }
      ++screen_ptr;
      ++span;
    }
  }
   
  screen_rendering::lu_wall *lu_wall_ptr = render_info.u_walls_list;
  while (lu_wall_ptr) {   
    for (int i=lu_wall_ptr->y_min; i<=lu_wall_ptr->y_max; ++i) {     
      screen_ptr = p_screen + i * xsize + lu_wall_ptr->x_min;
      screen_rendering::wall_span *span = lu_wall_ptr->luwall_spans + lu_wall_ptr->x_min;
      screen_rendering::wall_span *limit = lu_wall_ptr->luwall_spans + lu_wall_ptr->x_max + 1;
      while (span != limit) { 		
	if (span->ytop <= i && span->ybot >= i) {
	  *screen_ptr = *(span->tex_col_ptr + ((span->tex_off>>FXP_SHIFT) & 0x7f)); //% span->tex_height);
 	  span->tex_off += span->tex_inc;
	}
	++screen_ptr;
	++span;	
      }
    }
    screen_rendering::lu_wall *tmp = lu_wall_ptr;
    lu_wall_ptr = lu_wall_ptr->next;
    delete tmp;
  }
  
  lu_wall_ptr =  render_info.l_walls_list;
  while (lu_wall_ptr) {   
    for (int i=lu_wall_ptr->y_max; i>=lu_wall_ptr->y_min; --i) {     
      screen_ptr = p_screen + i * xsize + lu_wall_ptr->x_min;
      screen_rendering::wall_span *span = lu_wall_ptr->luwall_spans + lu_wall_ptr->x_min;
      screen_rendering::wall_span *limit = lu_wall_ptr->luwall_spans + lu_wall_ptr->x_max + 1;
      while (span != limit) { 		
	if (span->ytop <= i && span->ybot >= i) {
	  *screen_ptr = *(span->tex_col_ptr + ((span->tex_off>>FXP_SHIFT) & 0x7f)); //% span->tex_height);
 	  span->tex_off -= span->tex_inc;
	}
	++screen_ptr;
	++span;	
      }
    }
    screen_rendering::lu_wall *tmp = lu_wall_ptr;
    lu_wall_ptr = lu_wall_ptr->next;
    delete tmp;
  }
  
}

void XEngine::process_portal_wall(const Wall& wall, Wall::SideTypes side) {
  
    unsigned int *screen_ptr;
    int left_col = wall.left;
    int right_col = wall.right;
	
    double wall_proj_height;
    double wall_vtex_off_upper;
    double wall_vtex_inc;
    double wall_vtex_off_lower;
    int wall_vtex_off_fxp;
    int wall_vtex_inc_fxp;  
    unsigned int *tex_ptr;
    unsigned int *wall_tex_upper_ptr;
    unsigned int *wall_tex_lower_ptr;
    int tex_width, tex_height;
    int tex_col;
    int intensity;
    
    double x1, y1;
    double x2, y2;
    double y4;
    double prod1, prod2;
    double fact1, fact2;
    double finc;
    double woff;
    int span_height;
    
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
    double m_inv_dist;
    double inv_dist;
    
    m_inv_dist = (wall.inv_distance[right_col] - wall.inv_distance[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]); 
      
    if (wall.render_col[left_col] < vp_left) {
      mtop = static_cast<double>(wall.render_top_row[right_col] - wall.render_top_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      mbot = static_cast<double>(wall.render_bot_row[right_col] - wall.render_bot_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      mbot_portal = static_cast<double>(wall.render_bot_portal_row[right_col] - wall.render_bot_portal_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      mtop_portal = static_cast<double>(wall.render_top_portal_row[right_col] - wall.render_top_portal_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);     
      top_row_start = wall.render_top_row[left_col] + mtop * (vp_left - wall.render_col[left_col]);
      bot_row_start = wall.render_bot_row[left_col] + mbot * (vp_left - wall.render_col[left_col]);
      bot_portal_row_start = wall.render_bot_portal_row[left_col] + mbot_portal * (vp_left - wall.render_col[left_col]);
      top_portal_row_start = wall.render_top_portal_row[left_col] + mtop_portal * (vp_left - wall.render_col[left_col]);
      inv_dist = wall.inv_distance[left_col] + m_inv_dist * (vp_left - wall.render_col[left_col]);
      col_left = vp_left;
    } else {
      top_row_start = wall.render_top_row[left_col];
      bot_row_start = wall.render_bot_row[left_col];
      bot_portal_row_start = wall.render_bot_portal_row[left_col];
      top_portal_row_start = wall.render_top_portal_row[left_col];
      col_left = wall.render_col[left_col]; 
      inv_dist = wall.inv_distance[left_col];
    }

    if (wall.render_col[right_col] > vp_right) {
      mtop = static_cast<double>(wall.render_top_row[right_col] - wall.render_top_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      mbot = static_cast<double>(wall.render_bot_row[right_col] - wall.render_bot_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      mbot_portal = static_cast<double>(wall.render_bot_portal_row[right_col] - wall.render_bot_portal_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      mtop_portal = static_cast<double>(wall.render_top_portal_row[right_col] - wall.render_top_portal_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);      
      top_row_end = wall.render_top_row[right_col] - mtop * (wall.render_col[right_col] - vp_right);
      bot_row_end = wall.render_bot_row[right_col] - mbot * (wall.render_col[right_col] - vp_right);
      bot_portal_row_end = wall.render_bot_portal_row[right_col] - mbot_portal * (wall.render_col[right_col] - vp_right);
      top_portal_row_end = wall.render_top_portal_row[right_col] - mtop_portal * (wall.render_col[right_col] - vp_right);
      col_right = vp_right;
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
    
    x1 = wall.tpoints[0].x;
    y1 = wall.tpoints[0].y;
    x2 = wall.tpoints[1].x;
    y2 = wall.tpoints[1].y;
    y4 = col_left - xsize / 2;
    prod1 = pp_distance * y1;
    prod2 = pp_distance * (y2 - y1);
    fact1 = y4 * x1 - prod1;
    finc = x2 - x1;
    fact2 = prod2 - y4 * finc;
    
    tex_width = wall.texture_lu[side][Wall::UPPER]->width;
    tex_height = wall.texture_lu[side][Wall::UPPER]->height;

    VisPlane *floor_plane, *ceiling_plane;
    bool new_floor_plane = true;
    bool new_ceiling_plane = true;
    bool upd;
    bool new_lu_wall_upper = true;
    bool new_lu_wall_lower = true;
    
    for (int j=col_left; j<=col_right; ++j, inv_dist += m_inv_dist, ++y4, fact1 += x1, fact2 -= finc) {
      
      ytop = static_cast<int>(fytop);
      ybot = static_cast<int>(fybot); 
      ybot_portal = static_cast<int>(fybot_portal);
      ytop_portal = static_cast<int>(fytop_portal);
      fytop += mtop;
      fybot += mbot;
      fybot_portal += mbot_portal;
      fytop_portal += mtop_portal;
//   cout << z_upper[j] << " " << ytop << " " << ytop_portal << " " << ybot_portal << " " << ybot << " " << z_lower[j] << endl;
      if (render_info.clip[j]) {
	new_floor_plane = true;
	new_ceiling_plane = true;
	new_lu_wall_upper = true;
	new_lu_wall_lower = true;
	continue;
      }
      
      if (ytop > z_lower[j]) {
	ytop = z_lower[j]+1;	
	render_info.clip[j] = 1;
	upd = false;
	goto CeilingA;
      } else
	upd = true;
      
      if (ybot < z_upper[j]) {
	ybot = z_upper[j]-1;	
	render_info.clip[j] = 1;
	upd = false;
	goto FloorB;
      } else
	upd = true;
            
      wall_proj_height = ybot - ytop + 1;
      wall_vtex_off_upper = 0.0;
      wall_vtex_inc = wall.sectors[side]->wall_height / wall_proj_height;
      wall_vtex_off_lower = wall_vtex_inc * (wall_proj_height - 1);
      
      if (ytop < z_upper[j]) {
	wall_vtex_off_upper += (z_upper[j] - ytop) * wall_vtex_inc;
	ytop = z_upper[j];
      }
      	      
      if (ybot > z_lower[j]) {
	wall_vtex_off_lower -= (ybot - z_lower[j]) * wall_vtex_inc;
	ybot = z_lower[j];
      }
            
      if (ytop_portal < ytop) {
	ytop_portal = ytop;
      }
      
      if (ytop_portal > ybot) {
	ytop_portal = ybot;
      }
      
      if (ybot_portal > ybot) {
	ybot_portal = ybot;
      }
     
      if (ybot_portal < ytop) {
   	ybot_portal = ytop;
      }
         
      intensity = (1 - 1/inv_dist / (wall.light_factor * wall.sectors[side]->light_level) / LIGHT_DISTANCE) * MAX_LIGHT_LEVELS;     
      if (intensity < 0)
	intensity = 0;
      if (intensity > MAX_LIGHT_LEVELS)
	intensity = MAX_LIGHT_LEVELS;
      
      woff = fact1 / fact2;
      tex_col = static_cast<int>(fabs(woff) * wall.length) % tex_width;
      
      
      /*********CEILING&TOP****************/

      if (ytop_portal > ytop) {
/*	
	wall_tex_upper_ptr = reinterpret_cast<unsigned int*>(wall.texture_lu[side][Wall::UPPER]->light_tex[intensity]);
	tex_ptr = wall_tex_upper_ptr + tex_col * tex_width;
	wall_vtex_off_fxp = wall_vtex_off_upper * FXP_MUL;
	wall_vtex_inc_fxp = wall_vtex_inc * FXP_MUL; 
	screen_ptr = p_screen + ytop * xsize + j;
	span_height = ++ytop_portal - ytop;	
	while (span_height--) {	
	  *screen_ptr = *(tex_ptr + ((wall_vtex_off_fxp>>FXP_SHIFT) % tex_height)); // & 0x3f
	  wall_vtex_off_fxp += wall_vtex_inc_fxp;	
	  screen_ptr += xsize;
	}*/
	if (new_lu_wall_upper)
	  render_info.u_walls_list = new screen_rendering::lu_wall(xsize, render_info.u_walls_list);
	
	new_lu_wall_upper = false;
	render_info.u_walls_list->luwall_spans[j].ytop = ytop;
	render_info.u_walls_list->luwall_spans[j].ybot = ytop_portal++;
	render_info.u_walls_list->luwall_spans[j].tex_col_ptr = reinterpret_cast<unsigned int*>(wall.texture_lu[side][Wall::UPPER]->light_tex[intensity]) + tex_col * tex_width; 
	render_info.u_walls_list->luwall_spans[j].tex_off = wall_vtex_off_upper * FXP_MUL;
	render_info.u_walls_list->luwall_spans[j].tex_inc = wall_vtex_inc * FXP_MUL;
	render_info.u_walls_list->luwall_spans[j].tex_height = wall.texture_lu[side][Wall::UPPER]->height;
	
	if (ytop < render_info.u_walls_list->y_min)
	  render_info.u_walls_list->y_min = ytop;
	
	if (ybot > render_info.u_walls_list->y_max)
	  render_info.u_walls_list->y_max = ybot;
	
	if (j < render_info.u_walls_list->x_min)
	  render_info.u_walls_list->x_min = j;
	
	if (j > render_info.u_walls_list->x_max)
	  render_info.u_walls_list->x_max = j;
      } else
	new_lu_wall_upper = true;
      
      /************BOT&FLOOR***************/
      if (ybot_portal < ybot) {
/*	
	wall_tex_lower_ptr = reinterpret_cast<unsigned int*>(wall.texture_lu[side][Wall::LOWER]->light_tex[intensity]);
	tex_ptr = wall_tex_lower_ptr + tex_col * tex_width;	
	wall_vtex_off_fxp = wall_vtex_off_lower * FXP_MUL;
	wall_vtex_inc_fxp = wall_vtex_inc * FXP_MUL; 
	screen_ptr = p_screen + ybot * xsize + j;
 	span_height = ybot - --ybot_portal;	
 	while (span_height--) {	  
	  *screen_ptr = *(tex_ptr + ((wall_vtex_off_fxp>>FXP_SHIFT) % tex_height));
	  wall_vtex_off_fxp -= wall_vtex_inc_fxp;
	  screen_ptr -= xsize;
 	}*/	
	
	if (new_lu_wall_lower)
	  render_info.l_walls_list = new screen_rendering::lu_wall(xsize, render_info.l_walls_list);
	
	new_lu_wall_lower = false;
	render_info.l_walls_list->luwall_spans[j].ytop = ybot_portal--;
	render_info.l_walls_list->luwall_spans[j].ybot = ybot;
	render_info.l_walls_list->luwall_spans[j].tex_col_ptr = reinterpret_cast<unsigned int*>(wall.texture_lu[side][Wall::LOWER]->light_tex[intensity]) + tex_col * tex_width;
	render_info.l_walls_list->luwall_spans[j].tex_off = wall_vtex_off_lower * FXP_MUL;
	render_info.l_walls_list->luwall_spans[j].tex_inc = wall_vtex_inc * FXP_MUL;
	render_info.l_walls_list->luwall_spans[j].tex_height = wall.texture_lu[side][Wall::LOWER]->height;
	
	if (ytop < render_info.l_walls_list->y_min)
	  render_info.l_walls_list->y_min = ytop;
	
	if (ybot > render_info.l_walls_list->y_max)
	  render_info.l_walls_list->y_max = ybot;
	
	if (j < render_info.l_walls_list->x_min)
	  render_info.l_walls_list->x_min = j;
	
	if (j > render_info.l_walls_list->x_max)
	  render_info.l_walls_list->x_max = j;
      } else
	new_lu_wall_lower = true;
      
FloorB:
      if (z_lower[j] > ybot) {	
	if (new_floor_plane) {
	  floor_plane = new VisPlane(xsize, wall.sectors[side], render_info.floor_planes_list);
	  render_info.floor_planes_list = floor_plane;
	  new_floor_plane = false;
	}	
	int ymin = ybot + 1;
	int ymax = z_lower[j];
	floor_plane->spans[j].y1 = ymin;
	if (floor_plane->ymin > ymin)
	  floor_plane->ymin = ymin;
	floor_plane->spans[j].y2 = ymax;
	if (floor_plane->ymax < ymax)
	  floor_plane->ymax = ymax;
	if (floor_plane->xmin > j)
	  floor_plane->xmin = j;
	if (floor_plane->xmax < j)
	  floor_plane->xmax = j;
      } else {
	new_floor_plane = true;
      }
      
CeilingA:
      if (ytop > z_upper[j]) {
	
	if (new_ceiling_plane) {
	  ceiling_plane = new VisPlane(xsize, wall.sectors[side], render_info.ceiling_planes_list);
	  render_info.ceiling_planes_list = ceiling_plane;
	  new_ceiling_plane = false;
	} 
	
	int ymin = z_upper[j];
	int ymax = ytop - 1;
	ceiling_plane->spans[j].y1 = ymin;
	if (ceiling_plane->ymin > ymin)
	  ceiling_plane->ymin = ymin;
	ceiling_plane->spans[j].y2 = ymax;
	if (ceiling_plane->ymax < ymax)
	  ceiling_plane->ymax = ymax;
	if (ceiling_plane->xmin > j)
	  ceiling_plane->xmin = j;
	if (ceiling_plane->xmax < j)
	  ceiling_plane->xmax = j;
      } else {
	new_ceiling_plane = true;
      }
      
      if (upd) {
	z_upper[j] = ytop_portal;
	z_lower[j] = ybot_portal;
	if (z_upper[j] >= z_lower[j]) {
	  render_info.clip[j] = 1;
	  --render_info.n_col;
	}
      }
            
    }
    
}

void XEngine::render_ceiling() {

  VisPlane *vis_plane_ptr = render_info.ceiling_planes_list;
  
  while (vis_plane_ptr) {
    int x1, x2;
    
    x1 = vis_plane_ptr->xmin;
    while (vis_plane_ptr->spans[x1].y2 != vis_plane_ptr->ymax)
      ++x1;
    
    x2 = x1;
    while (x2 < vis_plane_ptr->xmax && vis_plane_ptr->spans[x2].y2 == vis_plane_ptr->ymax)
      ++x2;
    
    if (vis_plane_ptr->spans[x2].y1 != vis_plane_ptr->ymax)
      --x2;
    
    for (;;) {

      unsigned int *screen_ptr = p_screen + vis_plane_ptr->ymax * xsize + x1;
      unsigned int *limit = p_screen + vis_plane_ptr->ymax * xsize + x2 + 1;
      int cur_row = vis_plane_ptr->ymax;
      
            
      double left_column_angle = col_data[vp_left].ang;
      double cos_left_column_angle = col_data[vp_left].cos_ang;
      double sin_left_column_angle = col_data[vp_left].sin_ang;
      double cos_angle_p = cos_ang_p;
      double sin_angle_p = -sin_ang_p;
      double cos_prod = cos_angle_p * cos_left_column_angle;
      double sin_prod = sin_angle_p * sin_left_column_angle;
      double sin_cos = sin_angle_p * cos_left_column_angle;
      double cos_sin = cos_angle_p * sin_left_column_angle;
      double inv_width = 1.0f / (vp_right - vp_left + 1);
      int height_p = vis_plane_ptr->owner->ceiling_height - cur_height;
      double distance = static_cast<float>(height_p) /(vp_center - cur_row) * pp_distance / cos_left_column_angle;
      double xl = player->pos.x + distance * (cos_prod - sin_prod);
      double yl = player->pos.y + distance * (sin_cos + cos_sin);
      double xr = player->pos.x + distance * (cos_prod + sin_prod);
      double yr = player->pos.y + distance * (sin_cos - cos_sin); 
      double dx = (xr - xl) * inv_width;
      double dy = (yr - yl) * inv_width;
      double xsrc = xl + dx * (x1 - vp_left);
      double ysrc = yl + dy * (x1 - vp_left);
      
      int intensity =  (1 - distance / vis_plane_ptr->owner->light_level / LIGHT_DISTANCE) * MAX_LIGHT_LEVELS;
      if (intensity < 0)
	intensity = 0;
      if (intensity > MAX_LIGHT_LEVELS)
	intensity = MAX_LIGHT_LEVELS;
      Texture *ceiling_tex = vis_plane_ptr->owner->ceiling_tex;
      unsigned int *tex_ptr = reinterpret_cast<unsigned int *>(ceiling_tex->light_tex[intensity]);
//       int tex_width = ceiling_tex->width;
//       int tex_height = ceiling_tex->height;
      
      int fxl = (int)(xsrc * FXP_MUL);
      int fdx = (int)(dx * FXP_MUL);
      int fyl = (int)(ysrc * FXP_MUL);
      int fdy = (int)(dy * FXP_MUL);
      
      
      while (screen_ptr != limit) {
	  *screen_ptr++ = *(tex_ptr + (((fyl>>FXP_SHIFT) & 0x3f)*64) + ((fxl>>FXP_SHIFT) & 0x3f));
	  fxl += fdx;
	  fyl += fdy;
      }
      
      --vis_plane_ptr->ymax;
      
      if (vis_plane_ptr->ymax < vis_plane_ptr->ymin)
	break;
      
      if (vis_plane_ptr->spans[x1].y1 <= vis_plane_ptr->ymax && vis_plane_ptr->spans[x1].y2 >= vis_plane_ptr->ymax) {
	while (x1 != vis_plane_ptr->xmin) {
	  --x1;
	  if (vis_plane_ptr->spans[x1].y1 > vis_plane_ptr->ymax || vis_plane_ptr->spans[x1].y2 < vis_plane_ptr->ymax) {
	    ++x1;
	    break;
	  }
	}
      } else {
	int oldx1 = x1;
	do {
	  ++x1;
	  if (x1 > vis_plane_ptr->xmax)
	    x1 = vis_plane_ptr->xmin;
	  if (x1 == oldx1) {
	    if (--vis_plane_ptr->ymax < vis_plane_ptr->ymin)
	      break;
	  }
	} while (vis_plane_ptr->spans[x1].y1 > vis_plane_ptr->ymax || vis_plane_ptr->spans[x1].y2 < vis_plane_ptr->ymax);	
      }
      
      if (vis_plane_ptr->ymax < vis_plane_ptr->ymin)
	break;
      
      if (vis_plane_ptr->spans[x2].y1 <= vis_plane_ptr->ymax && vis_plane_ptr->spans[x2].y2 >= vis_plane_ptr->ymax) {
	while (x2 != vis_plane_ptr->xmax) {
	  ++x2;
	  if (vis_plane_ptr->spans[x2].y1 > vis_plane_ptr->ymax || vis_plane_ptr->spans[x2].y2 < vis_plane_ptr->ymax) {
	    --x2;
	    break;
	  }
	}
      } else {
	do {
	  --x2;
	  if (x2 < vis_plane_ptr->xmin)
	    x2 = vis_plane_ptr->xmax;
	} while (vis_plane_ptr->spans[x2].y1 > vis_plane_ptr->ymax || vis_plane_ptr->spans[x2].y2 < vis_plane_ptr->ymax);
      }
    }
    
    VisPlane *tmp = vis_plane_ptr;
    vis_plane_ptr = vis_plane_ptr->next;
    delete tmp;
  }
  
}

void XEngine::render_floor() {
/*
  VisPlane *vis_plane_ptr = render_info.floor_planes_list;
  
  while (vis_plane_ptr) {
    
    int x1, y1, x2, y2, x3, y3, x4, y4;
    
    x1 = vis_plane_ptr->xmin;
    y1 = vis_plane_ptr->ymin; //vis_plane_ptr->spans[x1].y1;
    x2 = vis_plane_ptr->xmax;
    y2 = vis_plane_ptr->ymin; //vis_plane_ptr->spans[x2].y1;
    x3 = x2;
    y3 = vis_plane_ptr->ymax; //vis_plane_ptr->spans[x2].y2;
    x4 = x1;
    y4 = vis_plane_ptr->ymax; //vis_plane_ptr->spans[x1].y2;    
    
    int floor_color = 0x000000;
    for (int j=x1; j<=x2; ++j) {
      unsigned int *screen_ptr;
      
      for (int i = vis_plane_ptr->spans[j].y1; i <= vis_plane_ptr->spans[j].y2; ++i) {
	screen_ptr = p_screen + i * xsize + j;
 	*screen_ptr = floor_color;
      }  
    }
   
    rasterizer->draw_line(x1,y1, x2, y2, 0xFF0000);
    rasterizer->draw_line(x2,y2, x3, y3, 0xFF0000);
    rasterizer->draw_line(x3,y3, x4, y4, 0xFF0000);
    rasterizer->draw_line(x4,y4, x1, y1, 0xFF0000);
    
    VisPlane *tmp = vis_plane_ptr;
    vis_plane_ptr = vis_plane_ptr->next;
    delete tmp;
  }*/
  

  VisPlane *vis_plane_ptr = render_info.floor_planes_list;
  
  while (vis_plane_ptr) {
    int x1, x2;
    
    x1 = vis_plane_ptr->xmin;
    while (vis_plane_ptr->spans[x1].y1 != vis_plane_ptr->ymin)
      ++x1;
    
    x2 = x1;
    while (x2 < vis_plane_ptr->xmax && vis_plane_ptr->spans[x2].y1 == vis_plane_ptr->ymin)
      ++x2;
    
    if (vis_plane_ptr->spans[x2].y1 != vis_plane_ptr->ymin)
      --x2;
    
    for (;;) {
      
      int cur_row = vis_plane_ptr->ymin;
      unsigned int *screen_ptr = p_screen + cur_row * xsize + x1;
      unsigned int *limit = p_screen + cur_row * xsize + x2 + 1;

      double left_column_angle = col_data[vp_left].ang;
      double cos_left_column_angle = col_data[vp_left].cos_ang;
      double sin_left_column_angle = col_data[vp_left].sin_ang;
      double cos_angle_p = cos_ang_p;
      double sin_angle_p = -sin_ang_p;
      double cos_prod = cos_angle_p * cos_left_column_angle;
      double sin_prod = sin_angle_p * sin_left_column_angle;
      double sin_cos = sin_angle_p * cos_left_column_angle;
      double cos_sin = cos_angle_p * sin_left_column_angle;
      double inv_width = 1.0f / (vp_right - vp_left + 1);
      int height_p = cur_height - vis_plane_ptr->owner->floor_height;
      double distance = static_cast<float>(height_p) /(cur_row - vp_center) * pp_distance / cos_left_column_angle;
      double xl = player->pos.x + distance * (cos_prod - sin_prod);
      double yl = player->pos.y + distance * (sin_cos + cos_sin);
      double xr = player->pos.x + distance * (cos_prod + sin_prod);
      double yr = player->pos.y + distance * (sin_cos - cos_sin); 
      double dx = (xr - xl) * inv_width;
      double dy = (yr - yl) * inv_width;
      double xsrc = xl + dx * (x1 - vp_left);
      double ysrc = yl + dy * (x1 - vp_left);
    
      int intensity =  (1 - distance / vis_plane_ptr->owner->light_level / LIGHT_DISTANCE) * MAX_LIGHT_LEVELS;
      if (intensity < 0)
	intensity = 0;
      if (intensity > MAX_LIGHT_LEVELS)
	intensity = MAX_LIGHT_LEVELS;
      Texture *floor_tex = vis_plane_ptr->owner->floor_tex;
      unsigned int *tex_ptr = reinterpret_cast<unsigned int *>(floor_tex->light_tex[intensity]);
//       int tex_width = floor_tex->width;
//       int tex_height = floor_tex->height;
      
      
      int fxl = (int)(xsrc * FXP_MUL);
      int fdx = (int)(dx * FXP_MUL);
      int fyl = (int)(ysrc * FXP_MUL);
      int fdy = (int)(dy * FXP_MUL);

      // test iterno prima di scrivere un pixel non più necessario:
      // if (span_ptr->y1 <= cur_row && span_ptr->y2 >= cur_row) { }
      while (screen_ptr != limit) {
 	  *screen_ptr++ = *(tex_ptr + (((fyl>>FXP_SHIFT) & 0x3f)*64) + ((fxl>>FXP_SHIFT) & 0x3f));
	  fxl += fdx;
	  fyl += fdy;
      }
            
      ++vis_plane_ptr->ymin;
      
      if (vis_plane_ptr->ymin > vis_plane_ptr->ymax)
	break;
      
      if (vis_plane_ptr->spans[x1].y1 <= vis_plane_ptr->ymin && vis_plane_ptr->spans[x1].y2 >= vis_plane_ptr->ymin) {
	while (x1 != vis_plane_ptr->xmin) {
	  --x1;
	  if (vis_plane_ptr->spans[x1].y1 > vis_plane_ptr->ymin || vis_plane_ptr->spans[x1].y2 < vis_plane_ptr->ymin) {
	    ++x1;
	    break;
	  }
	}
      } else {
	int oldx1 = x1;
	do {
	  ++x1;
	  if (x1 > vis_plane_ptr->xmax)
	    x1 = vis_plane_ptr->xmin;
	  if (x1 == oldx1) {
	    if (++vis_plane_ptr->ymin > vis_plane_ptr->ymax)
	      break;
	  }
	} while (vis_plane_ptr->spans[x1].y1 > vis_plane_ptr->ymin || vis_plane_ptr->spans[x1].y2 < vis_plane_ptr->ymin);	
      }
      
      if (vis_plane_ptr->ymin > vis_plane_ptr->ymax)
	break;
      
      if (vis_plane_ptr->spans[x2].y1 <= vis_plane_ptr->ymin && vis_plane_ptr->spans[x2].y2 >= vis_plane_ptr->ymin) {
	while (x2 != vis_plane_ptr->xmax) {
	  ++x2;
	  if (vis_plane_ptr->spans[x2].y1 > vis_plane_ptr->ymin || vis_plane_ptr->spans[x2].y2 < vis_plane_ptr->ymin) {
	    --x2;
	    break;
	  }
	}
      } else {
	do {
	  --x2;
	  if (x2 < vis_plane_ptr->xmin)
	    x2 = vis_plane_ptr->xmax;
	} while (vis_plane_ptr->spans[x2].y1 > vis_plane_ptr->ymin || vis_plane_ptr->spans[x2].y2 < vis_plane_ptr->ymin);
      }
    }
          
    VisPlane *tmp = vis_plane_ptr;
    vis_plane_ptr = vis_plane_ptr->next;
    delete tmp;
  }
  
}

Wall *XEngine::create_square_room(Texture *tex, Sector *sector, const Vector2d& pos, int edge_length, Wall *wall_list)  {
  
  int l = edge_length/2;
  Vector2d *v1 = vertex_set->insert(Vector2d(pos.x-l, pos.y-l));
  Vector2d *v2 = vertex_set->insert(Vector2d(pos.x+l, pos.y-l));
  Vector2d *v3 = vertex_set->insert(Vector2d(pos.x+l, pos.y+l));
  Vector2d *v4 = vertex_set->insert(Vector2d(pos.x-l, pos.y+l));
  
  Wall *wall1 = new Wall(1, v1, v2, Wall::SOLID, sector, 0, tex, 0, 0, 0, 0, 0);
  Wall *wall2 = new Wall(1, v2, v3, Wall::SOLID, sector, 0, tex, 0, 0, 0, 0, 0);
  Wall *wall3 = new Wall(1, v3, v4, Wall::SOLID, sector, 0, tex, 0, 0, 0, 0, 0);
  Wall *wall4 = new Wall(1, v4, v1, Wall::SOLID, sector, 0, tex, 0, 0, 0, 0, 0);
  
  wall1->next = wall2;
  wall2->next = wall3;
  wall3->next = wall4;
  wall4->next = wall_list;
  
  return wall1;
}

Wall *XEngine::create_column(Texture *tex, Sector *sector, const Vector2d& pos, int edge_length, Wall *wall_list) {
  
  int l = edge_length/2;
  Vector2d *v1 = vertex_set->insert(Vector2d(pos.x-l, pos.y-l));
  Vector2d *v2 = vertex_set->insert(Vector2d(pos.x+l, pos.y-l));
  Vector2d *v3 = vertex_set->insert(Vector2d(pos.x+l, pos.y+l));
  Vector2d *v4 = vertex_set->insert(Vector2d(pos.x-l, pos.y+l));
  
  wall_list = new Wall(1, v1, v2, Wall::SOLID, sector, 0, tex, 0, 0, 0, 0, 0, wall_list);
  wall_list = new Wall(1, v2, v3, Wall::SOLID, sector, 0, tex, 0, 0, 0, 0, 0, wall_list);
  wall_list = new Wall(1, v3, v4, Wall::SOLID, sector, 0, tex, 0, 0, 0, 0, 0, wall_list);
  wall_list = new Wall(1, v4, v1, Wall::SOLID, sector, 0, tex, 0, 0, 0, 0, 0, wall_list);
    
  return wall_list;
}
  
void XEngine::process_input() {
  if (key_pressed.moving_forward)
    update_position(+POS_DISP);
  
  if (key_pressed.moving_backward)
    update_position(-POS_DISP);
  
  if (key_pressed.turning_left)
    update_angle(-ANGLE_DISP);
    
  if (key_pressed.turning_right) 
    update_angle(ANGLE_DISP);
}

void XEngine::update_position(double d) {
 
    player->pos.x += d * cos(player->angle);
    player->pos.y += d * sin(player->angle);
}
  
void XEngine::update_angle(double d) {
  player->angle += d;
  if (player->angle >= 2 * M_PI)
    player->angle -= 2 * M_PI;
  if (player->angle < 0)
    player->angle += 2 * M_PI;
}
  
void XEngine::update_height(int d) {
 player->height += d; 
 // rivedi i seguenti controlli
 if (player->height < 10)
   player->height = 10;
 if (player->height > 128)
   player->height = 128;
}

void XEngine::update_vp(int d) {
  vp_center += d;
  if (vp_center < vp_top)
    vp_center = vp_top;
  if (vp_center > vp_bot)
    vp_center = vp_bot;
}
