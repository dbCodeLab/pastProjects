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

#define ANGLE_DISP 0.07 //0.055
#define POS_DISP 14

#define FXP_SHIFT 16
#define FXP_MUL (1<<FXP_SHIFT)

#define MAX_LIGHT_LEN 1000
#define LIGHT_LEN_LEVEL 50

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
//     cout << player->x << " " << player->y << " " << player->angle << endl;
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
    
    setup_textures();
    
    setup_screen_data(); 
    
    setup_player();  
        
    setup_level_data();
      
}

void XEngine::setup_textures() {
  
  tex_loader->load("res/xwall1.ppm");
  wall_tex = new Texture(tex_loader->data, tex_loader->width, tex_loader->height);
  
  tex_loader->load("res/floor2.ppm");
  floor_tex = new Texture(tex_loader->data, tex_loader->width, tex_loader->height);
}

void XEngine::setup_player() {
  player = new Player();
    
  player->pos.x = 100;
  player->pos.y = 350;
    
  player->angle = 3 * M_PI / 2;
  player->height = PLAYER_HEIGHT;  
  cur_height_p = player->height;
}

void XEngine::setup_level_data() {

   Wall *wall1 = new Wall(0, Vector2d(-153,454), Vector2d(407, -397), 64, 0xFF0000, wall_tex);
   Wall *wall2 = new Wall(1, Vector2d(0, 0), Vector2d(0, 512), 64, rand(), wall_tex);  
   wall1->next = wall2;
   wall2->next = 0;
   wall_list = wall1;
/*
   Wall *wall1 = new Wall(0, Vector2d(0,0), Vector2d(200, 0), 64, 0xFF0000, wall_tex);
   Wall *wall2 = new Wall(1, Vector2d(0, -350), Vector2d(100, -350), 64, rand(), wall_tex); 
   Wall *wall3 = new Wall(1, Vector2d(-200, 0), Vector2d(-150, 0), 64, rand(), wall_tex);
   Wall *wall4 = new Wall(1, Vector2d(-200, -350), Vector2d(-150, -350), 64, rand(), wall_tex);
   wall1->next = wall2;
   wall2->next = wall3;
   wall3->next = wall4;
   wall_list = wall1;*/

  srand(time(0));
  wall_list = 0;
  int n_walls = 400;
  Wall **walls = new Wall*[n_walls];
  for (int i=0; i!=n_walls; ++i) {
    double x1;
    double y1;
    double x2;
    double y2;
    
    do {
      x1 = rand() % 4096 - 2048; //% 1024 - 512; //4096 - 2048;
      y1 = rand() % 4096 - 2048; //% 1024 - 512; //4096 - 2048;
      x2 = x1 + (rand() % 512 - 256);
      y2 = y1 + (rand() % 512 - 256);
    } while (sqrt((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1)) < 64);
    walls[i] = new Wall(i, Vector2d(x1, y1), Vector2d(x2, y2), rand() % 128 + 32, rand(), wall_tex);
    walls[i]->next = wall_list;
    wall_list = walls[i];
  }
 
  bsp_tree = new BspTree(wall_list);

//   cout << "Creati: " << bsp_tree->n_nodes << " nodi." << endl;
}

void XEngine::setup_screen_data() {
  
  /*********************************/
  col_data = new col_inf[xsize];
    
  for (int col = vp_left; col <= vp_right; ++col) {
    col_data[col].ang = atan2(static_cast<double>((col - xsize/2)) , pp_distance);    
    col_data[col].cos_ang = cos(col_data[col].ang);
    col_data[col].sin_ang = sin(col_data[col].ang);
  }
  
  /*********************************/
  z_lower = new int[xsize];
}

void XEngine::render() {

  cos_ang_p = cos(-player->angle);
  sin_ang_p = sin(-player->angle);
  
  compute_visible_walls();
  n_clipped_walls = 0;
  init_zLower();
  
  int m = 0, n = 0;
  for (Wall *wall_ptr = bsp_tree->sort_wall_list; wall_ptr; wall_ptr = wall_ptr->next_sort) {
    ++m;
    if (visible_wall(*wall_ptr)) {
      ++n;
      render_wall(*wall_ptr);
    }
  }
/*
  cout << "# nodi bsp: " << bsp_tree->n_nodes << endl;
  cout << "# poligoni bsp: " << bsp_tree->n_poly << endl;
  cout << "# poligoni visitati: " << m << endl;
  cout << "# poligoni passati al renderer: " << n << endl;
  cout << "# poligoni renderizzati: " << n - n_clipped_walls << endl << endl;*/
}

