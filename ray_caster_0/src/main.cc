#include "../src/XApplication.h"

#define SCREEN_WIDTH 1024
#define SCREEN_HEIGHT 768

int main()
{

	XApplication xapp("ray caster 0", SCREEN_WIDTH, SCREEN_HEIGHT);

	xapp.execute();

	return 0;
}
