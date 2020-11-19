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
#define PLAYER_HEIGHT 32
#define RAY_LENGTH 1024

#define TEXTURE_WIDTH 64
#define TEXTURE_HEIGHT 64

#define FOV 60

#define FXP_SHIFT 16
#define FXP_MUL (1<<FXP_SHIFT)

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

	xview = vp_right - vp_left + 1;
	yview = vp_bot - vp_top + 1;

	init_map();

	xp = yp = 96;
	xd = yd = 15;
	angle_p = 0.0f;
	angle_d = 0.05;
	height_p = PLAYER_HEIGHT;
	pp_distance = xsize / 2 / tan(deg_to_rad(FOV / 2));

	setup_bitmaps();

	max_distance = sqrt(
			(map_size * grid_size) * (map_size * grid_size)
					+ (map_size * grid_size) * (map_size * grid_size));

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

	slice_data = new col_slice[xsize];

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

	x_grid = new int[map_size * (map_size + 1)];
	y_grid = new int[(map_size + 1) * map_size];

	memset(x_grid, 0x0, (map_size + 1) * map_size * sizeof(int));
	memset(y_grid, 0x0, (map_size + 1) * map_size * sizeof(int));

	for (int i = 0; i != map_size; ++i) {
		x_grid[i * (map_size + 1)] = 1;
		x_grid[i * (map_size + 1) + 1] = 1;
		x_grid[i * (map_size + 1) + map_size] = 1;
		x_grid[i * (map_size + 1) + map_size - 1] = 1;

		y_grid[i] = 1;
		y_grid[map_size + i] = 1;
		y_grid[map_size * map_size + i] = 1;
		y_grid[map_size * (map_size - 1) + i] = 1;
	}

	for (int i = 1; i != map_size - 1; ++i) {
		for (int j = 1; j != map_size - 1; ++j)
			if (rand() % 10 == 0) {
				x_grid[(map_size + 1) * i + j] = 1;
				x_grid[(map_size + 1) * i + j + 1] = 1;
				y_grid[map_size * i + j] = 1;
				y_grid[map_size * (i + 1) + j] = 1;
			}
	}

}

void XEngine::compute_view()
{

	float radians;
	float distance;
	float inv_grid_size = 1.0f / grid_size;

	cos_angle_p = cos(angle_p);
	sin_angle_p = sin(angle_p);
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
		float slope = sin_radians / cos_radians;
		if (slope == 0.0f)
			slope = 0.0001; //3.272e-4;

		float ang = angle_p + col_data[col].ang;
		if (ang < 0)
			ang += 2 * M_PI;
		if (ang >= 2 * M_PI)
			ang -= 2 * M_PI;

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

		if (ang <= M_PI / 2 || ang >= 3 * M_PI / 2) {
			grid_x = (static_cast<int>(xp) / grid_size) * grid_size + grid_size;
			grid_x_xoffs = grid_size;
			xmaze_x_offs = 1;
			grid_y_xoffs = grid_size / slope;
			if (grid_y_xoffs < 0)
				grid_y_xoffs = -grid_y_xoffs;
		}
		else {
			grid_x = (static_cast<int>(xp) / grid_size) * grid_size;
			grid_x_xoffs = -grid_size;
			xmaze_x_offs = -1;
			grid_y_xoffs = grid_size / slope;
			if (grid_y_xoffs > 0)
				grid_y_xoffs = -grid_y_xoffs;
		}

		if (ang <= M_PI) {
			grid_y = (static_cast<int>(yp) / grid_size) * grid_size + grid_size;
			grid_y_yoffs = grid_size;
			ymaze_y_offs = 1;
			grid_x_yoffs = slope * grid_size;
			if (grid_x_yoffs < 0)
				grid_x_yoffs = -grid_x_yoffs;
		}
		else {
			grid_y = (static_cast<int>(yp) / grid_size) * grid_size;
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
		xcross_x = grid_x;
		xcross_y = yp + slope * (grid_x - xp);
		ycross_x = xp + (grid_y - yp) / slope;
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

				if (x_grid[xmaze_x + static_cast<int>(xmaze_y) * (map_size + 1)]) {
					wall_col = static_cast<int>(xcross_y) % grid_size;
					distance = xdist * cos_col_angle;
					if (distance == 0.0f)
						distance = 1.0f;
					break;
				}

				xcross_x += grid_x_xoffs;
				xcross_y += grid_x_yoffs;
				xdist += x_len_dist;
				xmaze_x += xmaze_x_offs;
				xmaze_y += x_yratio;

			}
			else {

				if (y_grid[static_cast<int>(ymaze_x) + ymaze_y * map_size]) {
					wall_col = static_cast<int>(ycross_x) % grid_size;
					distance = ydist * cos_col_angle;
					if (distance == 0.0f)
						distance = 1.0f;
					break;
				}

				ycross_y += grid_y_yoffs;
				ycross_x += grid_y_xoffs;
				ydist += y_len_dist;
				ymaze_y += ymaze_y_offs;
				ymaze_x += y_xratio;

			}

		}

		int wall_proj_height = pp_distance * wall_height / distance;
		if (wall_proj_height == 0)
			wall_proj_height = 1;

		int bot = pp_distance * height_p / distance + vp_center;
		int top = bot - wall_proj_height + 1;
		float wall_col_inc = static_cast<float>(wall_height) / wall_proj_height;

		// [top, bot]

		float wall_tex_off = 0;

		if (top < vp_top) {
			//wall_proj_height -= (vp_top - top);
			wall_tex_off += (vp_top - top) * wall_col_inc;
			top = vp_top;
		}

		if (bot > vp_bot) {
			//wall_proj_height -= (bot - vp_bot);
			bot = vp_bot;
		}

		if (top < top_min)
			top_min = top;

		if (bot > bot_max)
			bot_max = bot;

		slice_data[col].top = top;
		slice_data[col].bot = bot;
		slice_data[col].tex_ptr = tex_wall + wall_col * tex_width;
		slice_data[col].tex_col_off = wall_tex_off * FXP_MUL;
		slice_data[col].tex_col_inc = wall_col_inc * FXP_MUL;
	}

}

