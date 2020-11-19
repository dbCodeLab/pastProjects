#ifndef XTEXTURE_LOADER_PPM_H
#define XTEXTURE_LOADER_PPM_H

#include "../src/XTextureLoader.h"

class XTextureLoaderPPM: public XTextureLoader
{
public:
	XTextureLoaderPPM(XScreenRgbInfo *scr_info) :
			XTextureLoader(scr_info)
	{
	}
	void load(const char *fname);

	int process_tok(char *tok);
	unsigned char *cur_pdata;
	int state;
	int cur_r, cur_g, cur_b;
};

#endif
