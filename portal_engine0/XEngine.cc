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

#define ANGLE_DISP 0.055
#define POS_DISP 10

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
    player->x += dir * POS_DISP * cos(player->angle);
    player->y += dir * POS_DISP * sin(player->angle);
//     cout << player->x << " " << player->y << endl;
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
        
    setup_level_data();
    
    setup_screen_data();    
    
    setup_textures();
}

void XEngine::setup_textures() {
  
  tex_loader->load("xwall1.ppm");
  wall_tex = new Texture(tex_loader->data, tex_loader->width, tex_loader->height);
}

void XEngine::setup_player() {
  player = new Player();
    
  player->x = 100;
  player->y = 100;
    
  player->angle = 0;
  player->height = PLAYER_HEIGHT;  
}

void XEngine::setup_level_data() {
    
//   int num_sectors = 1;
//   Sector **sectors = new Sector*[num_sectors];
//   
//   int num_walls = 4;
//   int wall_height = 64;
//   int color = 0x545454;
//   Wall **walls1 = new Wall*[num_walls];
//   walls1[0] = new Wall(Vector2d(0, 0), Vector2d(640, -128), color, 0); color = 0x545454;
//   walls1[1] = new Wall(Vector2d(640, -128), Vector2d(640+128, 640+128), color, 0); color = 0x303030;
//   walls1[2] = new Wall(Vector2d(640+128, 640+128), Vector2d(-128, 640), color, 0); color = 0x545454;
//   walls1[3] = new Wall(Vector2d(-128, 640), Vector2d(0, 0), color, 0); color = 0x303030;
//   
//   sectors[0] = new Sector(walls1, num_walls, 0, wall_height, 0x707070, 0x000000); 
//   
//   for (int i=0; i!=num_walls; ++i) {
//     walls1[i]->type = Wall::SOLID;
//     walls1[i]->owner_sector = sectors[0];
//     walls1[i]->next_sector = 0;    
//   }
  
   
  
  
  
  int num_sectors = 4;
  Sector **sectors = new Sector*[num_sectors];
  
  int num_walls = 5;
  int wall_height = 64+32;
  int color = 0x545454;
  Wall **walls = new Wall*[num_walls];
  walls[0] = new Wall(Vector2d(0, 0), Vector2d(640, 0), color, 0); color = 0x303030;
  walls[1] = new Wall(Vector2d(640, 0), Vector2d(784, 256), color, 0); color = 0x303030;
  walls[2] = new Wall(Vector2d(784, 256), Vector2d(512, 512), color, 0); color = 0x545454;
  walls[3] = new Wall(Vector2d(512, 512), Vector2d(-64, 256), color, 0); color = 0x303030;
  walls[4] = new Wall(Vector2d(-64, 256), Vector2d(0, 0), color, 0); color = 0x303030;
        
  sectors[0] = new Sector(walls, num_walls, 0, wall_height, 0x707070, 0x000000);  
    
  for (int i=0; i!=num_walls; ++i) {
    walls[i]->type = Wall::SOLID;
    walls[i]->owner_sector = sectors[0];
    walls[i]->next_sector = 0;    
  }

  num_walls = 5;
  wall_height = 64+16;
  Wall **walls2 = new Wall*[num_walls];
  walls2[0] = new Wall(Vector2d(640, 0), Vector2d(1024, 64), color, 0); color =0x545454;
  walls2[1] = new Wall(Vector2d(1024, 64), Vector2d(1128, 128), color, 0);color = 0x303030;
  walls2[2] = new Wall(Vector2d(1128, 128), Vector2d(1100, 256), color, 0);color = 0x0;
  walls2[3] = new Wall(Vector2d(1100, 256), Vector2d(784, 256), color, 0);color = 0x545454;
  walls2[4] = new Wall(Vector2d(784, 256), Vector2d(640, 0), color, 0);color = 0x303030;
  
  sectors[1] = new Sector(walls2, num_walls, 16, wall_height, 0x7D7D7D, 0x000000);  
    
  for (int i=0; i!=num_walls; ++i) {
    walls2[i]->type = Wall::SOLID;
    walls2[i]->owner_sector = sectors[1];
    walls2[i]->next_sector = 0;    
  }
  
  walls[1]->type = Wall::PORTAL;
  walls[1]->owner_sector = sectors[0];
  walls[1]->next_sector = sectors[1]; 
     
  walls2[4]->type = Wall::PORTAL;
  walls2[4]->owner_sector = sectors[1];
  walls2[4]->next_sector = sectors[0]; 
  
  
  num_walls = 5;
  wall_height = 64;
  Wall **walls3 = new Wall*[num_walls];
  walls3[0] = new Wall(Vector2d(1128, 128), Vector2d(1536, 256), color, 0); color = 0x545454;
  walls3[1] = new Wall(Vector2d(1536, 256), Vector2d(1450, 640), color, 0);color = 0x303030;
  walls3[2] = new Wall(Vector2d(1450, 640), Vector2d(1200, 784), color, 0);color = 0x545454;
  walls3[3] = new Wall(Vector2d(1200, 784), Vector2d(1100, 256), color, 0);color = 0x303030;
  walls3[4] = new Wall(Vector2d(1100, 256), Vector2d(1128, 128), color, 0);color = 0x545454;
 
  sectors[2] = new Sector(walls3, num_walls, 32, wall_height, 0x8C8C8C, 0x000000);  
    
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
  wall_height = 64+16;
  Wall **walls4 = new Wall*[num_walls];
  walls4[0] = new Wall(Vector2d(-64, 256), Vector2d(-512, 320), color, 0); color = 0x303030;
  walls4[1] = new Wall(Vector2d(-512, 320), Vector2d(-784, 256), color, 0);color = 0x545454;
  walls4[2] = new Wall(Vector2d(-784, 256), Vector2d(-1024, -64), color, 0);color = 0x303030;
  walls4[3] = new Wall(Vector2d(-1024, -64), Vector2d(0, 0), color, 0);color = 0x545454;
  walls4[4] = new Wall(Vector2d(0, 0), Vector2d(-64, 256), color, 0);color = 0x303030;
 
  sectors[3] = new Sector(walls4, num_walls, 16, wall_height, 0x8C8C8C, 0x000000);  
    
  for (int i=0; i!=num_walls; ++i) {
    walls4[i]->type = Wall::SOLID;
    walls4[i]->owner_sector = sectors[3];
    walls4[i]->next_sector = 0;    
  }  
  
  walls4[4]->type = Wall::PORTAL;
  walls4[4]->owner_sector = sectors[3];
  walls4[4]->next_sector = sectors[0];   
 
  walls[4]->type = Wall::PORTAL;
  walls[4]->owner_sector = sectors[0];
  walls[4]->next_sector = sectors[3];      
    
  
  level = new Level(num_sectors, sectors);
    
}

