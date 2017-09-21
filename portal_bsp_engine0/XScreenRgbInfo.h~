#ifndef SCR_RGB_INFO_H
#define SCR_RGB_INFO_H

#define MAX_LIGHT_LEVELS 255
#define NUM_LIGHT_LEVELS (MAX_LIGHT_LEVELS + 1)
#define BITS_PER_BYTE 8
#define MAX_BYTE 255

class XScreenRgbInfo {
public: 
  XScreenRgbInfo(unsigned long red_mask, unsigned long green_mask, unsigned long blue_mask,
		 char bytes_per_pixel, char bytes_per_rgb, unsigned char *p_screenbuf);
  ~XScreenRgbInfo();
  
  unsigned long ext_to_native(int red, int green, int blue);
  void fog_native(unsigned char *pColor, int intensity);
 
  unsigned char *p_screenbuf;
  char bytes_per_pixel;

  
  int ext_max_red;
  int ext_max_green;
  int ext_max_blue;
  int *red_light_table, *green_light_table, *blue_light_table,
      *red_fog_table, *green_fog_table, *blue_fog_table;
  char bytes_per_rgb;
  unsigned long red_mask, green_mask, blue_mask;
  int red_shift, green_shift, blue_shift, red_max, green_max, blue_max;
  
  void compute_light_table();
  void compute_fog_table();
  void compute_color_resolution();  
  
  inline void light_native(unsigned char *pColor, int intensity) {
    // decode pixel bytes into r,g,b, assuming LSB-first byte order

    unsigned char *c2 = pColor;

    register int p;
    unsigned long color=0;
    unsigned long color_shift = 0;
    for(p=0; p<bytes_per_rgb; p++) {
      color += (*c2++) << color_shift;
      color_shift += BITS_PER_BYTE;
    }
    // skip the rest of the bytes between the bytes_per_rgb and bytes_per_pixel
    for(p=bytes_per_rgb; p<bytes_per_pixel;p++) { c2++; }

    unsigned long r = (color & red_mask) >> red_shift;
    unsigned long g = (color & green_mask) >> green_shift;
    unsigned long b = (color & blue_mask) >> blue_shift;

    color =
      (red_light_table[r*NUM_LIGHT_LEVELS+intensity] <<red_shift) |
      (green_light_table[g*NUM_LIGHT_LEVELS+intensity] <<green_shift) |
      (blue_light_table[b*NUM_LIGHT_LEVELS+intensity] <<blue_shift);

    {
      register int i;
      unsigned long mask = 255;
      char shift = 0;

      // stuff bytes in the unsigned long col into the screen buffer, in
      // little-endian order
      for(c2-=bytes_per_pixel, i=0; i<bytes_per_pixel; i++) {
	*c2 = (color & mask) >> shift;
	c2++;
	mask <<= BITS_PER_BYTE;
	shift += BITS_PER_BYTE;
      }
    } 
  }
  
};

#endif