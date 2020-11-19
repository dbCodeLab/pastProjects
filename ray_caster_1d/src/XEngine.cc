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

#define MAP_SIZE 50
#define GRID_SIZE 64
#define WALL_HEIGHT 64
#define RAY_LENGTH 1024

#define TEXTURE_WIDTH 64
#define TEXTURE_HEIGHT 64

#define FOV 60

XEngine::XEngine(int xsize, int ysize, XScreenRgbInfo *scr_info) :
		map_size(MAP_SIZE), grid_size(GRID_SIZE), wall_height(WALL_HEIGHT), fov(
				FOV)
{
	this->scr_info = scr_info;
	this->rasterizer = new XRasterizer(xsize, ysize, scr_info->p_screenbuf,
			scr_info->bytes_per_pixel);
	this->p_screen = reinterpret_cast<unsigned int*>(rasterizer->p_screenbuf);
	this->xsize = rasterizer->xsize;
	this->ysize = rasterizer->ysize;
	this->tex_loader = new XTextureLoaderPPM(scr_info);
	this->init_data();
}

void XEngine::update_position(int dir)
{
	xp += dir * xd * cos(angle_p);
	yp += dir * yd * sin(angle_p);
}

void XEngine::update_angle(int dir)
{
	angle_p += dir * angle_d;
	if (angle_p >= 2 * M_PI)
		angle_p -= 2 * M_PI;
	if (angle_p < 0)
		angle_p += 2 * M_PI;
}

void XEngine::update_height(int dir)
{
	height_p += dir;
}

void XEngine::update_vp(int dir)
{
	vp_center += dir;
	if (vp_center < vp_top)
		vp_center = vp_top;
	if (vp_center > vp_bot)
		vp_center = vp_bot;
}

double XEngine::deg_to_rad(int deg)
{
	return deg * (M_PI / 180);
}

void XEngine::init_data()
{

	//srand(time(0));   

	vp_left = VIEWPORT_LEFT_OFF;
	vp_right = xsize - VIEWPORT_RIGHT_OFF - 1;
	vp_top = VIEWPORT_TOP_OFF;
	vp_bot = ysize - VIEWPORT_BOT_OFF - 1;
	vp_center = ysize / 2;

	init_map();

	xp = yp = 96;
	xd = yd = 15;
	angle_p = 0.0f;
	angle_d = 0.05;
	height_p = 32;
	pp_distance = xsize / 2 / tan(deg_to_rad(FOV / 2));

	bot_wall = new int[xsize];
	top_wall = new int[xsize];

	setup_bitmaps();

	max_distance = sqrt(
			(map_size * grid_size) * (map_size * grid_size)
					+ (map_size * grid_size) * (map_size * grid_size));

	compute_wall_tex_offsets_table();

	setup_cols_data();
}

void XEngine::setup_cols_data()
{
	col_data = new col_inf[xsize];

	for (int col = vp_left; col <= vp_right; ++col) {
		col_data[col].ang = atan2(static_cast<float>((col - xsize / 2)),
				pp_distance);
		col_data[col].cos_ang = cos(col_data[col].ang);
		col_data[col].sin_ang = sin(col_data[col].ang);
	}

}

void XEngine::compute_wall_tex_offsets_table()
{
	col_offset = new int*[max_distance + 1];
	for (int i = 1; i != max_distance; ++i) {
		int height = pp_distance * wall_height / i;
		col_offset[i] = new int[height];
		float yratio = static_cast<float>(wall_height) / height;
		float t = 0.0f;
		for (int j = 0; j != height; ++j) {
			col_offset[i][j] = static_cast<int>(t);
			t += yratio;
		}
	}
}

void XEngine::setup_bitmaps()
{
	tex_width = TEXTURE_WIDTH;
	tex_height = TEXTURE_HEIGHT;
	tex_loader->load("res/wall.ppm");
	tex_wall = reinterpret_cast<unsigned int*>(tex_loader->data);
	tex_loader->load("res/floor.ppm");
	tex_floor = reinterpret_cast<unsigned int*>(tex_loader->data);
	tex_loader->load("res/ceiling.ppm");
	tex_ceiling = reinterpret_cast<unsigned int*>(tex_loader->data);
}

void XEngine::init_map()
{

	map = new int[map_size * map_size];

	memset(map, 0x0, map_size * map_size * sizeof(int));

	for (int i = 0; i != map_size; ++i) {
		map[i] = 1;
		map[i + (map_size - 1) * map_size] = 1;
		map[i * map_size] = 1;
		map[i * map_size + map_size - 1] = 1;
	}

	for (int i = 1; i != map_size - 1; ++i)
		for (int j = 1; j != map_size - 1; ++j)
			if (rand() % 10 == 0)
				map[i * map_size + j] = 1;

}