void XEngine::setup_screen_data() {
  
  /*********************************/
  col_data = new col_inf[xsize];
    
  for (int col = vp_left; col <= vp_right; ++col) {
    col_data[col].ang = atan2(static_cast<float>((col - xsize/2)) , pp_distance);    
    col_data[col].cos_ang = cos(col_data[col].ang);
    col_data[col].sin_ang = sin(col_data[col].ang);
  }
  
  lower_rows = new int[xsize];
  
  for (int i=vp_left; i<=vp_right; ++i) 
    lower_rows[i] = vp_bot;

}

void XEngine::render() {
  Sector *cur_sector = level->player_sector(player);
  cur_height_p = player->height + cur_sector->height;
  render_sector(cur_sector, 0, vp_left, vp_right, lower_rows);
}

void XEngine::render_sector(const Sector* cur_sector,const Sector* prev_sector,
			    int leftColClip, int rightColClip, int *lower) {
  
  for (int i=0; i!=cur_sector->num_walls; ++i) {      
      if (visible_wall(*cur_sector->walls[i], leftColClip, rightColClip)) {
	switch (cur_sector->walls[i]->type) {
	  case Wall::SOLID:
	    render_solid_wall(*cur_sector->walls[i], leftColClip, rightColClip, lower);
	    break;
	  case Wall::PORTAL:    
	    if (cur_sector->walls[i]->next_sector == prev_sector)
	      break;	
	    render_portal_wall(*cur_sector->walls[i], leftColClip, rightColClip, lower);
	    break;
	}
      }
  }
  
}

