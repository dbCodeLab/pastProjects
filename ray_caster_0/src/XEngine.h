#ifndef ENGINE_H
#define ENGINE_H

#include "XScreenRgbInfo.h"
#include "XRasterizer.h"
#include "XTextureLoader.h"

#include <cmath>
#include <iostream>

class XEngine
{
public:

	XEngine(int xsize, int ysize, XScreenRgbInfo *scr_info);

	void draw_point(int x, int y, unsigned long col)
	{
		rasterizer->draw_point(x, y, col);
	}

	void draw_line(int x0, int y0, int x1, int y1, unsigned long col)
	{
		rasterizer->draw_line(x0, y0, x1, y1, col);
	}

	void clear_screen()
	{
		rasterizer->clear_buffer();
	}

	void render_screen()
	{
		render();
	}

	void update_position(int dir);

	void update_angle(int dir);

	void update_height(int dir);

private:
	XScreenRgbInfo *scr_info;
	XRasterizer *rasterizer;
	XTextureLoader *tex_loader;

	double deg_to_rad(int deg)
	{
		return deg * (M_PI / 180);
	}

	void load_bitmap();

	unsigned int *p_screen;
	int xsize, ysize;

	int *map;
	int map_size;
	int grid_size;
	int xp, yp, height_p, pp_distance;
	int xd, yd;
	float angle_p, angle_d;
	int wall_color;
	int wall_height;
	int vp_left, vp_right, vp_top, vp_bot, vp_center;

	void init_map();
	void render();
	void init_data();

};

#endif