inline void XEngine::init_zLower() {
  for (register int i=0; i!=xsize; ++i) {
    z_lower[i] = vp_bot;
  }  
}

void XEngine::compute_visible_walls() {
  bsp_tree->sort_wall_list = 0;
  if (brect_visible(bsp_tree->root)) {
    bsp_tree->sort_wall_list_ptr = &bsp_tree->sort_wall_list;
    compute_visible_walls_rec(bsp_tree->root, player->pos);
    *bsp_tree->sort_wall_list_ptr = 0;
  }
}

void XEngine::compute_visible_walls_rec(BspTree::BspNode *pnode, const Vector2d& pos) {
  
    Plane::Position ppos = pnode->partition->evaluate_position(pos);
    switch (ppos) {
      case Plane::IN_FRONT: {
	if (pnode->front && brect_visible(pnode->front))
	  compute_visible_walls_rec(pnode->front, pos);

	*bsp_tree->sort_wall_list_ptr = pnode->walls;
	bsp_tree->sort_wall_list_ptr = &(pnode->last->next_sort);
	
	if (pnode->back && brect_visible(pnode->back))
	  compute_visible_walls_rec(pnode->back, pos);
      } break;
      
      case Plane::IN_BACK: {
	if (pnode->back && brect_visible(pnode->back))
	  compute_visible_walls_rec(pnode->back, pos);
	
	*bsp_tree->sort_wall_list_ptr = pnode->walls;
	bsp_tree->sort_wall_list_ptr = &(pnode->last->next_sort);
	
	if (pnode->front && brect_visible(pnode->front))
	  compute_visible_walls_rec(pnode->front, pos);
      } break;
      
      case Plane::SPANNING:
	if (pnode->back && brect_visible(pnode->back))
	  compute_visible_walls_rec(pnode->back, pos);
	
	if (pnode->front && brect_visible(pnode->front))
	  compute_visible_walls_rec(pnode->front, pos);
      break;
    } 
    
    
}

// pnode != 0
bool XEngine::brect_visible(BspTree::BspNode *pnode) {
  return visible_bwall(*pnode->brect[0]) || visible_bwall(*pnode->brect[1]) ||
	 visible_bwall(*pnode->brect[2]) || visible_bwall(*pnode->brect[3]);
}

bool XEngine::visible_wall(Wall& wall) {
  
  double dx[2], dy[2];
  double alignx[2], aligny[2];
  double distance[2], max_distance;
  int wall_proj_height[2];
  int top[2], bot[2];
  int proj_col[2];
  int left, right;
  double angle_p = player->angle;
  int left_col, right_col;
  double xdiff;
  double ydiff;
  double m_left, m_right;

  dx[0] = wall.points[0].x - player->pos.x;
  dy[0] = wall.points[0].y - player->pos.y;  
  dx[1] = wall.points[1].x - player->pos.x;
  dy[1] = wall.points[1].y - player->pos.y;  
    
  alignx[0] = dx[0] * cos_ang_p - dy[0] * sin_ang_p;
  aligny[0] = dx[0] * sin_ang_p + dy[0] * cos_ang_p;
   
  alignx[1] = dx[1] * cos_ang_p - dy[1] * sin_ang_p;
  aligny[1] = dx[1] * sin_ang_p + dy[1] * cos_ang_p;     
   
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
    
  if (max_distance <= MAX_DISTANCE) {
    return false;
  }

  wall.tpoints[0].x = distance[0];
  wall.tpoints[0].y = aligny[0];
  wall.tpoints[1].x = distance[1];
  wall.tpoints[1].y = aligny[1];
  wall.distance[0] = distance[0];
  wall.distance[1] = distance[1];
  
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
  
  wall_proj_height[left] = pp_distance * wall.height / distance[left];
  if (wall_proj_height[left] == 0)
    wall_proj_height[left] = 1;    
        
  bot[left] = pp_distance * player->height / distance[left] + vp_center;
  top[left] = bot[left] - wall_proj_height[left] + 1;  
    
  wall_proj_height[right] = pp_distance * wall.height / distance[right];
  if (wall_proj_height[right] == 0)
    wall_proj_height[right] = 1;    
        
  bot[right] = pp_distance * player->height / distance[right] + vp_center;
  top[right] = bot[right] - wall_proj_height[right] + 1;       
  
  wall.render_col[0] = proj_col[left];    
  wall.render_top_row[0] = top[left];
  wall.render_bot_row[0] = bot[left];
    
  wall.render_col[1] = proj_col[right];
  wall.render_top_row[1] = top[right];
  wall.render_bot_row[1] = bot[right];
             
  wall.left = left_col;
  wall.right = right_col;
    
  return true;          
}
    