bool XEngine::visible_wall(Wall& wall, int leftColClip, int rightColClip) {
  
  int dx[2], dy[2];
  int alignx[2], aligny[2];
  float distance[2], max_distance, dist;
  int wall_proj_height[2], wall_proj_height_portal_bot[2];
  int top[2], bot[2], bot_portal[2];
  int proj_col[2];
  int left, right;
  float ext_angle;
  float tan_ext_angle;
  int xs, ys, b1, b2;
  float angle_p = player->angle;
  
  dx[0] = wall.points[0].x - player->x;
  dy[0] = wall.points[0].y - player->y;  
  dx[1] = wall.points[1].x - player->x;
  dy[1] = wall.points[1].y - player->y;  
    
  alignx[0] = dx[0] * cos(-angle_p) - dy[0] * sin(-angle_p);
  aligny[0] = dx[0] * sin(-angle_p) + dy[0] * cos(-angle_p);
   
  alignx[1] = dx[1] * cos(-angle_p) - dy[1] * sin(-angle_p);
  aligny[1] = dx[1] * sin(-angle_p) + dy[1] * cos(-angle_p);    
   
  distance[0] = alignx[0];
  if (abs(distance[0]) == 0.0f)
    distance[0] = 1.0f;
 
  distance[1] = alignx[1];
  if (distance[1] == 0.0f)
    distance[1] = 1.0f;
   
  if (distance[0] > distance[1])
    max_distance = distance[0];
  else 
    max_distance = distance[1];
    
  if (max_distance <= 0) {
    return false;
  }

    // left - right (o meglio up - down) rispetto al pp
  if (aligny[0] < aligny[1]) {
    left = 0;
    right = 1;
  } else {
    left = 1;
    right = 0;
  }
    
  if (distance[left] > 0) {
    proj_col[left] = static_cast<int>(aligny[left] * pp_distance / distance[left]) + xsize / 2;
      
    if (distance[right] > 0) {

        proj_col[right] = static_cast<int>(aligny[right] * pp_distance / distance[right]) + xsize / 2;
	
	if (proj_col[right] > proj_col[left]) {
	  if (proj_col[right] < vp_left) {
	    return false;		    
	  }
	  if (proj_col[left] > vp_right) {
	    return false; 		    
	  }
        } else { 
	  if (proj_col[left] < vp_left) {
	    return false;		    
	  }
	  if (proj_col[right] > vp_right) {
	    return false;		    
	  }	    
	}
	
    } else {

	if (proj_col[left] < vp_left && aligny[right] <= 0) {
	  return false;	
	}
	
	if (proj_col[left] > vp_right && aligny[right] >= 0) {
	  return false; 		    
	}
	
      }

    } else {
      
      proj_col[right] = static_cast<int>(aligny[right] * pp_distance / distance[right]) + xsize / 2;
      
      if (proj_col[right] < vp_left && aligny[left] < 0) {
	return false;		
      }
      
      if (proj_col[right] > vp_right && aligny[left] >= 0) {
 	return false;
      }          
      
    }

    if (distance[left] <= 0 || proj_col[left] < vp_left || proj_col[left] > vp_right) {

      if (aligny[left] < 0)
 	proj_col[left] = vp_left;
      else
 	proj_col[left] = vp_right;
      
      ext_angle = angle_p + col_data[proj_col[left]].ang;	
      tan_ext_angle = tan(ext_angle);
      b1 = wall.points[0].y - wall.tan_ang * wall.points[0].x;
      b2 = player->y - tan_ext_angle * player->x;
      xs = (b1 - b2) / (tan_ext_angle - wall.tan_ang);
      ys = wall.tan_ang * xs + b1;			
      dist = (xs - player->x) * cos(-angle_p) - (ys - player->y) * sin(-angle_p);
      
      if (dist < 0) {
	if (proj_col[left] == vp_right) {
	  proj_col[left] = vp_left;
	  if (proj_col[right] <= vp_left) {
	    return false;
	  }
	}else {
	  proj_col[left] = vp_right;
	  if (proj_col[right] >= vp_right) {
	    return false;
	  }
	}
				
	ext_angle = angle_p + col_data[proj_col[left]].ang;	
	tan_ext_angle = tan(ext_angle);	
	b1 = wall.points[0].y - wall.tan_ang * wall.points[0].x;
	b2 = player->y - tan_ext_angle * player->x;
	xs = (b1 - b2) / (tan_ext_angle - wall.tan_ang);
	ys = wall.tan_ang * xs + b1;			
	dist = (xs - player->x) * cos(-angle_p) - (ys - player->y) * sin(-angle_p);	

      }
      
      if (dist < 0) {
	return false;
      }
      
      if (dist == 0.0f)
	dist = 1.0f;     
                 
      distance[left] = dist;
    }
    
    wall_proj_height[left] = pp_distance * wall.owner_sector->height_walls / distance[left];
    if (wall_proj_height[left] == 0)
      wall_proj_height[left] = 1;    
        
    bot[left] = pp_distance * (cur_height_p - wall.owner_sector->height) / distance[left] + vp_center;
    top[left] = bot[left] - wall_proj_height[left] + 1;  
    
    if (wall.type == Wall::PORTAL) {
      int next_height = wall.next_sector->height;
      int cur_height = wall.owner_sector->height;
      
      if (next_height > cur_height) {
	wall_proj_height_portal_bot[left] = pp_distance * (next_height - cur_height) / distance[left];
	if (wall_proj_height_portal_bot[left] == 0)
	    wall_proj_height_portal_bot[left] = 1;  
	bot_portal[left] = bot[left] - wall_proj_height_portal_bot[left] + 1;
      } else {
	bot_portal[left] = bot[left];
      }   
      
      wall.render_bot_portal_row[left] = bot_portal[left];
    }
        
    if (distance[right] <= 0 || proj_col[right] > vp_right || proj_col[right] < vp_left) {
      
      if (aligny[right] < 0)
 	proj_col[right] = vp_left;
      else
 	proj_col[right] = vp_right;
      
      ext_angle = angle_p + col_data[proj_col[right]].ang;	
      tan_ext_angle = tan(ext_angle);	
      b1 = wall.points[0].y - wall.tan_ang * wall.points[0].x;
      b2 = player->y - tan_ext_angle * player->x;
      xs = (b1 - b2) / (tan_ext_angle - wall.tan_ang);
      ys = wall.tan_ang * xs + b1;				  
      dist = (xs - player->x) * cos(-angle_p) - (ys - player->y) * sin(-angle_p);
      
      if (dist < 0) {
	
	if (proj_col[right] == vp_right) {
	  proj_col[right] = vp_left;
	  if (proj_col[left] <= vp_left) {
	    return false;
	  }
	} else {
	  proj_col[right] = vp_right;
	  if (proj_col[left] >= vp_right) {
	    return false;
	  }
	}
	
	ext_angle = angle_p + col_data[proj_col[right]].ang;	
	tan_ext_angle = tan(ext_angle);	
	b1 = wall.points[0].y - wall.tan_ang * wall.points[0].x;
	b2 = player->y - tan_ext_angle * player->x;
	xs = (b1 - b2) / (tan_ext_angle - wall.tan_ang);
	ys = wall.tan_ang * xs + b1;				  
	dist = (xs - player->x) * cos(-angle_p) - (ys - player->y) * sin(-angle_p);

	
      }      
      
      if (dist < 0) {
	return false;
      }
      
      if (dist == 0.0f)
	dist = 1.0f;  
            
      distance[right] = dist;
    }
    
    wall_proj_height[right] = pp_distance * wall.owner_sector->height_walls / distance[right];
    if (wall_proj_height[right] == 0)
      wall_proj_height[right] = 1;    
        
    bot[right] = pp_distance * (cur_height_p - wall.owner_sector->height) / distance[right] + vp_center;
    top[right] = bot[right] - wall_proj_height[right] + 1;  
 
    
    if (wall.type == Wall::PORTAL) {
      int next_height = wall.next_sector->height;
      int cur_height = wall.owner_sector->height;
      
      if (next_height > cur_height) {
	wall_proj_height_portal_bot[right] = pp_distance * (next_height - cur_height) / distance[right];
	if (wall_proj_height_portal_bot[right] == 0)
	    wall_proj_height_portal_bot[right] = 1;  	
	bot_portal[right] = bot[right] - wall_proj_height_portal_bot[right] + 1;
      } else {
	bot_portal[right] = bot[right];
      }
      
      wall.render_bot_portal_row[right] = bot_portal[right];
    }
    
    wall.render_col[0] = proj_col[left];    
    wall.render_top_row[0] = top[left];
    wall.render_bot_row[0] = bot[left];
    
    wall.render_col[1] = proj_col[right];
    wall.render_top_row[1] = top[right];
    wall.render_bot_row[1] =  bot[right];
 
    if (wall.type == Wall::PORTAL) {
      wall.render_bot_portal_row[0] = bot_portal[left];
      wall.render_bot_portal_row[1] = bot_portal[right];
    }
    
    int left_col, right_col;
    
    if (wall.render_col[0] < wall.render_col[1]) {
	left_col = 0;
	right_col = 1;
    } else {
	left_col = 1;
	right_col = 0;   
    }   

    // clip in basso
    if (wall.render_top_row[left_col] < wall.render_top_row[right_col]) {
      if (wall.render_top_row[left_col] > vp_bot)
	return false;
    } else {
      if (wall.render_top_row[right_col] > vp_bot)
	return false;
    }
    
    // clip in alto
    if (wall.render_bot_row[left_col] > wall.render_bot_row[right_col]) {
      if (wall.render_bot_row[left_col] < vp_top)
	return false;
    } else {
      if (wall.render_bot_row[right_col] < vp_top)
	return false;
    }
    
    if (wall.render_col[right_col] <= leftColClip || wall.render_col[left_col] >= rightColClip) {
      return false;
    }
    
    wall.left = left_col;
    wall.right = right_col;
    
    return true;          
}
    
