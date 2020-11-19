#include "../src/XApplication.h"

# include <sys/ipc.h>
# include <sys/shm.h>
#include <iostream>
#include <cstdlib>

using std::cout;
using std::endl;

void XApplication::create_window()
{
	XPixmapFormatValues *pixmap_formats;
	int i, count;
	const int bits_per_byte = 8;

	dpy = XOpenDisplay(NULL);
	gc = DefaultGC(dpy, 0);

	pixmap_formats = XListPixmapFormats(dpy, &count);

	for (int i = 0; i != count; ++i) {
		if (pixmap_formats[i].depth == COLOR_DEPTH) {
			screen.depth = COLOR_DEPTH;
			screen.bytespp = pixmap_formats[i].bits_per_pixel / bits_per_byte;
			screen.scanline_pad = pixmap_formats[i].scanline_pad;
		}
	}

	XFree(pixmap_formats);

	vis = DefaultVisual(dpy, 0);

	/*
	 cout << "Display depth = " << screen.depth << endl;
	 cout << "Bytes per pixel = " << img.bytespp << endl;
	 switch(vis->c_class) {
	 case PseudoColor: cout << "Vis is pseudocolor" << endl;break;
	 case StaticColor: cout << "Vis is StaticColor" << endl;break;
	 case GrayScale: cout << "Vis is GrayScale" << endl;break;
	 case StaticGray: cout << "Vis is StaticGray" << endl;break;
	 case DirectColor: cout << "Vis is DirectColor" << endl;break;
	 case TrueColor: cout << "Vis is TrueColor" << endl;break;
	 }
	 */

	w = XCreateWindow(dpy, DefaultRootWindow(dpy), START_X, START_Y,
			screen_xsize, screen_ysize, 0, COLOR_DEPTH, CopyFromParent, vis, 0,
			NULL);

	XStoreName(dpy, w, name.c_str());
	XMapWindow(dpy, w);

#ifdef SHM_EXT
    cout << "shm" << endl;
    init_shm_ximg();
    screen.buffer = reinterpret_cast<unsigned char *>(screen.ximg->data);
  #else
	cout << "no shm" << endl;
	init_ximg();
#endif

	XVisualInfo vi;

	if (!XMatchVisualInfo(dpy, DefaultScreen(dpy), screen.depth, TrueColor,
			&vi))
		exit(-1);

	scr_info = new XScreenRgbInfo(vis->red_mask, vis->green_mask,
			vis->blue_mask, screen.bytespp, vi.depth / BITS_PER_BYTE,
			screen.buffer);

	engine = new XEngine(screen_xsize, screen_ysize, scr_info);

}

XApplication::~XApplication()
{
	delete scr_info;
#ifdef SHM_EXT
    free_shm_ximg();
  #else
	free_ximg();
#endif
	XCloseDisplay(dpy);
}

void XApplication::init_ximg()
{

	screen.buffer = new unsigned char[screen_xsize * screen_ysize
			* screen.bytespp];
	screen.ximg = XCreateImage(dpy, vis, screen.depth, ZPixmap, 0,
			reinterpret_cast<char*>(screen.buffer), screen_xsize, screen_ysize,
			screen.scanline_pad, 0);
}

void XApplication::free_ximg()
{
	XDestroyImage(screen.ximg);
}

#ifdef SHM_EXT
void XApplication::init_shm_ximg() {

  screen.ximg = XShmCreateImage(dpy, vis, screen.depth, ZPixmap, 0, &shminfo, screen_xsize, screen_ysize);

  shminfo.shmid = shmget(IPC_PRIVATE, screen.ximg->bytes_per_line*screen.ximg->height,
                         IPC_CREAT | 0777 );
  if(shminfo.shmid < 0) {
    cout << "couldn't allocate shared memory\n" << endl;
    XDestroyImage(screen.ximg);
    screen.ximg = NULL;
  } else {

    // attach, and check for errrors
    shminfo.shmaddr = screen.ximg->data = (char *)shmat(shminfo.shmid, 0, 0);
    if(shminfo.shmaddr == reinterpret_cast<char *>(-1)) {
      cout << "couldn't allocate shared memory\n" << endl;
      XDestroyImage(screen.ximg);
      screen.ximg = NULL;
    } else {
      // set as read/write, and attach to the display
      shminfo.readOnly = False;
      XShmAttach(dpy, &shminfo);
    }
  }

}
#endif

#ifdef SHM_EXT
void XApplication::free_shm_ximg() {
  XShmDetach(dpy, &shminfo);
  XDestroyImage(screen.ximg);
  shmdt(shminfo.shmaddr);
}
#endif

void XApplication::events_notification_request()
{
	XSelectInput(dpy, w, KeyPressMask | ButtonPressMask);
}

void XApplication::event_loop()
{
	XEvent event;
	char ch;
	KeySym keysym;
	XComposeStatus xcompstat;

	while (1) {
		if (XCheckWindowEvent(dpy, w, KeyPressMask, &event)) {
			XLookupString(&event.xkey, &ch, 1, &keysym, &xcompstat);
			switch (ch)
			{
			case 'q':
				exit(0);
			case 'a':
				engine->update_angle(-1);
				break;
			case 'd':
				engine->update_angle(+1);
				break;
			case 'w':
				engine->update_position(+1);
				break;
			case 's':
				engine->update_position(-1);
				break;
			case 'x':
				engine->update_height(+1);
				break;
			case 'c':
				engine->update_height(-1);
				break;
			}
		}

		if (XCheckWindowEvent(dpy, w, ButtonPress, &event)) {

		}

		engine->clear_screen();
		engine->render_screen();

#ifdef SHM_EXT
    XShmPutImage(dpy, w, gc,  screen.ximg, 0, 0, 0, 0, screen_xsize, screen_ysize, False);
  #else
		XPutImage(dpy, w, gc, screen.ximg, 0, 0, 0, 0, screen_xsize,
				screen_ysize);
#endif

		XSync(dpy, False);
	}

}
