#include "XEngine.h"

#include <cstdlib>
#include <fstream>

#include <X11/Xlib.h>
#include <X11/Intrinsic.h>

#include "XTextureLoaderPPM.h"

XEngine::XEngine(int xsize, int ysize, XScreenRgbInfo *scr_info)
{
	this->scr_info = scr_info;
	this->rasterizer = new XRasterizer(xsize, ysize, scr_info->p_screenbuf,
			scr_info->bytes_per_pixel);
	this->tex_loader = new XTextureLoaderPPM(scr_info);
	this->init_data();
	this->p_screen = reinterpret_cast<unsigned int*>(rasterizer->p_screenbuf);
	this->xsize = rasterizer->xsize;
	this->ysize = rasterizer->ysize;
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

void XEngine::load_bitmap()
{
	tex_loader->load("res/wall.ppm");
}

void XEngine::init_data()
{
	srand(time(0));
	map_size = 16;
	map = new int[map_size * map_size];
	init_map();
	grid_size = 64;

	xp = yp = 96;
	xd = yd = 10;
	angle_p = 0.0f;
	angle_d = 0.052;
	height_p = 32;

	pp_distance = rasterizer->xsize / 2 / tan(deg_to_rad(30));

	wall_height = 64;
	wall_color = scr_info->ext_to_native(255, 0, 0);

	vp_left = 20;
	vp_right = rasterizer->xsize - 20;
	vp_top = 20;
	vp_bot = rasterizer->ysize - 20;
	vp_center = rasterizer->ysize / 2;

	load_bitmap();
}

void XEngine::render()
{

	int grid_x, grid_y;
	float xcross_x, xcross_y, ycross_x, ycross_y;
	float xd, yd;
	float xdist, ydist;
	int xmaze, ymaze;
	int distance;
	int sy, offset;
	int wall_c;
	int max_light;

	for (int col = vp_left; col != vp_right; ++col) {

		float columnn_angle = atan2(
				static_cast<float>((col - rasterizer->xsize / 2)), pp_distance);

		float radians = angle_p + columnn_angle;
		int x2 = 1024 * cos(radians);
		int y2 = 1024 * sin(radians);
		x2 += xp;
		y2 += yp;
		float x = xp;
		float y = yp;
		int xdiff = x2 - xp;
		int ydiff = y2 - yp;
		if (xdiff == 0)
			xdiff = 1;
		float slope = static_cast<float>(ydiff) / xdiff;
		if (slope == 0.0f)
			slope = .00001f;
		wall_c = wall_color;

		for (;;) {
			if (xdiff > 0)
				grid_x = (static_cast<int>(x) / grid_size) * grid_size
						+ grid_size;
			else
				grid_x = (static_cast<int>(x) / grid_size) * grid_size - 1;

			if (ydiff > 0)
				grid_y = (static_cast<int>(y) / grid_size) * grid_size
						+ grid_size;
			else
				grid_y = (static_cast<int>(y) / grid_size) * grid_size - 1;

			xcross_x = grid_x;
			xcross_y = y + slope * (grid_x - x);
			ycross_x = x + (grid_y - y) / slope;
			ycross_y = grid_y;

			xd = x - xcross_x;
			yd = y - xcross_y;
			xdist = sqrt(xd * xd + yd * yd);

			xd = x - ycross_x;
			yd = y - ycross_y;
			ydist = sqrt(xd * xd + yd * yd);

			if (xdist < ydist) {
				xmaze = xcross_x / grid_size;
				ymaze = xcross_y / grid_size;

				x = xcross_x;
				y = xcross_y;

				if (map[xmaze + ymaze * map_size]) {
					scr_info->light_native(
							reinterpret_cast<unsigned char*>(&wall_c),
							MAX_LIGHT_LEVELS);
					max_light = MAX_LIGHT_LEVELS;
					break;
				}

			}
			else {
				xmaze = ycross_x / grid_size;
				ymaze = ycross_y / grid_size;

				x = ycross_x;
				y = ycross_y;

				if (map[xmaze + ymaze * map_size]) {
					scr_info->light_native(
							reinterpret_cast<unsigned char*>(&wall_c),
							MAX_LIGHT_LEVELS - 30);
					max_light = MAX_LIGHT_LEVELS - 30;
					break;
				}

			}
		}

		xd = x - xp;
		yd = y - yp;

		distance = sqrt(xd * xd + yd * yd) * cos(columnn_angle);

		if (distance == 0)
			distance = 1;

		int height = pp_distance * wall_height / distance;

		int bot = pp_distance * height_p / distance + vp_center;
		int top = bot - height;

		if (top < vp_top) {
			height -= (vp_top - top);
			top = vp_top;
		}

		if (top + height > vp_bot) {
			height -= (bot - vp_bot);
		}

		scr_info->light_native(reinterpret_cast<unsigned char*>(&wall_c),
				max_light - ((float) distance / 1024) * max_light);

		unsigned int *screen_ptr = p_screen + top * xsize + col;
		for (int i = 0; i != height; ++i) {
			*screen_ptr = wall_c;
			screen_ptr += xsize;
		}
	}

}

void XEngine::init_map()
{

	memset(map, 0x0, map_size * map_size * sizeof(int));

	for (int i = 0; i != map_size; ++i) {
		map[i] = 1;
		map[i + (map_size - 1) * map_size] = 1;
		map[i * map_size] = 1;
		map[i * map_size + map_size - 1] = 1;
	}

	for (int i = 1; i != map_size - 1; ++i)
		for (int j = 1; j != map_size - 1; ++j)
			if (rand() % 4 == 0)
				map[i * map_size + j] = 1;

}