void XEngine::render_solid_wall(const Wall& wall, int leftColClip, int rightColClip, int *lower) {
  
    unsigned int *screen_ptr;
    int left_col = wall.left,
	right_col = wall.right;
    
    float fytop, mtop;
    float fybot, mbot;
    int coldx, dytop, dybot;    
    int ytop, ybot;
    int color = wall.color;
    
    int c1 = wall.render_col[left_col];
    int c2 = wall.render_col[right_col];
    coldx = c2 - c1 + 1;
    dytop = wall.render_top_row[right_col] - wall.render_top_row[left_col] + 1;
    dybot = wall.render_bot_row[right_col] - wall.render_bot_row[left_col] + 1;
    
    mtop = static_cast<float>(dytop)/coldx;
    mbot = static_cast<float>(dybot)/coldx;    
    
    fytop = wall.render_top_row[left_col];
    fybot = wall.render_bot_row[left_col];
    
    unsigned int *tex_base = reinterpret_cast<unsigned int*>(wall_tex->data),
		 *tex_ptr;
     
    for (int j=c1; j<=c2; ++j) {
      
      
      ytop = static_cast<int>(fytop + 0.5);
      ybot = static_cast<int>(fybot + 0.5);     
      	
      fytop += mtop;
      fybot += mbot;
      
      if (j < leftColClip || j >rightColClip)
 	continue;
      
      if (ytop > vp_bot || ybot < vp_top)
	continue;
	
//       float wall_tex_off = 0.0f;
//       int wall_proj_height = ybot - ytop + 1;
//       float wall_col_inc = static_cast<float>(wall.owner_sector->height_walls) / wall_proj_height;
      
      if (ytop < vp_top) {
// 	wall_tex_off = (vp_top - ytop) * wall_col_inc;
        ytop = vp_top;
      }
      
//       if (ybot > vp_bot) {
//         ybot = vp_bot;
//       }
      if (ybot > lower[j])
	ybot = lower[j];

//    int tex_col_off = wall_tex_off * FXP_MUL;
//    int tex_col_inc = wall_col_inc * FXP_MUL;
//    tex_ptr = (tex_base + (j % wall_tex->height) * wall_tex->width);

      screen_ptr = p_screen + ytop * xsize + j;
      int span_height = ybot - ytop + 1;

       
      while (span_height--) {
	*screen_ptr = color; //*(tex_ptr + (tex_col_off>>FXP_SHIFT) % wall_tex->width);	
	screen_ptr += xsize;
// 	tex_col_off += tex_col_inc;
      }
      
      span_height = lower[j] - ybot;
      
      if (span_height > 0) {
	while (span_height--) {
	  *screen_ptr = wall.owner_sector->floor_color;
	  screen_ptr += xsize;
	}
      }
      
    }
      
}