// renderizza per righe
void XEngine::render_view()
{

	float cos_left_column_angle = col_data[vp_left].cos_ang;
	float sin_left_column_angle = col_data[vp_left].sin_ang;
	float cos_prod = cos_angle_p * cos_left_column_angle;
	float sin_prod = sin_angle_p * sin_left_column_angle;
	float sin_cos = sin_angle_p * cos_left_column_angle;
	float cos_sin = cos_angle_p * sin_left_column_angle;
	float inv_width = 1.0f / (vp_right - vp_left);
	float ratio;
	int distance;
	float xl;
	float yl;
	float xr;
	float yr;
	float dx;
	float dy;
	int fxl;
	int fdx;
	int fyl;
	int fdy;

	unsigned int *screen_row_ptr = p_screen + vp_left + vp_top * xsize;
	unsigned int *screen_ptr = screen_row_ptr;
	unsigned int *tex_ptr = tex_ceiling;
	int i;

	for (i = vp_top; i <= vp_center; ++i, screen_row_ptr += xsize, screen_ptr =
			screen_row_ptr) {
		ratio = static_cast<float>(grid_size - height_p) / (vp_center - i);
		distance = ratio * pp_distance / cos_left_column_angle;
		xl = xp + distance * (cos_prod - sin_prod);
		yl = yp + distance * (sin_cos + cos_sin);
		xr = xp + distance * (cos_prod + sin_prod);
		yr = yp + distance * (sin_cos - cos_sin);
		dx = (xr - xl) * inv_width;
		dy = (yr - yl) * inv_width;

		fxl = (int) (xl * FXP_MUL);
		fdx = (int) (dx * FXP_MUL);
		fyl = (int) (yl * FXP_MUL);
		fdy = (int) (dy * FXP_MUL);

		register col_slice *slice_ptr = slice_data + vp_left;

		register int j = xview;

		if (i < top_min) {
			while (j--) {
				*screen_ptr++ = *(tex_ptr + (((fyl >> FXP_SHIFT) & 0x3f) * 64)
						+ ((fxl >> FXP_SHIFT) & 0x3f));
				fxl += fdx;
				fyl += fdy;
			}
		}
		else {
			for (; j--; slice_ptr++) {
				if (i < slice_ptr->top) {
					*screen_ptr++ = *(tex_ptr
							+ (((fyl >> FXP_SHIFT) & 0x3f) * 64)
							+ ((fxl >> FXP_SHIFT) & 0x3f));
				}
				else {
					*screen_ptr++ = *(slice_ptr->tex_ptr
							+ (slice_ptr->tex_col_off >> FXP_SHIFT));
					slice_ptr->tex_col_off += slice_ptr->tex_col_inc;
				}
				fxl += fdx;
				fyl += fdy;
			}
		}

	}

	tex_ptr = tex_floor;

	for (; i <= vp_bot; ++i, screen_row_ptr += xsize, screen_ptr =
			screen_row_ptr) {
		ratio = static_cast<float>(height_p) / (i - vp_center);
		distance = ratio * pp_distance / cos_left_column_angle;
		xl = xp + distance * (cos_prod - sin_prod);
		yl = yp + distance * (sin_cos + cos_sin);
		xr = xp + distance * (cos_prod + sin_prod);
		yr = yp + distance * (sin_cos - cos_sin);

		dx = (xr - xl) * inv_width;
		dy = (yr - yl) * inv_width;

		fxl = (int) (xl * FXP_MUL);
		fdx = (int) (dx * FXP_MUL);
		fyl = (int) (yl * FXP_MUL);
		fdy = (int) (dy * FXP_MUL);

		col_slice *slice_ptr = slice_data + vp_left;

		register int j = xview;

		if (i > bot_max) {
			while (j--) {
				*screen_ptr++ = *(tex_ptr + (((fyl >> FXP_SHIFT) & 0x3f) * 64)
						+ ((fxl >> FXP_SHIFT) & 0x3f));
				fxl += fdx;
				fyl += fdy;
			}
		}
		else {
			for (; j--; slice_ptr++) {
				if (i > slice_ptr->bot) {
					*screen_ptr++ = *(tex_ptr
							+ (((fyl >> FXP_SHIFT) & 0x3f) * 64)
							+ ((fxl >> FXP_SHIFT) & 0x3f));
				}
				else {
					*screen_ptr++ = *(slice_ptr->tex_ptr
							+ (slice_ptr->tex_col_off >> FXP_SHIFT));
					slice_ptr->tex_col_off += slice_ptr->tex_col_inc;
				}
				fxl += fdx;
				fyl += fdy;
			}
		}
	}

}

