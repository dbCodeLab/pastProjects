#include "XEngine.h"
#include <X11/Xlib.h>
#include <X11/Intrinsic.h>

#include <unistd.h>
#include <fstream>
#include "XTextureLoaderPPM.h"

XEngine::XEngine(int xsize, int ysize, XScreenRgbInfo *engine_scr_info) {
  scr_info = engine_scr_info;
  rasterizer = new XRasterizer(xsize, ysize, engine_scr_info->p_screenbuf, engine_scr_info->bytes_per_pixel);    
  render_info = new ScreenRender(engine_scr_info->p_screenbuf, xsize, ysize);
  tex_loader = new XTextureLoaderPPM(scr_info);
  setup_data();
}

void XEngine::setup_data() {     
    setup_textures();   
    setup_lists();   
    setup_player();        
    setup_level_data();      
}

void XEngine::setup_textures() {
    
  tex_loader->load("wall0.ppm");
  wall_tex[0] = new Texture(tex_loader->data, tex_loader->width, tex_loader->height, NUM_LIGHT_LEVELS, scr_info);
  
  tex_loader->load("floor0.ppm");
  wall_tex[1] = new Texture(tex_loader->data, tex_loader->width, tex_loader->height, NUM_LIGHT_LEVELS, scr_info);
  
  tex_loader->load("floor0.ppm");
  floor_tex[0] = new Texture(tex_loader->data, tex_loader->width, tex_loader->height, NUM_LIGHT_LEVELS, scr_info);
  
  tex_loader->load("floor1.ppm");
  floor_tex[1] = new Texture(tex_loader->data, tex_loader->width, tex_loader->height, NUM_LIGHT_LEVELS, scr_info);
  
  tex_loader->load("ceiling0.ppm");
  ceiling_tex[0] = new Texture(tex_loader->data, tex_loader->width, tex_loader->height, NUM_LIGHT_LEVELS, scr_info);
 
  tex_loader->load("ceiling1.ppm");
  ceiling_tex[1] = new Texture(tex_loader->data, tex_loader->width, tex_loader->height, MAX_LIGHT_LEVELS, scr_info);
  
  tex_loader->load("ceiling2.ppm");
  ceiling_tex[2] = new Texture(tex_loader->data, tex_loader->width, tex_loader->height, MAX_LIGHT_LEVELS, scr_info);
}

void XEngine::setup_player() {
  player = new Player();
}

void XEngine::setup_lists() {
  init();
}