void XEngine::render_portal_wall(const Wall& wall, int leftColClip, int rightColClip, int *lower) {

    int left_col = wall.left,
	right_col = wall.right;
    
    float fytop, mtop;
    float fybot, mbot;
    float fp, mp;
    int coldx, dytop, dybot, dp;    
    int ytop, ybot, yp;
    int color = wall.color;
    
    int c1 = wall.render_col[left_col];
    int c2 = wall.render_col[right_col];
    
    coldx = c2 - c1 + 1;
    dytop = wall.render_top_row[right_col] - wall.render_top_row[left_col] + 1;
    dybot = wall.render_bot_row[right_col] - wall.render_bot_row[left_col] + 1;
    dp = wall.render_bot_portal_row[right_col] - wall.render_bot_portal_row[left_col] + 1;
    
    mtop = static_cast<float>(dytop)/coldx;
    mbot = static_cast<float>(dybot)/coldx;    
    mp = static_cast<float>(dp)/coldx;
    
    fytop = wall.render_top_row[left_col];
    fybot = wall.render_bot_row[left_col];
    fp = wall.render_bot_portal_row[left_col];
    
    int *portal_lower = new int[xsize];
    
    for (int j=c1; j<=c2; ++j) {
      
      ytop = static_cast<int>(fytop + 0.5);
      ybot = static_cast<int>(fybot + 0.5);     
      yp = static_cast<int>(fp + 0.5);     
      
      fytop += mtop;
      fybot += mbot;
      fp += mp;
           
      if (j < leftColClip || j >rightColClip)
 	continue;
      
      
      if (ytop > vp_bot || ybot < vp_top)
	continue;
	
      if (ytop < vp_top)
	ytop = vp_top;
      
//       if (ybot > vp_bot)
//         ybot = vp_bot;
 
      if (ybot > lower[j])
	ybot = lower[j];
      
      if (yp > ybot)
	yp = ybot;
      
//       cout << ybot << " " << yp << endl;
      portal_lower[j] = yp; 
      
      unsigned int *screen_ptr;
       
      if (yp != ybot) {
 	screen_ptr = p_screen + (yp+1) * xsize + j;
 	
 	int span_height = ybot - yp;
 	
 	while (span_height--) {
 	  *screen_ptr = 0x0;
 	  screen_ptr += xsize;
 	}
      }
            
      screen_ptr = p_screen + (ybot+1) * xsize + j;
      int floor_span = lower[j] - ybot;
      
      if (floor_span > 0) {
	while (floor_span--) {
	  *screen_ptr = wall.owner_sector->floor_color;
	  screen_ptr += xsize;
	}
      }
      
    }

    if (leftColClip < c1)
       leftColClip = c1;
     
    if (rightColClip > c2)
       rightColClip = c2;

    render_sector(wall.next_sector, wall.owner_sector, leftColClip, rightColClip, portal_lower);
    
    /*
    if (c1 < leftColClip)
      c1 = leftColClip;
    
    if (c2 > rightColClip)
      c2 = rightColClip;

    render_sector(wall.next_sector, wall.owner_sector, c1, c2, portal_lower);
    */
    
    delete[] portal_lower;
    
    
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