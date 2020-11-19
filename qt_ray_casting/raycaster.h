#pragma once
#include <QtCore>
#include <QWidget>
#include <QtGUI>
#include <QBasicTimer>
#include <QImage>
#include <QKeyEvent>
#include "common.h"


class Raycaster : public QWidget {
	Q_OBJECT

public:
	Raycaster(QWidget *parent = 0);
	~Raycaster();

	void setResolution(int screenW, int screenH, int bufferW, int bufferH);
	
	void start();
	void stop();

	void setHFov(realType v);
	void setVFov(realType v);
	void setAspectRatio(int w, int h);
	void handleKeyPressEvent(QKeyEvent *event);
	void handleKeyReleasedEvent(QKeyEvent *event);

protected:
	void paintEvent(QPaintEvent *event);
	//void keyPressEvent(QKeyEvent *event);
	//void keyReleaseEvent(QKeyEvent *event);
	void timerEvent(QTimerEvent *event);
	void resizeEvent(QResizeEvent * event);
	//void closeEvent(QCloseEvent * event);


private:

	void render();
	void update();
	void showFps();

	void computeHpc();
	void computeVpc();
	void computePPY();
	void rayCasting();
	void buildWallSlices();
	void renderScene();
	void renderWalls();
	void renderFloorByColumns();
	void renderByCols();
	void renderByRows();
	void updatePlayer();
	void loadTexturesARGB32();

	enum State { PAUSE, RENDERING };

	State state;
	QTime watch;
	QBasicTimer ticker;
	QTime frameTick;
	int numFrames;

	QImage buffer;		
	
	realType hfov; // horizontal fov
	realType vfov; // vertical fov
	realType hpc; // horizontal  perspective compensation
	realType vpc; // vertical  perspective compensation
	realType aspect; // aspect ratio
	realType persComp; // product of vpc and aspect
	unsigned int ppy; // projection plane y eye center

	
	struct TrigValues {
		realType sin;
		realType cos;
	};

	TrigValues *colTrigValues = nullptr;
	void updateAngleTables();

	struct WallSlice {
		int top;
		int bot;
		QRgb *texSlicePtr;
		FixedPoint<16> texVofsFix;
		FixedPoint<16> texIncFix;

		int tex;	
		realType texHofs;
		realType texVofs;
		realType texInc;

		realType dist;
	};

	WallSlice *wallSlices = nullptr;

	struct Texture {
		QImage tex;
		//QRgb *base;
	};
	
	int numWallTextures = 0;
	Texture *wallTextures = nullptr;
	int numFloorTextures = 0;
	Texture *floorTextures = nullptr;
	Texture blackTexture;

	// used in rendering floor by cols
	struct PlaneRow {
		// left column data
		realType x; 
		realType y;
		realType dx;
		realType dy;
	};

	PlaneRow *planeRows = nullptr;
	void buildPlaneRows();

	struct Cell {
		enum : char { EMPTY, WALL };
		char code;
		int wallTexId;
		QRgb *floorTexPtr;
	};

	Cell *cells = nullptr;
	int cellMapRows = 0;
	int cellMapCols = 0;

	void initRandomMap(int w, int h);

	struct Player {
		realType x, y;
		realType angle;
		realType cosAngle, sinAngle;
		realType dx, dy;
		realType height;
		realType speed;
		realType turningSpeed;
		int updInterval;
	};

	Player player;
	void initPlayer();
	void moveForward();
	void moveBackward();
	void moveLeft();
	void moveRight();
	void turnLeft();
	void turnRight();
	void updatePlayerdxy();

	struct PlayerInput {
		bool forward;
		bool backward;
		bool left;
		bool right;
		bool turnLeft;
		bool turnRight;
		bool crouch;
		bool raise;
		bool tiltDown;
		bool tiltUp;
	};

	PlayerInput input;


};