void XEngine::setup_level_data() {

   vertex_set = new VertexSet();
   Wall *wall_list = 0;
     
   num_sectors = 25;
   sector[0] = new Sector(0, 20, 110, 1, floor_tex[1], ceiling_tex[1]); //1 
   sector[1] = new Sector(1, 0, 128, 1, floor_tex[0], ceiling_tex[2]); // 1
   sector[2] = new Sector(2, 32, 150, 1, floor_tex[0], ceiling_tex[1]); // 1.5
   sector[3] = new Sector(3, 42, 140, 1, floor_tex[1], ceiling_tex[0]); // 2
   sector[4] = new Sector(4, 52, 130, 1, floor_tex[1], ceiling_tex[0]); // 2
   sector[5] = new Sector(5, 62, 150, 1, floor_tex[0], ceiling_tex[1]); // 1
   sector[6] = new Sector(6, 72, 170, 1, floor_tex[1], ceiling_tex[1]); // 1
   
   sector[7] = new Sector(7, 30, 100, 1, floor_tex[0], ceiling_tex[0]); // 1 EXP
   sector[8] = new Sector(8, 10, 150, 1, floor_tex[1], ceiling_tex[1]); // 1 EXP
   
   sector[9] = new Sector(9, 72, 256, 1.2, floor_tex[1], ceiling_tex[1]); // 1
   sector[10] = new Sector(10, 72, 170, 1, floor_tex[0], ceiling_tex[1]); // 1
   sector[11] = new Sector(11, 20, 96, 1, floor_tex[1], ceiling_tex[1]); // 1
   sector[12] = new Sector(12, 40, 170, 1, floor_tex[0], ceiling_tex[1]); // 1
   //z2
   sector[13] = new Sector(13, 82, 170, 1, floor_tex[1], ceiling_tex[0]);
   sector[14] = new Sector(14, 92, 256, 1, floor_tex[0], ceiling_tex[1]);
   sector[15] = new Sector(15, 110, 210, 1, floor_tex[1], ceiling_tex[0]);
   sector[16] = new Sector(16, 110, 190, 1, floor_tex[0], ceiling_tex[1]);
   
   sector[17] = new Sector(17, 120, 230, 1, floor_tex[0], ceiling_tex[0]);
   sector[18] = new Sector(18, 130, 230, 1, floor_tex[0], ceiling_tex[0]);
   sector[19] = new Sector(19, 140, 230, 1, floor_tex[0], ceiling_tex[0]);
   sector[20] = new Sector(20, 110, 210, 1, floor_tex[1], ceiling_tex[1], Sector::ELEVATOR, 160); // area

   sector[21] = new Sector(21, 140, 140, 1, floor_tex[0], ceiling_tex[1], Sector::DOOR);
   sector[22] = new Sector(22, 140, 220, 1, floor_tex[0], ceiling_tex[1]);
   
   sector[23] = new Sector(23, 140, 140, 1, floor_tex[0], ceiling_tex[1], Sector::DOOR);
   sector[24] = new Sector(24, 140, 220, 1, floor_tex[0], ceiling_tex[1]);
   
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
   Vector2d *vI41 = vertex_set->insert(Vector2d(700,540+110));
   Vector2d *vI51 = vertex_set->insert(Vector2d(700,960-110));
   
   Vector2d *vI42 = vertex_set->insert(Vector2d(1000,540+110));
   Vector2d *vI52 = vertex_set->insert(Vector2d(1000,960-110));
   
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
   
   Vector2d *vSec10a = vertex_set->insert(Vector2d(2040,1850));
   Vector2d *vSec10b = vertex_set->insert(Vector2d(2160,1850));
   
   Vector2d *v28I = vertex_set->insert(Vector2d(2425,2050)); 
   Vector2d *v29I = vertex_set->insert(Vector2d(2475,2250));
   
   Vector2d *v30 = vertex_set->insert(Vector2d(2000,1300)); 
   Vector2d *v31 = vertex_set->insert(Vector2d(2200,1300));
   
   // z2
   Vector2d *v32 = vertex_set->insert(Vector2d(3200,2050)); 
   Vector2d *v33 = vertex_set->insert(Vector2d(3200,2250));
 
   Vector2d *v34 = vertex_set->insert(Vector2d(3200,1500));
   Vector2d *v35 = vertex_set->insert(Vector2d(3600,1500)); 
   Vector2d *v36 = vertex_set->insert(Vector2d(3600,2700));
   Vector2d *v37 = vertex_set->insert(Vector2d(3200,2700));
   
   Vector2d *v35A = vertex_set->insert(Vector2d(3750,1500));
   Vector2d *v36A = vertex_set->insert(Vector2d(3750,2700));
      
   Vector2d *v38 = vertex_set->insert(Vector2d(3750,3000));
   Vector2d *v39 = vertex_set->insert(Vector2d(3600,3050));
   Vector2d *v40 = vertex_set->insert(Vector2d(3600,3150));
   Vector2d *v41 = vertex_set->insert(Vector2d(5000,3000));
   Vector2d *v42 = vertex_set->insert(Vector2d(5000,3150));

   Vector2d *v43 = vertex_set->insert(Vector2d(5100,3000));
   Vector2d *v44 = vertex_set->insert(Vector2d(5100,3150));
   
   Vector2d *v41N = vertex_set->insert(Vector2d(5000,2980));
   Vector2d *v43N = vertex_set->insert(Vector2d(5100,2980));
 
   Vector2d *v41N2 = vertex_set->insert(Vector2d(5000,2960));
   Vector2d *v43N2 = vertex_set->insert(Vector2d(5100,2960));
   
   Vector2d *v41N3 = vertex_set->insert(Vector2d(5000,2000));
   Vector2d *v43N3 = vertex_set->insert(Vector2d(5100,2000));
   
   Vector2d *vAr1 = vertex_set->insert(Vector2d(3300,2400));
   Vector2d *vAr2 = vertex_set->insert(Vector2d(3500,2400));
   Vector2d *vAr3 = vertex_set->insert(Vector2d(3500,2600));
   Vector2d *vAr4 = vertex_set->insert(Vector2d(3300,2600));
   
   Vector2d *v41N4 = vertex_set->insert(Vector2d(5000,1950));
   Vector2d *v43N4 = vertex_set->insert(Vector2d(5100,1950));

   Vector2d *v41N5 = vertex_set->insert(Vector2d(5000,1500));
   Vector2d *v43N5 = vertex_set->insert(Vector2d(5100,1500));
   
   Vector2d *v41N6 = vertex_set->insert(Vector2d(5000,1450));
   Vector2d *v43N6 = vertex_set->insert(Vector2d(5100,1450));
   
   Vector2d *v41N7 = vertex_set->insert(Vector2d(5000,1000));
   Vector2d *v43N7 = vertex_set->insert(Vector2d(5100,1000));
   
   wall_list = new Wall(1, v0, v1, Wall::SOLID, sector[0], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
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
   
   wall_list = new Wall(1, vI0, vB, Wall::SOLID, sector[1], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, vC, vI0, Wall::SOLID, sector[1], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, vI1, vD, Wall::SOLID, sector[1], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, vE, vI1, Wall::SOLID, sector[1], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   
   wall_list = new Wall(1, vA, vI2, Wall::SOLID, sector[1], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, vI2, vI4, Wall::SOLID, sector[1], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);


   wall_list = new Wall(1, vI4, vI41, Wall::SOLID, sector[1], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, vI41, vI51, Wall::PORTAL, sector[1], sector[11], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, vI51, vI5, Wall::SOLID, sector[1], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   
   wall_list = create_column(wall_tex[0], sector[11], Vector2d(850, 700), 30, wall_list);
   wall_list = create_column(wall_tex[0], sector[11], Vector2d(850, 800), 30, wall_list);
   
   wall_list = new Wall(1, vI41, vI42, Wall::SOLID, sector[11], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, vI42, vI52, Wall::PORTAL, sector[11], sector[12], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, vI52, vI51, Wall::SOLID, sector[11], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
 
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

   wall_list = new Wall(1, v12, v8, Wall::SOLID, sector[0], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(0, v7, v713, Wall::SOLID, sector[2], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(0, v713, v13, Wall::SOLID, sector[2], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);

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

   wall_list = new Wall(1, v28, v28I, Wall::SOLID, sector[9], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(101, v28I, v29I, Wall::PORTAL, sector[9], sector[13], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, v29I, v29, Wall::SOLID, sector[9], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   
   wall_list = new Wall(1, v29, v25, Wall::SOLID, sector[9], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
     
   wall_list = create_column(wall_tex[0], sector[9], Vector2d(1800, 2300), 50, wall_list);
   wall_list = create_column(wall_tex[0], sector[9], Vector2d(2200, 2300), 50, wall_list);
   wall_list = create_column(wall_tex[0], sector[9], Vector2d(1800, 2100), 50, wall_list);
   wall_list = create_column(wall_tex[0], sector[9], Vector2d(2200, 2100), 50, wall_list);
    

   wall_list = new Wall(1, v30, v31, Wall::PORTAL, sector[10], sector[12], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);

   wall_list = new Wall(1, v27A, vSec10a, Wall::SOLID, sector[10], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   wall_list = new Wall(1, vSec10a, v30, Wall::SOLID, sector[10], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   wall_list = new Wall(1, v31, vSec10b, Wall::SOLID, sector[10], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   wall_list = new Wall(1, vSec10b, v28A, Wall::SOLID, sector[10], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   
   wall_list = new Wall(1, vI42, v31, Wall::SOLID, sector[12], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v30, vI52, Wall::SOLID, sector[12], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);  
   
   wall_list = create_column(wall_tex[0], sector[2], Vector2d(850, 2100), 30, wall_list);
   wall_list = create_column(wall_tex[0], sector[2], Vector2d(850, 2200), 30, wall_list);
   
   wall_list = create_column(wall_tex[0], sector[4], Vector2d(1125, 2450), 30, wall_list);
   wall_list = create_column(wall_tex[0], sector[4], Vector2d(1125, 2600), 30, wall_list);
   
   // z2
   wall_list = new Wall(1, v28I, v32, Wall::SOLID, sector[13], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(100, v32, v33, Wall::PORTAL, sector[13], sector[14], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, v33, v29I, Wall::SOLID, sector[13], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
 
   wall_list = new Wall(1, v32, v34, Wall::SOLID, sector[14], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v34, v35, Wall::SOLID, sector[14], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v35, v36, Wall::PORTAL, sector[14], sector[15], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, v36, v37, Wall::SOLID, sector[14], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v37, v33, Wall::SOLID, sector[14], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   
   wall_list = new Wall(1, v35, v35A, Wall::SOLID, sector[15], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v35A, v36A, Wall::SOLID, sector[15], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v36A, v36, Wall::PORTAL, sector[15], sector[16], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   
   wall_list = new Wall(1, v36A, v38, Wall::SOLID, sector[16], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   wall_list = new Wall(1, v38, v41, Wall::SOLID, sector[16], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   

   wall_list = new Wall(1, v42, v40, Wall::SOLID, sector[16], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   wall_list = new Wall(1, v40, v39, Wall::SOLID, sector[16], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   wall_list = new Wall(1, v39, v36, Wall::SOLID, sector[16], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   
   wall_list = create_column(wall_tex[0], sector[16], Vector2d(4000, 3010), 20, wall_list);
   wall_list = create_column(wall_tex[0], sector[16], Vector2d(4150, 3010), 20, wall_list);
   wall_list = create_column(wall_tex[0], sector[16], Vector2d(4300, 3010), 20, wall_list);
   wall_list = create_column(wall_tex[0], sector[16], Vector2d(4450, 3010), 20, wall_list);
  
   
   wall_list = create_column(wall_tex[0], sector[16], Vector2d(4000, 3140), 20, wall_list);
   wall_list = create_column(wall_tex[0], sector[16], Vector2d(4150, 3140), 20, wall_list);
   wall_list = create_column(wall_tex[0], sector[16], Vector2d(4300, 3140), 20, wall_list);
   wall_list = create_column(wall_tex[0], sector[16], Vector2d(4450, 3140), 20, wall_list);

   
   wall_list = new Wall(1, v41, v43, Wall::PORTAL, sector[16], sector[17], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, v43, v44, Wall::SOLID, sector[16], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   wall_list = new Wall(1, v44, v42, Wall::SOLID, sector[16], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
  
   wall_list = new Wall(1, v41, v41N, Wall::SOLID, sector[17], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   wall_list = new Wall(1, v41N, v43N, Wall::PORTAL, sector[17], sector[18], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, v43N, v43, Wall::SOLID, sector[17], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   
   
   wall_list = new Wall(1, v41N, v41N2, Wall::SOLID, sector[18], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   wall_list = new Wall(1, v41N2, v43N2, Wall::PORTAL, sector[18], sector[19], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, v43N2, v43N, Wall::SOLID, sector[18], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
  
   wall_list = new Wall(1, v41N2, v41N3, Wall::SOLID, sector[19], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
//    wall_list = new Wall(1, v41N3, v43N3, Wall::SOLID, sector[19], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   wall_list = new Wall(1, v43N3, v43N2, Wall::SOLID, sector[19], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);  
  
   wall_list = create_column(wall_tex[0], sector[14], Vector2d(3300, 2300), 50, wall_list);
   wall_list = create_column(wall_tex[0], sector[14], Vector2d(3500, 2300), 50, wall_list);
   
   wall_list = create_column(wall_tex[0], sector[14], Vector2d(3300, 1900), 50, wall_list);
   wall_list = create_column(wall_tex[0], sector[14], Vector2d(3500, 1900), 50, wall_list);
   wall_list = create_column(wall_tex[0], sector[14], Vector2d(3300, 1700), 50, wall_list);
   wall_list = create_column(wall_tex[0], sector[14], Vector2d(3500, 1700), 50, wall_list);   
  
   wall_list = new Wall(1, vAr1, vAr2, Wall::PORTAL, sector[20], sector[14], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, vAr2, vAr3, Wall::PORTAL, sector[20], sector[14], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, vAr3, vAr4, Wall::PORTAL, sector[20], sector[14], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   wall_list = new Wall(1, vAr4, vAr1, Wall::PORTAL, sector[20], sector[14], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_tex[0], wall_list);
   
   wall_list = new Wall(1, v41N3, v41N4, Wall::DOOR_SIDE, sector[21], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   wall_list = new Wall(1, v41N4, v43N4, Wall::DOOR, sector[21], sector[22], wall_tex[1], wall_tex[1], wall_tex[1], wall_tex[1], wall_tex[1], wall_tex[1], wall_list);
   wall_list = new Wall(1, v43N4, v43N3, Wall::DOOR_SIDE, sector[21], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   wall_list = new Wall(1, v43N3, v41N3, Wall::DOOR, sector[21], sector[19], wall_tex[1], wall_tex[1], wall_tex[1], wall_tex[1], wall_tex[1], wall_tex[1], wall_list);
   
   wall_list = new Wall(1, v41N4, v41N5, Wall::SOLID, sector[22], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   wall_list = new Wall(1, v43N5, v43N4, Wall::SOLID, sector[22], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   

   wall_list = new Wall(1, v41N5, v41N6, Wall::DOOR_SIDE, sector[23], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   wall_list = new Wall(1, v41N6, v43N6, Wall::DOOR, sector[23], sector[24], wall_tex[1], wall_tex[1], wall_tex[1], wall_tex[1], wall_tex[1], wall_tex[1], wall_list);
   wall_list = new Wall(1, v43N6, v43N5, Wall::DOOR_SIDE, sector[23], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   wall_list = new Wall(1, v43N5, v41N5, Wall::DOOR, sector[23], sector[22], wall_tex[1], wall_tex[1], wall_tex[1], wall_tex[1], wall_tex[1], wall_tex[1], wall_list);
   
   wall_list = new Wall(1, v41N6, v41N7, Wall::SOLID, sector[24], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);
   wall_list = new Wall(1, v41N7, v43N7, Wall::SOLID, sector[24], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   
   wall_list = new Wall(1, v43N7, v43N6, Wall::SOLID, sector[24], 0, wall_tex[0], 0, 0, 0, 0, 0, wall_list);   

   init_sectors_data();
   init_doors_data();
   bsp_tree = new BspTree(wall_list, vertex_set);

}


void XEngine::init_elevators_data() {
  elevs_list = active_elevs_list = 0;
}

void XEngine::init_sectors_data() {
  
  for (int i=0; i!=num_sectors; ++i) {
    build_sec_adj_list(sector[i]);    
  }
  
}

void XEngine::build_sec_adj_list(Sector *s) {
  
  Sector::adj_sec_node *new_adj_sec;
  Wall *w = s->wall_list;
  
  while (w) {
    if (w->type == Wall::PORTAL || w->type == Wall::DOOR) {
      Sector *adj_sec;		
      if (w->sectors[Wall::FRONT] == s) {
	adj_sec = w->sectors[Wall::REAR];
	w = w->next_front_in_sec;
      } else {
	adj_sec = w->sectors[Wall::FRONT];
	w = w->next_back_in_sec;
      }
      
      Sector::adj_sec_node *p = s->adj_sec_list;
      while (p && p->adj_sec != adj_sec)
	p = p->next;
      
      if (!p) {
	new_adj_sec = new Sector::adj_sec_node;
	new_adj_sec->adj_sec = adj_sec;
	new_adj_sec->next = s->adj_sec_list;
	s->adj_sec_list = new_adj_sec;
      }
    } else
      w = w->next_front_in_sec;
  }
  
  new_adj_sec = new Sector::adj_sec_node;
  new_adj_sec->adj_sec = s;
  new_adj_sec->next = s->adj_sec_list;
  s->adj_sec_list = new_adj_sec;
}

void XEngine::init_doors_data() {
  doors_list = 0;
  active_doors_list = 0;
  for (int i=0; i!=num_sectors; ++i) {
    if (sector[i]->type == Sector::DOOR) {
      compute_max_ceiling_height(sector[i]);
    }
  }
}

void XEngine::compute_max_ceiling_height(Sector *s) {
  Wall *w = s->wall_list;
  s->start_ceiling_height = INF_CEILING_HEIGHT;
  while (w) {
    if (w->type == Wall::DOOR && w->sectors[Wall::REAR]->ceiling_height < s->start_ceiling_height )
      s->start_ceiling_height = w->sectors[Wall::REAR]->ceiling_height;
    w = w->next_front_in_sec;
  }  
}

void XEngine::render() {
  
  update();
  init();
  render_info->reset_render_data(); 
  compute_visible_walls();  
  render_info->render(player);
//   print_sectors_list();
  
}

inline void XEngine::print_sectors_list() {

/*
  Sector *s = vis_sectors_list;
  
  if (s) {
    
    cout << s->id << " (";
    Sector::adj_sec_node *p = s->adj_sec_list;
    while (p) {
      cout << p->adj_sec->id << ", ";
      p = p->next;
    }
    cout << ")";
    
  }*/
//   for (Sector *s = vis_sectors_list; s; s = s->next_vis) {
//     cout << s->id << " (" << s->num_walls << ")  "; // " (" << s->cc << ") ";
    
//   }
  
//   cout << endl;
}

inline void XEngine::init() { 
  t_vlist = 0;
  vis_sectors_list = 0;
  vis_sectors_list_ptr = &vis_sectors_list;
}

inline void XEngine::update() {  
  
  player->update();
  
  check_elev_activation();
  update_doors_list();
  update_elevs_list(); 
  render_info->release_used_list();
  
  for (Vector2d *p = t_vlist; p; p = p->next_t) {
    p->t = false;  
  }
  
  for (Sector *s = vis_sectors_list; s; s = s->next_vis) {
    s->vis = false;
  }
  

}

inline void XEngine::update_doors_list() {
  for (Door *d = active_doors_list; d; d = d->next_active) {
    if (d->state == Door::WAITING && d->sec != vis_sectors_list) {
      if (can_close_door(d))
	d->state = Door::CLOSING;
    }
    
    if (d->mov_c--<=0) {
      d->update();
      if (d->state != Door::STOP)
	d->mov_c = DOOR_MOV_INT;
      else
	remove_door_from_adl(d);
    }
  }
}

inline bool XEngine::can_close_door(Door *d) {
  Sector *s = d->sec; // s->type == DOOR
  Wall *w = s->wall_list;
  
  while (w) {
    if (w->type == Wall::DOOR) {
      if (collision(*w, player->pos))
	return false;
    }   
//     if (w->type == Wall::DOOR_SIDE || w->sectors[Wall::FRONT] == s)
    w = w->next_front_in_sec;
//     else
//       w = w->next_back_in_sec;
  }
  
  return true;
}

void XEngine::update_elevs_list() {
  for (Elevator *e = active_elevs_list; e; e = e->next_active) {
    if (e->mov_c--<=0) {
      e->update();
      if (e->state != Elevator::DOWN)
	e->mov_c = ELEVATOR_MOV_INT;
      else
	remove_elev_from_ael(e);
    }
  }
}

inline void XEngine::insert_sec_in_vis_list(Sector *sec) {
  if (!sec->vis) {
    *vis_sectors_list_ptr = sec;
    vis_sectors_list_ptr = &sec->next_vis;
    sec->vis = true;;
  }    
}

inline void XEngine::compute_visible_walls() {
  compute_visible_walls_rec(bsp_tree->root);
  *vis_sectors_list_ptr = 0;
}


void XEngine::compute_visible_walls_rec(BspTree::BspNode *pnode) {

    Wall *cwall;
        
    Plane::Position position = pnode->partition->evaluate_position(player->pos);
   
    switch (position) {
      case Plane::IN_FRONT: {
	if (pnode->front && brect_visible(pnode->front)) {
	  compute_visible_walls_rec(pnode->front);
	  if (render_info->stop)
	    return;
	}
    
	cwall = pnode->walls;	
	  
	do {	  
	  if (!visible_bwall(*cwall)) {
	    cwall = cwall->next;
	    continue;
	  }	  
	  process_wall(position, cwall);
	  if (!render_info->n_col) {
	    render_info->stop = true;
	    return;
	  }
	  cwall = cwall->next;
	} while (cwall);
			
	if (pnode->back && brect_visible(pnode->back)) {
	  compute_visible_walls_rec(pnode->back);
	  if (render_info->stop)
	    return;	  
	}
      } break;
      
      case Plane::IN_BACK: {
	if (pnode->back && brect_visible(pnode->back)) {
	  compute_visible_walls_rec(pnode->back);
	  if (render_info->stop)
	    return;	  
	}
	
	cwall = pnode->walls;
	do {	  	  
	  if (!visible_bwall(*cwall)) {
	    cwall = cwall->next;
	    continue;
	  }	  
	  process_wall(position, cwall);
	  if (!render_info->n_col) {
	    render_info->stop = true;
	    return;
	  }
	  cwall = cwall->next;
	} while (cwall);
			
	if (pnode->front && brect_visible(pnode->front)) {
	  compute_visible_walls_rec(pnode->front);
	  if (render_info->stop)
	    return;	  
	}
      } break;
      
      case Plane::SPANNING: {
	if (pnode->back && brect_visible(pnode->back)) {
	  compute_visible_walls_rec(pnode->back);
	  if (render_info->stop)
	    return;	  
	}
	
	if (pnode->front && brect_visible(pnode->front)) {
	  compute_visible_walls_rec(pnode->front);
	  if (render_info->stop)
	    return;	  
	}
      } break;
    }
    
}

void XEngine::process_wall(Plane::Position p, Wall *cwall) {

  Plane::Position wall_pos = (Plane::Position)((int)p ^ (int)cwall->plane_side);
  Wall::SideTypes cur_side, next_side;
  Sector *front_wall_sec = cwall->sectors[Wall::FRONT];
  Sector *back_wall_sec = cwall->sectors[Wall::REAR];
  int prev_height;
  
  switch (wall_pos) {
    case Plane::IN_FRONT:
      
	  if (!player->cur_height_set) {	    
	    player->cur_height = player->height + front_wall_sec->floor_height;      
	    player->cur_height_set = true;
	  }
	  	  
	  prev_height = player->cur_height;	   
	  cur_side = Wall::FRONT;
	  next_side = Wall::REAR; // usato da visible_wall solo se e' wall e' un portale
	  player->cur_height -= front_wall_sec->floor_height;
	  
	  if (visible_wall(*cwall, cur_side, next_side)) {	        	    
	    if (cwall->type == Wall::SOLID || cwall->type == Wall::DOOR_SIDE) {
	      process_solid_wall(*cwall);
	    } else {
	      process_portal_wall(*cwall, Wall::FRONT);
	    }	    
	  }    
	  
	  player->cur_height = prev_height;
    break;
    
    case Plane::IN_BACK:
      
	  if (cwall->type == Wall::SOLID || cwall->type == Wall::DOOR_SIDE) {
	    break;
	  }
	  
	  if (!player->cur_height_set) {	    
	    if (cwall->type == Wall::PORTAL || cwall->type == Wall::DOOR)
	      player->cur_height = player->height + back_wall_sec->floor_height;
	    else {
	      player->cur_height = player->height + front_wall_sec->floor_height;
	    }
	    player->cur_height_set = true;
	  }
	  	  
	  prev_height = player->cur_height;
	  cur_side = Wall::REAR;
	  next_side = Wall::FRONT;
 	  player->cur_height -= back_wall_sec->floor_height;
	  	    
	  if (visible_wall(*cwall, cur_side, next_side)) {	    
	    process_portal_wall(*cwall, Wall::REAR);		    
	  }
  
	  player->cur_height = prev_height;
      
    break;
    
    default: // il caso spanning e' escluso
	     // vedi funzione chiamante
	   break;
  }
  
}

// pnode != 0
inline bool XEngine::brect_visible(BspTree::BspNode *pnode) {
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
    p0->rx = p0->dx * player->cos_ang_p - p0->dy * player->sin_ang_p;
    if (p0->rx == 0.0f)
      p0->rx = 1.0f;
    p0->ry = p0->dx * player->sin_ang_p + p0->dy * player->cos_ang_p;
    p0->t = true;
    p0->next_t = t_vlist;
    t_vlist = p0;
  }

  distance[0] = p0->rx;
    
  Vector2d *p1 = wall.points[1];
  
  if (!p1->t) {
    p1->dx = p1->x - player->pos.x;
    p1->dy = p1->y - player->pos.y;  
    p1->rx = p1->dx * player->cos_ang_p - p1->dy * player->sin_ang_p;
    if (p1->rx == 0.0f)
      p1->rx = 1.0f;
    p1->ry = p1->dx * player->sin_ang_p + p1->dy * player->cos_ang_p;   
    p1->t = true;
    p1->next_t = t_vlist;
    t_vlist = p1;
  }

  distance[1] = p1->rx;
   
  if (distance[0] > distance[1])
    max_distance = distance[0];
  else 
    max_distance = distance[1];
    
  if (max_distance <= MAX_WALL_DISTANCE) {
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
  
  proj_col[left] = static_cast<int>(aligny[left] * render_info->pp_distance / distance[left]) + render_info->hxsize;
  proj_col[right] = static_cast<int>(aligny[right] * render_info->pp_distance / distance[right]) + render_info->hxsize;
    
  if (proj_col[left] < proj_col[right]) {
    if (proj_col[right] <= render_info->vp_left || proj_col[left] >= render_info->vp_right) {
      return false;
    }
    left_col = 0;
    right_col = 1;
  } else {
    if (proj_col[left] <= render_info->vp_left || proj_col[right] >= render_info->vp_right) {
      return false;
    }
    left_col = 1;
    right_col = 0;   
  }  
  
  wall_proj_height[left] = render_info->pp_distance * wall.sectors[cur_side]->wall_height / distance[left];
  if (wall_proj_height[left] == 0)
    wall_proj_height[left] = 1;    
        
  bot[left] = render_info->pp_distance * player->cur_height / distance[left] + render_info->vp_center;
  top[left] = bot[left] - wall_proj_height[left] + 1;  
    
  wall_proj_height[right] = render_info->pp_distance * wall.sectors[cur_side]->wall_height / distance[right];
  if (wall_proj_height[right] == 0)
    wall_proj_height[right] = 1;    
        
  bot[right] = render_info->pp_distance * player->cur_height / distance[right] + render_info->vp_center;
  top[right] = bot[right] - wall_proj_height[right] + 1;       
  
  if (wall.type == Wall::PORTAL || wall.type == Wall::DOOR) {
    
    int cur_bot_height = wall.sectors[cur_side]->floor_height;
    int next_bot_height = wall.sectors[next_side]->floor_height;

    if (next_bot_height > cur_bot_height) {
      wall_proj_height_portal_bot[left] = render_info->pp_distance * (next_bot_height - cur_bot_height) / distance[left];
      if (wall_proj_height_portal_bot[left] == 0) {
	    wall_proj_height_portal_bot[left] = 1; 
      }
      wall_proj_height_portal_bot[right] = render_info->pp_distance * (next_bot_height - cur_bot_height) / distance[right];
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
      wall_proj_height_portal_top[left] = render_info->pp_distance * (cur_top_height - next_top_height) / distance[left];
      if (wall_proj_height_portal_top[left] == 0) {
	wall_proj_height_portal_top[left] = 1; 
      }     
      wall_proj_height_portal_top[right] = render_info->pp_distance * (cur_top_height - next_top_height) / distance[right];
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
    p0->rx = p0->dx * player->cos_ang_p - p0->dy * player->sin_ang_p;
    if (p0->rx == 0.0f)
      p0->rx = 1.0f;    
    p0->ry = p0->dx * player->sin_ang_p + p0->dy * player->cos_ang_p;   
    p0->t = true;
    p0->next_t = t_vlist;
    t_vlist = p0;
  }

  distance[0] = p0->rx;
    
  Vector2d *p1 = wall.points[1];
  
  if (!p1->t) {
    p1->dx = p1->x - player->pos.x;
    p1->dy = p1->y - player->pos.y;  
    p1->rx = p1->dx * player->cos_ang_p - p1->dy * player->sin_ang_p;
    if (p1->rx == 0.0f)
      p1->rx = 1.0f;    
    p1->ry = p1->dx * player->sin_ang_p + p1->dy * player->cos_ang_p;   
    p1->t = true;
    p1->next_t = t_vlist;
    t_vlist = p1;
  }

  distance[1] = p1->rx;
      
  if (distance[0] > distance[1])
    max_distance = distance[0];
  else 
    max_distance = distance[1];
    
  if (max_distance <= MAX_WALL_DISTANCE) {
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
  
  proj_col[left] = static_cast<int>(aligny[left] * render_info->pp_distance / distance[left]) + render_info->hxsize;
  proj_col[right] = static_cast<int>(aligny[right] * render_info->pp_distance / distance[right]) + render_info->hxsize;
    
  if (proj_col[left] < proj_col[right]) {
    if (proj_col[right] <= render_info->vp_left || proj_col[left] >= render_info->vp_right) {
      return false;
    }
  } else {
    if (proj_col[left] <= render_info->vp_left || proj_col[right] >= render_info->vp_right) {
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
    double wall_proj_height_wd, wd_fact;
    double wall_vtex_off;
    double wall_vtex_inc;
    int wall_vtex_off_fxp;
    int wall_vtex_inc_fxp;  
    unsigned int *tex_ptr, *wall_tex_ptr;
    int tex_width, tex_height;
    int tex_col;
    int intensity;
    Sector *wall_sec;
    
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
     
    col_left = (wall.render_col[left_col] < render_info->vp_left) ? render_info->vp_left : wall.render_col[left_col];
    col_right = (wall.render_col[right_col] > render_info->vp_right) ? render_info->vp_right : wall.render_col[right_col];
         
    if (render_info->wall_occluded(col_left, col_right)) {   
      return;
    }
    
    top_row_start = wall.render_top_row[left_col];
    bot_row_start = wall.render_bot_row[left_col];
    inv_dist = wall.inv_distance[left_col];
    top_row_end = wall.render_top_row[right_col];
    bot_row_end = wall.render_bot_row[right_col];
    
    if (wall.render_col[left_col] < render_info->vp_left) {
      double ilrange1 = 1.0 / (wall.render_col[right_col] - wall.render_col[left_col]);
      int lrange2 = render_info->vp_left - wall.render_col[left_col];
      mtop = static_cast<double>(wall.render_top_row[right_col] - wall.render_top_row[left_col]) * ilrange1;
      mbot = static_cast<double>(wall.render_bot_row[right_col] - wall.render_bot_row[left_col]) * ilrange1;
      top_row_start += mtop * lrange2;
      bot_row_start += mbot * lrange2;
      inv_dist += m_inv_dist * lrange2;
    }
      
    if (wall.render_col[right_col] > render_info->vp_right) {
      double ilrange1 = 1.0 / (wall.render_col[right_col] - wall.render_col[left_col]);
      int lrange2 = wall.render_col[right_col] - render_info->vp_right;
      mtop = static_cast<double>(wall.render_top_row[right_col] - wall.render_top_row[left_col]) * ilrange1;
      mbot = static_cast<double>(wall.render_bot_row[right_col] - wall.render_bot_row[left_col]) * ilrange1;
      top_row_end -= mtop * lrange2;
      bot_row_end -= mbot * lrange2;
    }
        
    insert_sec_in_vis_list(wall.sectors[Wall::FRONT]);
    
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
    y4 = col_left - render_info->hxsize;
    prod1 = render_info->pp_distance * y1;
    prod2 = render_info->pp_distance * (y2 - y1);
    fact1 = y4 * x1 - prod1;
    finc = x2 - x1;
    fact2 = prod2 - y4 * finc;
    
    tex_width = wall.texture[Wall::FRONT]->width;
    tex_height = wall.texture[Wall::FRONT]->height;

    if (wall.type == Wall::DOOR_SIDE) {
      wd_fact = (static_cast<double>(wall.sectors[Wall::FRONT]->start_ceiling_height) - wall.sectors[Wall::FRONT]->floor_height) / wall.sectors[Wall::FRONT]->wall_height; 
    }
    
    VisPlane *floor_plane, *ceiling_plane;
    LUWall *door_wall;
    bool new_floor_plane = true;
    bool new_ceiling_plane = true;
    bool new_door_wall = true;
    WallSpan *wall_span_ptr = render_info->wall_spans + col_left;
    
    for (int j=col_left; j<=col_right; ++j, fytop += mtop, fybot += mbot, inv_dist += m_inv_dist, ++y4, fact1 += x1, fact2 -= finc, ++wall_span_ptr) {
  
      if (render_info->clip[j]) {
 	new_floor_plane = true;
	new_ceiling_plane = true;
	if (wall.type == Wall::DOOR_SIDE)
	  new_door_wall = true;
	
	if (render_info->clip[j] == render_info->clip[col_right]) {
	  return;
	} else {
	  int wall_code = render_info->clip[j];
	  int k = j;
	  while (render_info->clip[++k] == wall_code);
	  if (k != j+1) {
	    int m = k - j - 1;
 	    fytop += m * mtop;
 	    fybot += m * mbot;
	    inv_dist += m * m_inv_dist;
	    y4 += m;
	    fact1 += m * x1;
	    fact2 -= m * finc;
	    wall_span_ptr += m;
	    j = k-1;
	  }	  
	}
	
	continue;
      }
      
      ytop = static_cast<int>(fytop);
      ybot = static_cast<int>(fybot);

      if (ytop > render_info->z_lower[j]) {	
	ytop = render_info->z_lower[j]+1;	
	render_info->clip[j] = wall.id;
	goto CeilingA;
      }
      
      if (ybot < render_info->z_upper[j]) {
	ybot = render_info->z_upper[j]-1;	
	render_info->clip[j] = wall.id;
	goto FloorA;
      }
      
      wall_proj_height = ybot - ytop + 1;
      
      if (wall.type == Wall::SOLID) {
	wall_vtex_off = 0.0;
	wall_vtex_inc = tex_width / wall_proj_height; //wall.sectors[Wall::FRONT]->wall_height / wall_proj_height;		
      } else { // wall.type == Wall::DOOR_SIDE
        wall_proj_height_wd = wall_proj_height * wd_fact;
	wall_vtex_inc = tex_width / wall_proj_height_wd;
	wall_vtex_off = wall_vtex_inc * (wall_proj_height_wd - 1);
      }
        
    
      if (ytop < render_info->z_upper[j]) {
        if (wall.type == Wall::SOLID)
	  wall_vtex_off += (render_info->z_upper[j] - ytop) * wall_vtex_inc;
	ytop = render_info->z_upper[j];
      }
	      
      if (ybot > render_info->z_lower[j]) {
  	if (wall.type == Wall::DOOR_SIDE)
	  wall_vtex_off -= (ybot - render_info->z_lower[j]) * wall_vtex_inc;	
	ybot = render_info->z_lower[j];	  
      }
      
      render_info->clip[j] = wall.id;
      --render_info->n_col;
            
      /***********WALL*******************/
      
      intensity = (wall.light_factor * wall.sectors[Wall::FRONT]->light_level) * (1 - ((1/inv_dist)/(LIGHT_DISTANCE))) * MAX_LIGHT_LEVELS;
            // (wall.light_factor * wall.sectors[Wall::FRONT]->light_level)
      if (intensity < MIN_LIGHT_LEVELS)
	intensity = MIN_LIGHT_LEVELS;
      if (intensity > MAX_LIGHT_LEVELS)
	intensity = MAX_LIGHT_LEVELS;

      woff = fact1 / fact2;
      wall_tex_ptr = reinterpret_cast<unsigned int*>(wall.texture[Wall::FRONT]->light_tex[intensity]);
      tex_ptr = wall_tex_ptr + (static_cast<int>(fabs(woff) * wall.length) % tex_height) * tex_width;
         
      if (wall.type == Wall::SOLID) {
	wall_span_ptr->ytop = ytop;
	wall_span_ptr->ybot = ybot;
	wall_span_ptr->tex_col_ptr = tex_ptr;
	wall_span_ptr->tex_off = wall_vtex_off * FXP_MUL;
	wall_span_ptr->tex_inc = wall_vtex_inc * FXP_MUL;
	wall_span_ptr->tex_height = tex_width;
	      
	if (ytop < render_info->y_min)
	  render_info->y_min = ytop;
	
	if (ybot > render_info->y_max)
	  render_info->y_max = ybot;
	
	if (j < render_info->x_min)
	  render_info->x_min = j;
	
	if (j > render_info->x_max)
	  render_info->x_max = j;
	
       } else {
	// wall.type == Wall::DOOR_SIDE
	
	if (new_door_wall) {
	  door_wall = render_info->get_new_lu_wall(render_info->l_walls_list); //new screen_rendering::lu_wall(render_info->xsize, render_info->l_walls_list);	  
	  render_info->l_walls_list = door_wall;
	  new_door_wall = false;
	}
	
	door_wall->luwall_spans[j].ytop = ytop;
	door_wall->luwall_spans[j].ybot = ybot;
	door_wall->luwall_spans[j].tex_col_ptr = tex_ptr;
	door_wall->luwall_spans[j].tex_off = wall_vtex_off * FXP_MUL;
	door_wall->luwall_spans[j].tex_inc = wall_vtex_inc * FXP_MUL;
	door_wall->luwall_spans[j].tex_height = tex_width;
	
	if (ytop < door_wall->y_min)
	  door_wall->y_min = ytop;
	
	if (ybot > door_wall->y_max)
	  door_wall->y_max = ybot;
	
	if (j < door_wall->x_min)
	  door_wall->x_min = j;
	
	if (j > door_wall->x_max)
	  door_wall->x_max = j;
	
       }
            
FloorA:
      if (render_info->z_lower[j] > ybot) {
	
	if (new_floor_plane) {
	  floor_plane = render_info->get_new_vis_plane(wall.sectors[Wall::FRONT], render_info->floor_planes_list); //new VisPlane(render_info->xsize, wall.sectors[Wall::FRONT], render_info->floor_planes_list);
	  render_info->floor_planes_list = floor_plane;
	  new_floor_plane = false;
	} 
	
	int ymin = ybot + 1;
	int ymax = render_info->z_lower[j];
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
      if (ytop > render_info->z_upper[j]) {
	
	if (new_ceiling_plane) {
	  ceiling_plane = render_info->get_new_vis_plane(wall.sectors[Wall::FRONT], render_info->ceiling_planes_list); //new VisPlane(render_info->xsize, wall.sectors[Wall::FRONT], render_info->ceiling_planes_list);
	  render_info->ceiling_planes_list = ceiling_plane;
	  new_ceiling_plane = false;
	} 
	
	int ymin = render_info->z_upper[j];
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


void XEngine::process_portal_wall(const Wall& wall, Wall::SideTypes side) {
  
    unsigned int *screen_ptr;
    int left_col = wall.left;
    int right_col = wall.right;
	
    double wall_proj_height;
    double wall_vtex_off_upper;
    double wall_vtex_off_upper_e;
    double wall_vtex_inc;
    double wall_vtex_off_lower;
    double wall_vtex_off_lower_d;

    unsigned int *tex_ptr;
    unsigned int *wall_tex_upper_ptr;
    unsigned int *wall_tex_lower_ptr;
    int tex_width, tex_height;
    int tex_col;
    int intensity;
    bool elev_sec;
    
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
      
    col_left = (wall.render_col[left_col] < render_info->vp_left) ? render_info->vp_left : wall.render_col[left_col];
    col_right = (wall.render_col[right_col] > render_info->vp_right) ? render_info->vp_right : wall.render_col[right_col];
         
    if (render_info->wall_occluded(col_left, col_right)) {   
      return;
    }
    
    top_row_start = wall.render_top_row[left_col];
    bot_row_start = wall.render_bot_row[left_col];
    bot_portal_row_start = wall.render_bot_portal_row[left_col];
    top_portal_row_start = wall.render_top_portal_row[left_col];
    inv_dist = wall.inv_distance[left_col];
    top_row_end = wall.render_top_row[right_col];
    bot_row_end = wall.render_bot_row[right_col];
    bot_portal_row_end = wall.render_bot_portal_row[right_col];
    top_portal_row_end = wall.render_top_portal_row[right_col];
    
    if (wall.render_col[left_col] < render_info->vp_left) {
      double ilrange1 = 1.0 / (wall.render_col[right_col] - wall.render_col[left_col]);
      int lrange2 = render_info->vp_left - wall.render_col[left_col];
      mtop = static_cast<double>(wall.render_top_row[right_col] - wall.render_top_row[left_col]) * ilrange1;
      mbot = static_cast<double>(wall.render_bot_row[right_col] - wall.render_bot_row[left_col]) * ilrange1;
      mbot_portal = static_cast<double>(wall.render_bot_portal_row[right_col] - wall.render_bot_portal_row[left_col]) * ilrange1;
      mtop_portal = static_cast<double>(wall.render_top_portal_row[right_col] - wall.render_top_portal_row[left_col]) * ilrange1;     
      top_row_start = wall.render_top_row[left_col] + mtop * lrange2;
      bot_row_start = wall.render_bot_row[left_col] + mbot * lrange2;
      bot_portal_row_start += mbot_portal * lrange2;
      top_portal_row_start += mtop_portal * lrange2;
      inv_dist += m_inv_dist * lrange2;
    }
      
    if (wall.render_col[right_col] > render_info->vp_right) {
      double ilrange1 = 1.0 / (wall.render_col[right_col] - wall.render_col[left_col]);
      int lrange2 = wall.render_col[right_col] - render_info->vp_right;
      mtop = static_cast<double>(wall.render_top_row[right_col] - wall.render_top_row[left_col]) * ilrange1;
      mbot = static_cast<double>(wall.render_bot_row[right_col] - wall.render_bot_row[left_col]) * ilrange1;
      mbot_portal = static_cast<double>(wall.render_bot_portal_row[right_col] - wall.render_bot_portal_row[left_col]) * ilrange1;
      mtop_portal = static_cast<double>(wall.render_top_portal_row[right_col] - wall.render_top_portal_row[left_col]) * ilrange1;      
      top_row_end -= mtop * lrange2;
      bot_row_end -= mbot * lrange2;
      bot_portal_row_end -= mbot_portal * lrange2;
      top_portal_row_end -= mtop_portal * lrange2;
    }
             
    insert_sec_in_vis_list(wall.sectors[side]);
    
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
    
    elev_sec = (wall.sectors[side]->type == Sector::ELEVATOR
		|| wall.sectors[side^1]->type == Sector::ELEVATOR);
    
    x1 = wall.tpoints[0].x;
    y1 = wall.tpoints[0].y;
    x2 = wall.tpoints[1].x;
    y2 = wall.tpoints[1].y;
    y4 = col_left - render_info->hxsize;
    prod1 = render_info->pp_distance * y1;
    prod2 = render_info->pp_distance * (y2 - y1);
    fact1 = y4 * x1 - prod1;
    finc = x2 - x1;
    fact2 = prod2 - y4 * finc;
    
    // si assumono uguali anche per texture_lu[side][Wall::LOWER]
    tex_width = wall.texture_lu[side][Wall::UPPER]->width;
    tex_height = wall.texture_lu[side][Wall::UPPER]->height;

    VisPlane *floor_plane, *ceiling_plane;
    bool new_floor_plane = true;
    bool new_ceiling_plane = true;
    bool upd;
    bool new_lu_wall_upper = true;
    bool new_lu_wall_lower = true;
    LUWall **lu_wall_ptr_upper, **lu_wall_ptr_lower;
    
    for (int j=col_left; j<=col_right; ++j, fytop += mtop, fybot += mbot, fybot_portal += mbot_portal, fytop_portal += mtop_portal, inv_dist += m_inv_dist, ++y4, fact1 += x1, fact2 -= finc) {
      
//   cout << render_info->z_upper[j] << " " << ytop << " " << ytop_portal << " " << ybot_portal << " " << ybot << " " << render_info->z_lower[j] << endl;
      if (render_info->clip[j]) {
	new_floor_plane = true;
	new_ceiling_plane = true;
	new_lu_wall_upper = true;
	new_lu_wall_lower = true;
	
	if (render_info->clip[j] == render_info->clip[col_right]) {
	  return;
	} else {
	  int wall_code = render_info->clip[j];
	  int k = j;
	  while (render_info->clip[++k] == wall_code);
	  if (k != j+1) {
	    int m = k - j - 1;
	    fytop += m * mtop;
	    fybot += m * mbot;
	    fybot_portal += m * mbot_portal;
	    fytop_portal += m * mtop_portal;
	    inv_dist += m * m_inv_dist;
	    y4 += m;
	    fact1 += m * x1;
	    fact2 -= m * finc;
	    j = k-1;
	  }	  
	}
	
	continue;
      }

      ytop = static_cast<int>(fytop);
      ybot = static_cast<int>(fybot); 
      ybot_portal = static_cast<int>(fybot_portal);
      ytop_portal = static_cast<int>(fytop_portal);
      
      if (ytop > render_info->z_lower[j]) {
	ytop = render_info->z_lower[j]+1;	
	render_info->clip[j] = wall.id;
	upd = false;
	goto CeilingA;
      } else
	upd = true;
      
      if (ybot < render_info->z_upper[j]) {
	ybot = render_info->z_upper[j]-1;	
	render_info->clip[j] = wall.id;
	upd = false;
	goto FloorB;
      } else
	upd = true;
            
      wall_proj_height = ybot - ytop + 1;
      wall_vtex_off_upper = 0.0;
      wall_vtex_off_upper_e = 0.0;
      wall_vtex_inc = tex_width / wall_proj_height; //wall.texture[Wall::FRONT]->width / wall_proj_height; //wall.sectors[side]->wall_height / wall_proj_height;
      wall_vtex_off_lower = wall_vtex_inc * (wall_proj_height - 1);
      wall_vtex_off_lower_d = wall_vtex_inc * (wall_proj_height - 1);
            
      if (ytop < render_info->z_upper[j]) {
	wall_vtex_off_upper += (render_info->z_upper[j] - ytop) * wall_vtex_inc;
	ytop = render_info->z_upper[j];
      }
      	      
      if (ybot > render_info->z_lower[j]) {
	wall_vtex_off_lower -= (ybot - render_info->z_lower[j]) * wall_vtex_inc;
	ybot = render_info->z_lower[j];
      }
            
      if (ytop_portal < ytop) {
	ytop_portal = ytop;
      }
      
      if (ytop_portal > ybot) {
	if (wall.type == Wall::DOOR)
	  wall_vtex_off_lower_d -= (ytop_portal - ybot) * wall_vtex_inc;
	ytop_portal = ybot;
      }
      
      if (ybot_portal > ybot) {
	ybot_portal = ybot;
      }
     
      if (ybot_portal < ytop) {
	if (elev_sec)
 	  wall_vtex_off_upper_e += (ytop - ybot_portal) * wall_vtex_inc;
   	ybot_portal = ytop;
      }
         
      intensity = (wall.light_factor * wall.sectors[side]->light_level) * (1 - ((1/inv_dist)/(LIGHT_DISTANCE))) * MAX_LIGHT_LEVELS;
      if (intensity < MIN_LIGHT_LEVELS)
	intensity = MIN_LIGHT_LEVELS;
      if (intensity > MAX_LIGHT_LEVELS)
	intensity = MAX_LIGHT_LEVELS;
      
      woff = fact1 / fact2;
      tex_col = static_cast<int>(fabs(woff) * wall.length) % tex_height;
      
      
      /*********CEILING&TOP****************/

      if (ytop_portal > ytop) {

	if (new_lu_wall_upper) {
 	  if (wall.type == Wall::PORTAL) {
	    render_info->u_walls_list = render_info->get_new_lu_wall(render_info->u_walls_list); //new screen_rendering::lu_wall(render_info->xsize, render_info->u_walls_list);
	    lu_wall_ptr_upper = &render_info->u_walls_list;
	  } else { // wall.type == Wall::DOOR
	    render_info->d_walls_list = render_info->get_new_lu_wall(render_info->d_walls_list); //new screen_rendering::lu_wall(render_info->xsize, render_info->d_walls_list);
	    lu_wall_ptr_upper = &render_info->d_walls_list;
	  }
	  new_lu_wall_upper = false;
	}
		
	(*lu_wall_ptr_upper)->luwall_spans[j].ytop = ytop;
	(*lu_wall_ptr_upper)->luwall_spans[j].ybot = ytop_portal;
	(*lu_wall_ptr_upper)->luwall_spans[j].tex_col_ptr = reinterpret_cast<unsigned int*>(wall.texture_lu[side][Wall::UPPER]->light_tex[intensity]) + tex_col * tex_width; 
 	if (wall.type == Wall::PORTAL)
	  (*lu_wall_ptr_upper)->luwall_spans[j].tex_off = wall_vtex_off_upper * FXP_MUL;
	else // wall.type == Wall::DOOR
	  (*lu_wall_ptr_upper)->luwall_spans[j].tex_off = wall_vtex_off_lower_d * FXP_MUL;
	(*lu_wall_ptr_upper)->luwall_spans[j].tex_inc = wall_vtex_inc * FXP_MUL;
	(*lu_wall_ptr_upper)->luwall_spans[j].tex_height = tex_width; //wall.texture_lu[side][Wall::UPPER]->width;
	
	if (ytop < (*lu_wall_ptr_upper)->y_min)
	  (*lu_wall_ptr_upper)->y_min = ytop;
	
	if (ytop_portal > (*lu_wall_ptr_upper)->y_max)
	  (*lu_wall_ptr_upper)->y_max = ytop_portal;
	
	if (j < (*lu_wall_ptr_upper)->x_min)
	  (*lu_wall_ptr_upper)->x_min = j;
	
	if (j > (*lu_wall_ptr_upper)->x_max)
	  (*lu_wall_ptr_upper)->x_max = j;
	
	++ytop_portal;
      } else
	new_lu_wall_upper = true;
      
      /************BOT&FLOOR***************/
      if (ybot_portal < ybot) {

	if (new_lu_wall_lower) {
	  if (!elev_sec) {
	    render_info->l_walls_list = render_info->get_new_lu_wall(render_info->l_walls_list); //new screen_rendering::lu_wall(render_info->xsize, render_info->l_walls_list);
 	    lu_wall_ptr_lower = &render_info->l_walls_list;
	  } else {
	    render_info->e_walls_list = render_info->get_new_lu_wall(render_info->e_walls_list);
	    lu_wall_ptr_lower = &render_info->e_walls_list;
	  }
	  new_lu_wall_lower = false;	  
	}
	
	(*lu_wall_ptr_lower)->luwall_spans[j].ytop = ybot_portal;
	(*lu_wall_ptr_lower)->luwall_spans[j].ybot = ybot;
	(*lu_wall_ptr_lower)->luwall_spans[j].tex_col_ptr = reinterpret_cast<unsigned int*>(wall.texture_lu[side][Wall::LOWER]->light_tex[intensity]) + tex_col * tex_width;
	if (!elev_sec)
	  (*lu_wall_ptr_lower)->luwall_spans[j].tex_off = wall_vtex_off_lower * FXP_MUL;
	else
	  (*lu_wall_ptr_lower)->luwall_spans[j].tex_off = wall_vtex_off_upper_e * FXP_MUL;
	(*lu_wall_ptr_lower)->luwall_spans[j].tex_inc = wall_vtex_inc * FXP_MUL;
	(*lu_wall_ptr_lower)->luwall_spans[j].tex_height = tex_width; //wall.texture_lu[side][Wall::LOWER]->width;
	
	if (ybot_portal < (*lu_wall_ptr_lower)->y_min)
	  (*lu_wall_ptr_lower)->y_min = ybot_portal;
	
	if (ybot > (*lu_wall_ptr_lower)->y_max)
	  (*lu_wall_ptr_lower)->y_max = ybot;
	
	if (j < (*lu_wall_ptr_lower)->x_min)
	  (*lu_wall_ptr_lower)->x_min = j;
	
	if (j > (*lu_wall_ptr_lower)->x_max)
	  (*lu_wall_ptr_lower)->x_max = j;
	
	--ybot_portal;
      } else
	new_lu_wall_lower = true;
      
FloorB:
      if (render_info->z_lower[j] > ybot) {	
	if (new_floor_plane) {
	  floor_plane = render_info->get_new_vis_plane(wall.sectors[side], render_info->floor_planes_list); //new VisPlane(render_info->xsize, wall.sectors[side], render_info->floor_planes_list);
	  render_info->floor_planes_list = floor_plane;
	  new_floor_plane = false;
	}	
	
	int ymin = ybot + 1;
	int ymax = render_info->z_lower[j];
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
      if (ytop > render_info->z_upper[j]) {
	
	if (new_ceiling_plane) {
	  ceiling_plane = render_info->get_new_vis_plane(wall.sectors[side], render_info->ceiling_planes_list); //new VisPlane(render_info->xsize, wall.sectors[side], render_info->ceiling_planes_list);
	  render_info->ceiling_planes_list = ceiling_plane;
	  new_ceiling_plane = false;
	} 
	
	int ymin = render_info->z_upper[j];
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
	render_info->z_upper[j] = ytop_portal;
	render_info->z_lower[j] = ybot_portal;
	if (render_info->z_upper[j] >= render_info->z_lower[j]) {
	  render_info->clip[j] = wall.id; //PLANE_CLIP_CODE;
	  --render_info->n_col;
	}
      }
            
    }
    
}
  

bool XEngine::collision(const Wall& wall, const Vector2d& point) {
  if (wall.type == Wall::PORTAL || (wall.type != Wall::DOOR && !wall.plane->collision(point)))
    return false;
  if (wall.type == Wall::DOOR && !wall.plane->collision(point,DOOR_ACTIVATION_DISTANCE))
    return false;
  
  double apx = point.x - wall.points[0]->x;
  double apy = point.y - wall.points[0]->y;
  double t = (apx * wall.dx + apy * wall.dy) * wall.isqlength;
  return (t >= 0.0 && t <= 1.0);
}

bool XEngine::check_collisions(const Vector2d& point) {
  
  if (!vis_sectors_list)
    return false;

  bool coll_f = false;
    
  for (Sector::adj_sec_node *p = vis_sectors_list->adj_sec_list; p && !coll_f; p=p->next) {
    
    Sector *s = p->adj_sec;
    Wall *w = s->wall_list;
    
    while (w) {      
      if (collision(*w, point)) {        
	if (w->type == Wall::DOOR) {
	  coll_f = door_collision(w) || coll_f;
	} else {
	  coll_f = true;
	}
      }
    
      if (w->type == Wall::SOLID || w->type == Wall::DOOR_SIDE || w->sectors[Wall::FRONT] == s)
	w = w->next_front_in_sec;
      else
	w = w->next_back_in_sec;
    }
    
  }
      
  return coll_f;
}

inline Door *XEngine::find_door_sector(Sector *sec) {
  for (Door *d = doors_list; d; d = d->next) {
    if (d->sec == sec) {
      return d;
    }
  }
  return 0;
}
 
bool XEngine::door_collision(Wall *w) {
  
  Sector *door_sector = w->sectors[Wall::FRONT];
  Door *door = find_door_sector(door_sector);
    
  if (door) {
    if (door->state == Door::STOP) {
      door->init();
      insert_door_in_adl(door);
    } else
      if (door->state == Door::OPEN || door->state == Door::WAITING
	  || (door->state == Door::OPENING && door_sector->ceiling_height > player->cur_height + DOOR_PLAYER_HDIFF))
      {	
	return false;
      }
  } else {
    doors_list = new Door(door_sector, doors_list);
    insert_door_in_adl(doors_list);
  }
  
  return true;
}

inline void XEngine::insert_door_in_adl(Door *d) {
  d->next_active = active_doors_list;
  active_doors_list = d;
}

inline void XEngine::remove_door_from_adl(Door *d) {
  if (active_doors_list == d)
    active_doors_list = d->next_active;
  else {
    Door *pd = active_doors_list;
    while (pd->next_active != d)
      pd = pd->next_active;
    pd->next_active = d->next_active;
  }
}

void XEngine::check_elev_activation() {
  
  if (!vis_sectors_list)
    return;
  
  Sector *s = vis_sectors_list;
  if (s->type == Sector::ELEVATOR) {
    Elevator *e = find_elev_sector(s);
    if (e) {
      if (e->state == Elevator::DOWN) {
	e->init();
	insert_elev_in_ael(e);
      }
    } else {
      elevs_list = new Elevator(s, elevs_list);
      insert_elev_in_ael(elevs_list);
    }
  }
}

Elevator *XEngine::find_elev_sector(Sector *sec) {
  for (Elevator *e = elevs_list; e; e = e->next) {
    if (e->sec == sec) {
      return e;
    }
  }
  return 0;  
}

void XEngine::insert_elev_in_ael(Elevator *e) {
  e->next_active = active_elevs_list;
  active_elevs_list = e;
}

void XEngine::remove_elev_from_ael(Elevator *e) {
  if (active_elevs_list == e)
    active_elevs_list = e->next_active;
  else {
    Elevator *pe = active_elevs_list;
    while (pe->next_active != e)
      pe = pe->next_active;
    pe->next_active = e->next_active;
  }
}
  

void XEngine::process_input() {
  if (key_pressed.moving_forward)
    update_position(POS_DISP);
  
  if (key_pressed.moving_backward)
    update_position(-POS_DISP);
  
  if (key_pressed.turning_left)
    update_angle(-ANGLE_DISP);
    
  if (key_pressed.turning_right) 
    update_angle(ANGLE_DISP);
}

void XEngine::update_position(double d) {
  
    double dx = d * cos(player->angle + 3.272e-4);
    double dy = d * sin(player->angle + 3.272e-4);
    
//     Vector2d old_pos = player->pos;
/*    
    player->pos.x += dx;
    player->pos.y += dy;
        
    if (check_collisions(player->pos)) {
      player->pos.x -= dx;
      player->pos.y -= dy;
    }*/

    player->pos.x += dx;     
    if (check_collisions(player->pos)) {
      player->pos.x -= dx;
    }
    
    player->pos.y += dy;
    if (check_collisions(player->pos)) {
      player->pos.y -= dy;
    }

}
  
void XEngine::update_angle(double d) {
  player->angle += d;
  if (player->angle >= M_2PI)
    player->angle -= M_2PI;
  if (player->angle < 0)
    player->angle += M_2PI;
}
  
void XEngine::update_height(double d) {
 player->height += d; //UPDATE_HEIGHT_FACTOR; 
 // rivedi i seguenti controlli
 if (player->height < 10)
   player->height = 10;
 if (player->height > 128)
   player->height = 128;
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
    
  wall_list = new Wall(1, v1, v4, Wall::SOLID, sector, 0, tex, 0, 0, 0, 0, 0, wall_list);
  wall_list = new Wall(1, v4, v3, Wall::SOLID, sector, 0, tex, 0, 0, 0, 0, 0, wall_list);
  wall_list = new Wall(1, v3, v2, Wall::SOLID, sector, 0, tex, 0, 0, 0, 0, 0, wall_list);
  wall_list = new Wall(1, v2, v1, Wall::SOLID, sector, 0, tex, 0, 0, 0, 0, 0, wall_list);
  
  return wall_list;
}