// renderizza prima pavimento e soffitto per righe, poi i muri per colonne
void XEngine::render_view2()
{

	float cos_left_column_angle = col_data[vp_left].cos_ang;
	float sin_left_column_angle = col_data[vp_left].sin_ang;
	float cos_prod = cos_angle_p * cos_left_column_angle;
	float sin_prod = sin_angle_p * sin_left_column_angle;
	float sin_cos = sin_angle_p * cos_left_column_angle;
	float cos_sin = cos_angle_p * sin_left_column_angle;
	float inv_width = 1.0f / (vp_right - vp_left);
	float ratio;
	int distance;
	float xl;
	float yl;
	float xr;
	float yr;
	float dx;
	float dy;
	int fxl;
	int fdx;
	int fyl;
	int fdy;

	unsigned int *screen_row_ptr = p_screen + vp_left + vp_top * xsize;
	unsigned int *screen_ptr = screen_row_ptr;
	unsigned int *tex_ptr = tex_ceiling;
	int i;

	for (i = vp_top; i <= vp_center; ++i, screen_row_ptr += xsize, screen_ptr =
			screen_row_ptr) {
		ratio = static_cast<float>(grid_size - height_p) / (vp_center - i);
		distance = ratio * pp_distance / cos_left_column_angle;
		xl = xp + distance * (cos_prod - sin_prod);
		yl = yp + distance * (sin_cos + cos_sin);
		xr = xp + distance * (cos_prod + sin_prod);
		yr = yp + distance * (sin_cos - cos_sin);
		dx = (xr - xl) * inv_width;
		dy = (yr - yl) * inv_width;

		fxl = (int) (xl * FXP_MUL);
		fdx = (int) (dx * FXP_MUL);
		fyl = (int) (yl * FXP_MUL);
		fdy = (int) (dy * FXP_MUL);

		register int j = xview;

		while (j--) {
			*screen_ptr++ = *(tex_ptr + (((fyl >> FXP_SHIFT) & 0x3f) * 64)
					+ ((fxl >> FXP_SHIFT) & 0x3f));
			fxl += fdx;
			fyl += fdy;
		}

	}

	tex_ptr = tex_floor;

	for (; i <= vp_bot; ++i, screen_row_ptr += xsize, screen_ptr =
			screen_row_ptr) {
		ratio = static_cast<float>(height_p) / (i - vp_center);
		distance = ratio * pp_distance / cos_left_column_angle;
		xl = xp + distance * (cos_prod - sin_prod);
		yl = yp + distance * (sin_cos + cos_sin);
		xr = xp + distance * (cos_prod + sin_prod);
		yr = yp + distance * (sin_cos - cos_sin);

		dx = (xr - xl) * inv_width;
		dy = (yr - yl) * inv_width;

		fxl = (int) (xl * FXP_MUL);
		fdx = (int) (dx * FXP_MUL);
		fyl = (int) (yl * FXP_MUL);
		fdy = (int) (dy * FXP_MUL);

		register int j = xview;

		while (j--) {
			*screen_ptr++ = *(tex_ptr + (((fyl >> FXP_SHIFT) & 0x3f) * 64)
					+ ((fxl >> FXP_SHIFT) & 0x3f));
			fxl += fdx;
			fyl += fdy;
		}

	}

	col_slice *slice_ptr = slice_data + vp_left;
	unsigned int *screen_col_ptr = p_screen + vp_left;
	register int j = xview;

	for (; j--; ++slice_ptr, ++screen_col_ptr) {
		screen_row_ptr = screen_col_ptr + slice_ptr->top * xsize;
		int height = slice_ptr->bot - slice_ptr->top + 1;
		int off = slice_ptr->tex_col_off;
		int inc = slice_ptr->tex_col_inc;
		tex_ptr = slice_ptr->tex_ptr;
		while (height--) {
			*screen_row_ptr = *(tex_ptr + (off >> FXP_SHIFT));
			off += inc;
			screen_row_ptr += xsize;
		}
	}

}