bool XEngine::visible_bwall(Wall& wall) {
  
  double dx[2], dy[2];
  double alignx[2], aligny[2];
  double distance[2], max_distance;
  int top[2], bot[2];
  int proj_col[2];
  int left, right;
  double xdiff;
  double ydiff;
  double m_left, m_right;
    
  dx[0] = wall.points[0].x - player->pos.x;
  dy[0] = wall.points[0].y - player->pos.y;  
  dx[1] = wall.points[1].x - player->pos.x;
  dy[1] = wall.points[1].y - player->pos.y;  
    
  alignx[0] = dx[0] * cos_ang_p - dy[0] * sin_ang_p;
  aligny[0] = dx[0] * sin_ang_p + dy[0] * cos_ang_p;
   
  alignx[1] = dx[1] * cos_ang_p - dy[1] * sin_ang_p;
  aligny[1] = dx[1] * sin_ang_p + dy[1] * cos_ang_p;      
   
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
    
  if (max_distance <= MAX_DISTANCE) {
    return false;
  }

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
    distance[left] = 1;
  } else if (distance[right] < 0) {
    xdiff = alignx[right] - alignx[left];
    ydiff = aligny[right] - aligny[left];
    m_right = ydiff / xdiff;
    aligny[right] = aligny[right] + m_right * (1-alignx[right]);
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

void XEngine::render_wall(const Wall& wall) {
  
    unsigned int *screen_ptr;
    int left_col = wall.left;
    int right_col = wall.right;
	
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
    double woff;
    int span_height;
    
    double fytop, mtop;
    double fybot, mbot;
    int coldx, dytop, dybot;    
    int ytop, ybot;
    int color = wall.color;
    int col_left, col_right;
    int top_row_start, bot_row_start;
    int top_row_end, bot_row_end;
    double mdist;
    double dist;
    
    mdist = (wall.distance[right_col] - wall.distance[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]); 
      
    if (wall.render_col[left_col] < vp_left) {
      mtop = static_cast<double>(wall.render_top_row[right_col] - wall.render_top_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      mbot = static_cast<double>(wall.render_bot_row[right_col] - wall.render_bot_row[left_col]) / (wall.render_col[right_col] - wall.render_col[left_col]);
      top_row_start = wall.render_top_row[left_col] + mtop * (vp_left - wall.render_col[left_col]);
      bot_row_start = wall.render_bot_row[left_col] + mbot * (vp_left - wall.render_col[left_col]);
      dist = wall.distance[left_col] + (vp_left - wall.render_col[left_col]) * mdist;
      col_left = vp_left;
    } else {
      top_row_start = wall.render_top_row[left_col];
      bot_row_start = wall.render_bot_row[left_col];
      col_left = wall.render_col[left_col]; 
      dist = wall.distance[left_col];
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
/*   
    x1 = wall.tpoints[left_col].x;
    y1 = wall.tpoints[left_col].y;
    x2 = wall.tpoints[right_col].x;
    y2 = wall.tpoints[right_col].y;*/
   
    x1 = wall.tpoints[0].x;
    y1 = wall.tpoints[0].y;
    x2 = wall.tpoints[1].x;
    y2 = wall.tpoints[1].y;
    y4 = col_left - xsize / 2;
    
    wall_tex = reinterpret_cast<unsigned int*>(wall.tex->data);
    tex_width = wall.tex->width;
    tex_height = wall.tex->height;
    
    static bool clip[3600];
    memset(clip, 0, sizeof(bool) * xsize);
    
    for (int j=col_left; j<=col_right; ++j, dist += mdist, ++y4) {
      

      ytop = static_cast<int>(fytop + 0.5);
      ybot = static_cast<int>(fybot + 0.5);     
      fytop += mtop;
      fybot += mbot;
            
      if (ytop > z_lower[j]) {
	clip[j]=1;
	continue;
      }
	
      if (ybot < vp_top)
	continue;
      
      wall_proj_height = ybot - ytop + 1;
      wall_vtex_off = 0.0;
      wall_vtex_inc = wall.height / wall_proj_height;
      
      if (ytop < vp_top) {
	  wall_vtex_off += (vp_top - ytop) * wall_vtex_inc;
	  ytop = vp_top;
      }
	      
      if (ybot > z_lower[j])
	  ybot = z_lower[j];
      
      z_lower[j] = ytop - 1;
      
/*      
      int light_color = color;
      int intensity = (1 - dist / 1500) * NUM_LIGHT_LEVELS;
      if (intensity < 0)
	intensity = 0;
      scr_info->light_native(reinterpret_cast<unsigned char*>(&light_color), intensity);*/

  
      woff = (y4*x1 - pp_distance * y1) / (pp_distance * (y2 - y1) - y4*(x2 - x1));
      tex_col = static_cast<int>(fabs(woff) * wall.length) % tex_width;
      
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
      
    }
        
    int j;
    for (j=col_left; j<=col_right && clip[j]; ++j);
    
    if (j == col_right + 1)
      ++n_clipped_walls;
    
}

void XEngine::render_background() {
  
  double angle_p = player->angle;
  unsigned int *tex_ptr = reinterpret_cast<unsigned int *>(floor_tex->data); 
  double left_column_angle = col_data[vp_left].ang; // calcolo angolo colonna sx del viewport
  double cos_left_column_angle = col_data[vp_left].cos_ang;
  double sin_left_column_angle = col_data[vp_left].sin_ang;
  double cos_angle_p = cos(angle_p);
  double sin_angle_p = sin(angle_p);
  double cos_prod = cos_angle_p * cos_left_column_angle;
  double sin_prod = sin_angle_p * sin_left_column_angle;
  double sin_cos = sin_angle_p * cos_left_column_angle;
  double cos_sin = cos_angle_p * sin_left_column_angle;
  double inv_width = 1.0f / (vp_right - vp_left + 1);
  double radians = angle_p + left_column_angle;
  double distance;
  int xp = player->pos.x;
  int yp = player->pos.y;
  int height_p = player->height;
  
  for (int i=vp_center+1; i<=vp_bot; ++i) {
    float ratio = static_cast<float>(height_p) /(i - vp_center);
    
    // calcolo distanza corretta del punto sul pavimento
    // calcolo angolo nel world space
    // rotazione del vettore distanza e traslazione rispetto a (xp, yp)
    distance = ratio * pp_distance / cos_left_column_angle;  	
            
    double xl = xp + distance * (cos_prod - sin_prod);
    double yl = yp + distance * (sin_cos + cos_sin);
    
    double xr = xp + distance * (cos_prod + sin_prod);
    double yr = yp + distance * (sin_cos - cos_sin); 
    
    double dx = (xr - xl) * inv_width;
    double dy = (yr - yl) * inv_width;
        
    register unsigned int *screen_ptr = p_screen + i * xsize + vp_left;
    
    int fxl = (int)(xl * FXP_MUL);
    int fdx = (int)(dx * FXP_MUL);
    int fyl = (int)(yl * FXP_MUL);
    int fdy = (int)(dy * FXP_MUL);

    for (register int j=vp_left; j<=vp_right; ++j) {     
      *screen_ptr = *(tex_ptr + (((fyl>>FXP_SHIFT) & 0x3f)*64) + ((fxl>>FXP_SHIFT) & 0x3f));
      fxl += fdx;
      fyl += fdy;
      ++screen_ptr;
    }
   
  }
  
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
  
}

void XEngine::render_solid_background() {

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