void XEngine::render()
{

	register unsigned int *screen_ptr;
	register unsigned int *tex_ptr;
	float radians;
	int distance;
	float inv_grid_size = 1.0f / grid_size;
	float cos_angle_p = cos(angle_p);
	float sin_angle_p = sin(angle_p);

	top_min = vp_bot + 1;
	bot_max = vp_top - 1;

	for (int col = vp_left; col <= vp_right; ++col) {

		float cos_col_angle = col_data[col].cos_ang;
		float sin_col_angle = col_data[col].sin_ang;
		float sin_radians = sin_angle_p * cos_col_angle
				+ cos_angle_p * sin_col_angle;
		float cos_radians = cos_angle_p * cos_col_angle
				- sin_angle_p * sin_col_angle;
		float inv_sin_radians = 1.0f / sin_radians;
		float inv_cos_radians = 1.0f / cos_radians;
		int x2 = RAY_LENGTH * cos_radians + xp;
		int y2 = RAY_LENGTH * sin_radians + yp;
		int xdiff = x2 - xp;
		int ydiff = y2 - yp;
		if (xdiff == 0)
			xdiff = 1;
		float slope = static_cast<float>(ydiff) / xdiff;
		if (slope == 0.0f)
			slope = 3.272e-4;

		// dati intersezioni fine map e grid map. nel ciclo di diffusione di un raggio si calcolano
		// intersezioni orizzontali e verticali.

		// posizione iniziale sulla grid
		int grid_x, grid_y;
		// punti di intersezione (4 valori: 2 per ciascun tipo di intersezione (vert/oriz))
		int xcross_x, ycross_y;
		float xcross_y, ycross_x;
		// distanze punti calcolate dalla pos del giocatore
		float xdist, ydist;
		// posizioni sulla grid
		int xmaze_x, ymaze_y;
		float xmaze_y, ymaze_x;

		int wall_col;

		// offset fine map
		int grid_x_xoffs, grid_y_yoffs;
		float grid_x_yoffs, grid_y_xoffs;

		// offset grid map
		int xmaze_x_offs, ymaze_y_offs;

		int xfactor, yfactor;

		if (xdiff > 0) {
			grid_x = (static_cast<int>(xp) / grid_size) * grid_size + grid_size;
			xfactor = 0;
			grid_x_xoffs = grid_size;
			xmaze_x_offs = 1;
			grid_y_xoffs = grid_size / slope;
			if (grid_y_xoffs < 0)
				grid_y_xoffs = -grid_y_xoffs;
		}
		else {
			grid_x = (static_cast<int>(xp) / grid_size) * grid_size;
			xfactor = -1;
			grid_x_xoffs = -grid_size;
			xmaze_x_offs = -1;
			grid_y_xoffs = grid_size / slope;
			if (grid_y_xoffs > 0)
				grid_y_xoffs = -grid_y_xoffs;
		}

		if (ydiff > 0) {
			grid_y = (static_cast<int>(yp) / grid_size) * grid_size + grid_size;
			yfactor = 0;
			grid_y_yoffs = grid_size;
			ymaze_y_offs = 1;
			grid_x_yoffs = slope * grid_size;
			if (grid_x_yoffs < 0)
				grid_x_yoffs = -grid_x_yoffs;
		}
		else {
			grid_y = (static_cast<int>(yp) / grid_size) * grid_size;
			yfactor = -1;
			grid_y_yoffs = -grid_size;
			ymaze_y_offs = -1;
			grid_x_yoffs = slope * grid_size;
			if (grid_x_yoffs > 0)
				grid_x_yoffs = -grid_x_yoffs;
		}

		float x_len_dist = grid_size * inv_cos_radians;
		if (x_len_dist < 0)
			x_len_dist = -x_len_dist;

		float y_len_dist = grid_size * inv_sin_radians;
		if (y_len_dist < 0)
			y_len_dist = -y_len_dist;

		xdist = (xp - grid_x) * inv_cos_radians;
		if (xdist < 0)
			xdist = -xdist;

		ydist = (yp - grid_y) * inv_sin_radians;
		if (ydist < 0)
			ydist = -ydist;

		// primo punto di intersezione sulla fine map
		xcross_y = yp + slope * (grid_x - xp);
		grid_x += xfactor;
		xcross_x = grid_x;

		ycross_x = xp + (grid_y - yp) / slope;
		grid_y += yfactor;
		ycross_y = grid_y;

		// posizione iniziale grid map
		xmaze_x = xcross_x * inv_grid_size;
		ymaze_y = ycross_y * inv_grid_size;
		xmaze_y = xcross_y * inv_grid_size;
		ymaze_x = ycross_x * inv_grid_size;

		float x_yratio = grid_x_yoffs * inv_grid_size;
		float y_xratio = grid_y_xoffs * inv_grid_size;

		for (;;) {

			if (xdist < ydist) {

				if (map[xmaze_x + static_cast<int>(xmaze_y) * map_size]) {
					wall_col = static_cast<int>(xcross_y) % grid_size;
					distance = xdist * cos_col_angle;
					if (distance == 0)
						distance = 1;
					break;
				}

				xcross_x += grid_x_xoffs;
				xcross_y += grid_x_yoffs;
				xdist += x_len_dist;
				xmaze_x += xmaze_x_offs;
				xmaze_y += x_yratio;

			}
			else {

				if (map[static_cast<int>(ymaze_x) + ymaze_y * map_size]) {
					wall_col = static_cast<int>(ycross_x) % grid_size;
					distance = ydist * cos_col_angle;
					if (distance == 0)
						distance = 1;
					break;
				}

				ycross_y += grid_y_yoffs;
				ycross_x += grid_y_xoffs;
				ydist += y_len_dist;
				ymaze_y += ymaze_y_offs;
				ymaze_x += y_xratio;

			}

		}

		int height = pp_distance * wall_height / distance;

		int bot = pp_distance * height_p / distance + vp_center;
		int top = bot - height + 1;

		// render in [top, bot]

		int t = 0;

		if (top < vp_top) {
			height -= (vp_top - top);
			t += (vp_top - top);
			top = vp_top;
		}

		if (bot > vp_bot) {
			height -= (bot - vp_bot);
			bot = vp_bot;
		}

		if (top < top_min)
			top_min = top;

		if (bot > bot_max)
			bot_max = bot;

		top_wall[col] = top;
		bot_wall[col] = bot;

		/* rendering wall casting senza offset table: nota t nel caso di clipping in alto deve essere
		 * aggiornato con t += (vp_top - top)
		 */
		screen_ptr = p_screen + top * xsize + col;
		tex_ptr = tex_wall + wall_col * tex_width;
		int *dist_offsets = col_offset[distance] + t;

		// wall casting con offset table no unroll
		for (register int i = 0; i != height; ++i) {
			*screen_ptr = *(tex_ptr + *dist_offsets++);
			screen_ptr += xsize;
		}

	}

	// rendering floor per righe, optimized
	tex_ptr = tex_floor;
	float cos_left_column_angle = col_data[vp_left].cos_ang;
	float sin_left_column_angle = col_data[vp_left].sin_ang;
	float cos_prod = cos_angle_p * cos_left_column_angle;
	float sin_prod = sin_angle_p * sin_left_column_angle;
	float sin_cos = sin_angle_p * cos_left_column_angle;
	float cos_sin = cos_angle_p * sin_left_column_angle;
	float inv_width = 1.0f / (vp_right - vp_left);

	for (int i = vp_center; i <= vp_bot; ++i) {
		float ratio = static_cast<float>(height_p) / (i - vp_center);

		// calcolo distanza corretta del punto sul pavimento
		// calcolo angolo nel world space
		// rotazione del vettore distanza e traslazione rispetto a (xp, yp)
		distance = ratio * pp_distance / cos_left_column_angle;

		float xl = xp + distance * (cos_prod - sin_prod);
		float yl = yp + distance * (sin_cos + cos_sin);

		float xr = xp + distance * (cos_prod + sin_prod);
		float yr = yp + distance * (sin_cos - cos_sin);

		float dx = (xr - xl) * inv_width;
		float dy = (yr - yl) * inv_width;

		screen_ptr = p_screen + i * xsize + vp_left;

		int fxl = (int) (xl * 65536);
		int fdx = (int) (dx * 65536);
		int fyl = (int) (yl * 65536);
		int fdy = (int) (dy * 65536);

		for (register int j = vp_left; j <= vp_right; ++j) {
			if (bot_wall[j] < i) {
				//int t = (static_cast<int>(yl) % grid_size) * 64 + (static_cast<int>(xl) % grid_size);
				//*screen_ptr = *(tex_ptr + t);
				*screen_ptr = *(tex_ptr + (((fyl >> 16) & 0x3f) * 64)
						+ ((fxl >> 16) & 0x3f));
			}
			fxl += fdx;
			fyl += fdy;
			++screen_ptr;
		}

	}

	// rendering ceiling per righe, optimized
	tex_ptr = tex_ceiling;
	for (int i = vp_center - 1; i >= vp_top; --i) {
		float ratio = static_cast<float>(grid_size - height_p)
				/ (vp_center - i);

		distance = ratio * pp_distance / cos_left_column_angle;

		float xl = xp + distance * (cos_prod - sin_prod);
		float yl = yp + distance * (sin_cos + cos_sin);

		float xr = xp + distance * (cos_prod + sin_prod);
		float yr = yp + distance * (sin_cos - cos_sin);

		float dx = (xr - xl) * inv_width;
		float dy = (yr - yl) * inv_width;

		screen_ptr = p_screen + i * xsize + vp_left;

		int fxl = (int) (xl * 65536);
		int fdx = (int) (dx * 65536);
		int fyl = (int) (yl * 65536);
		int fdy = (int) (dy * 65536);

		for (register int j = vp_left; j <= vp_right; ++j) {
			if (top_wall[j] > i) {
				//int t = (static_cast<int>(yl) % grid_size) * tex_width + (static_cast<int>(xl) % grid_size);
				*screen_ptr = *(tex_ptr + (((fyl >> 16) & 0x3f) * 64)
						+ ((fxl >> 16) & 0x3f));
			}
			fxl += fdx;
			fyl += fdy;
			++screen_ptr;
		}
	}

}

