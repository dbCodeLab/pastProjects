#ifndef X_APP_H
#define X_APP_H

#include <X11/Xlib.h>
#include <X11/Intrinsic.h>
#include <X11/extensions/XShm.h>
#include <string>
#include "XScreenRgbInfo.h"
#include "XEngine.h"


#define COLOR_DEPTH 24
#define START_X 0
#define START_Y 0

// Applicazione a singola finestra.
class XApplication {
  public:
    XApplication(const std::string &app_name, int scr_xsize, int scr_ysize)
		: screen_xsize(scr_xsize),
		  screen_ysize(scr_ysize),
		  name(app_name)
		  { }
		  
    void execute() {
	create_window();
	events_notification_request();
	event_loop();
    }
    
    ~XApplication();
    
  private:
    Visual *vis;
    Display *dpy;
    Window w;
    GC gc;
    std::string name;
    const int screen_xsize;
    const int screen_ysize;
    struct XAppImage {
      XImage *ximg;
      unsigned char *buffer;
      unsigned int depth, bytespp, scanline_pad;
    } screen;
    XScreenRgbInfo *scr_info;
    XEngine *engine;
    
    void create_window();
    void events_notification_request();
    void event_loop();
    
    void init_ximg();
    void free_ximg();
    
    #ifdef SHM_EXT
    XShmSegmentInfo shminfo;
    void init_shm_ximg();
    void free_shm_ximg();
    #endif
    
    void key_press(KeySym *keysym);
    void key_release(KeySym *keysym);

};

#endif