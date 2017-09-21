#include "raycaster.h"
#include "common.h"
#include <QtGlobal>
#include <cmath>


#define MS_TIMER_RENDERING 0
#define WALL_HEIGHT 64
#define TEX_SIZE 64


Raycaster::Raycaster(QWidget *parent) : QWidget(parent)
{
	setParent(parent);
	setAttribute(Qt::WA_OpaquePaintEvent, true);
	state = PAUSE;

	hfov = DEG_TO_RAD(70);
	vfov = DEG_TO_RAD(70);

	input.forward = false;
	input.backward = false;
	input.left = false;
	input.right = false;
	input.turnLeft = false;
	input.turnRight = false;

	loadTexturesARGB32();
	//loadTexturesIndexed8();

	initPlayer();
	initRandomMap(32, 32);

}

void Raycaster::start()
{
	ticker.start(MS_TIMER_RENDERING, Qt::PreciseTimer, this);
	numFrames = 0;
	frameTick.start();
	watch.start();
	state = RENDERING;
}

void Raycaster::stop()
{
	ticker.stop();
	state = PAUSE;
}

void Raycaster::setResolution(int screenW, int screenH, int bufferW, int bufferH)
{
	QSize size(bufferW, bufferH);
	if (buffer.size() != size) {
		buffer = QImage(size, QImage::Format_RGB32);
		computeHpc();
		computeVpc();
		computePPY();
		buildWallSlices();
		setAspectRatio(screenW, screenH);
		updateAngleTables();
		buildPlaneRows();
	}
}

Raycaster::~Raycaster()
{

	delete[] wallSlices;
	delete[] wallTextures;
	delete[] floorTextures;
	delete[] planeRows;
	delete[] colTrigValues;
	delete[] cells;
	cells = nullptr;
	cellMapCols = cellMapRows = 0;
}


void Raycaster::setHFov(realType v)
{
	hfov = v;
	computeHpc();
	updateAngleTables();
}

void Raycaster::setVFov(realType v)
{
	vfov = v;
	computeVpc();
}

void Raycaster::setAspectRatio(int w, int h)
{
	///*
	realType f = (1.0f * h) / w;
	realType idealVerticalRes = buffer.width() * f;
	aspect = buffer.height() / idealVerticalRes;
	//*/
	/*
	realType f = (1.0f * buffer->height()) / buffer->width();
	realType idealVerticalRes = w * f;
	aspect = h / idealVerticalRes;
	*/
	persComp = vpc * aspect; // * aspect // not used for now
}


void Raycaster::timerEvent(QTimerEvent * event)
{
	update();
	render();
	showFps();
}


void Raycaster::resizeEvent(QResizeEvent * event)
{
	setAspectRatio(width(), height());
	/*
	if (image.size() != size()) {
	image = QImage(size(), QImage::Format_RGB32);
	}
	render();*/
}


void Raycaster::computeHpc()
{
	hpc = (buffer.width() / 2) / tan(hfov / 2);
}

void Raycaster::computeVpc()
{
	vpc = (buffer.height() / 2) / tan(vfov / 2);
	persComp = vpc * 1; // * aspect // not used for now
}

void Raycaster::computePPY()
{
	ppy = buffer.height() / 2;
}

void Raycaster::buildWallSlices()
{
	if (wallSlices) delete[] wallSlices;
	wallSlices = new WallSlice[buffer.width()];
}


/*  Coordinate System:

Top:
			|
			|				+x
-----------------------------
			|
			|+y

	Angle System:

			|270
180			|				0
-----------------------------
			|
			|90



*/

void Raycaster::render()
{
	renderScene();
	QWidget::update(); // qt update
}

void Raycaster::rayCasting() {

	int width = buffer.width();
	int height = buffer.height();

	realType playerAngle = player.angle;
	realType playerHeight = player.height;

	// player real position on map
	realType px = player.x / WALL_HEIGHT;
	realType py = player.y / WALL_HEIGHT;

	for (int col = 0; col != width; ++col) {

		realType colAngleSin = colTrigValues[col].sin;
		realType colAngleCos = colTrigValues[col].cos;

		realType sinRayAngle = player.sinAngle * colAngleCos + player.cosAngle * colAngleSin;
		realType cosRayAngle = player.cosAngle * colAngleCos - player.sinAngle * colAngleSin;

		realType invSinRayAngle = abs(1 / sinRayAngle);
		realType invCosRayAngle = abs(1 / cosRayAngle);

		// distance from first intersection points
		realType xdist, ydist;

		// distance increments
		realType xDistInc = invCosRayAngle;
		realType yDistInc = invSinRayAngle;

		// player integer position on grid
		int posx = static_cast<int>(px);
		int posy = static_cast<int>(py);

		// steps on grid
		int stepx, stepy;
		// row offset on gridmap (used to avoid imul when accessing the cellmap)
		int cellmapStepy;

		if (cosRayAngle >= 0) {
			xdist = (posx + 1 - px) * invCosRayAngle;
			stepx = 1;
		}
		else {
			xdist = (px - posx) * invCosRayAngle;
			stepx = -1;
		}

		if (sinRayAngle >= 0) {
			ydist = (posy + 1 - py) * invSinRayAngle;
			stepy = 1;
			cellmapStepy = cellMapCols;
		}
		else {
			ydist = (py - posy) * invSinRayAngle;
			stepy = -1;
			cellmapStepy = -cellMapCols;
		}


		int wallColIdx;
		realType hitDist;
		realType texOfs; // in [0,1]
		int cellCode = Cell::EMPTY;
		int wallTexId;
		bool darkTex = false;
		int cellmapRowOffset = posy * cellMapCols;

		while (cellCode==Cell::EMPTY) {
			if (xdist < ydist) {
				// vertical intersection (constant x line)

				hitDist = xdist;// si puo' spostare dentro a if (cellCode!=...)
				xdist += xDistInc; // si puo' mettere sotto l'if (cellCode ecc)
				posx += stepx; // attenzione. Con la rappresntazione (left,top) if (stepx>0) posx lo incrementi subito, altrimenti lo incrementi sotto

				cellCode = cells[cellmapRowOffset + posx].code;//cells[posy * cellMapCols + posx].code;
				if (cellCode!=Cell::EMPTY) {
					realType ofs;
					// find y of intersection point on map
					if (stepx > 0) {
						// from, playery + deltaY, where deltaY is computed as dy/dx * deltaX
						// Note: the sign of dy/dx tells us the right sign of deltaY
						ofs = py + sinRayAngle / cosRayAngle * (posx - px);
						// now we find the right texture offset in [0,1]
						texOfs = ofs - floor(ofs);
					}
					else {
						// as before but, to obtain the right value for deltaY (+ toward right, - toward left) we use a slightly different 
						// expression for deltaX. Note: the sign of (posx + 1 - px) is < 0 to invert dy/dx sign
						ofs = py + sinRayAngle / cosRayAngle * (posx + 1 - px);
						// now we find the right texture offset in [0,1]
						texOfs = ceil(ofs) - ofs;
					}

					wallTexId = cells[cellmapRowOffset + posx].wallTexId;
				}
			}
			else {
				// horizontal intersection (constant y line)

				hitDist = ydist;
				ydist += yDistInc;
				posy += stepy;
				cellmapRowOffset += cellmapStepy;
				//Con la rappresntazione (left,top) if (stepy>0) cellmapRowOffset lo incrementi subito, altrimenti lo incrementi sotto

				cellCode = cells[cellmapRowOffset + posx].code;
				if (cellCode!=Cell::EMPTY) {
					darkTex = true;
					realType ofs;
					// find x of intersection point on map
					if (stepy > 0) {
						// from, playerx + deltaX, where deltaX is computed as dx/dy * deltaY
						// Note: the sign of dx/dy tells us the right sign of deltaX
						ofs = px + cosRayAngle / sinRayAngle * (posy - py);
						// now we find the right texture offset in [0,1]
						texOfs = ceil(ofs) - ofs;
					}
					else {
						// as before but, to obtain the right value for deltaX (+ toward right, - toward left) we use a slightly different 
						// expression for deltaY. Note: the sign of (posy + 1 - py) is < 0 to invert dx/dy sign
						ofs = px + cosRayAngle / sinRayAngle * (posy + 1 - py);
						// now we find the right texture offset in [0,1]
						texOfs = ofs - floor(ofs);
					}

					wallTexId = cells[cellmapRowOffset + posx].code;
				}

			}
		}

		//float fisheyefactorFF = cos(columnAngle);
		realType fisheyefactor = colAngleCos;
		realType correctedDist = hitDist * fisheyefactor * WALL_HEIGHT; // hitdist e' relativo alla grid map, moltiplica per WALL_HEIGHT per avere valori relativi alla world map
		//int sliceHeight = persComp * WALL_HEIGHT / correctedDist;
		int sliceBot = ppy + persComp * playerHeight / correctedDist;
		//int sliceTop = sliceBot - sliceHeight + 1;
		int sliceTop = ppy + persComp * (playerHeight - WALL_HEIGHT) / correctedDist;
		realType sliceTexInc = (1.0) / (sliceBot - sliceTop + 1); // in [0,1] or multiply by // * texture height) later
		realType sliceTexOfs = 0;

	
		if (sliceTop < 0) {
			sliceTexOfs = -sliceTop * sliceTexInc;
			sliceTop = 0;
			if (sliceBot < 0) {
				sliceBot = -1;
			}
		}

		if (sliceBot >= height) {
			sliceBot = height - 1;
			if (sliceTop >= height) {
				sliceTop = height;
			}
		}

		Q_ASSERT(sliceBot+1 >= sliceTop);

		wallSlices[col].dist = correctedDist;
		wallSlices[col].top = sliceTop;
		wallSlices[col].bot = sliceBot;

		int texId = wallTexId - !darkTex;
		int texHeight = wallTextures[texId].tex.height();
		int texWidth = wallTextures[texId].tex.width();
		int texStride = wallTextures[texId].tex.bytesPerLine()/4;
		QRgb *texBase = (QRgb *)wallTextures[texId].tex.bits();

		wallSlices[col].texSlicePtr = texBase + texStride * int(texOfs * texHeight);
		wallSlices[col].texVofsFix = sliceTexOfs * texWidth; // saved as fixed point
		wallSlices[col].texIncFix = sliceTexInc * texWidth;  // saved as fixed point

		// used only for rendering by cols
		wallSlices[col].tex = texId;
		wallSlices[col].texHofs = texOfs;
		wallSlices[col].texInc = sliceTexInc;
		wallSlices[col].texVofs = sliceTexOfs;
	
	}

}

void Raycaster::renderScene() 
{
	rayCasting();

	//buffer.fill(QColor(100, 100, 100));
	//renderByCols();
	renderByRows();
}





void Raycaster::renderWalls() //ARGB32
{
	int width = buffer.width();
	int height = buffer.height();

	const uchar *ptr = buffer.bits();
	QRgb *start = (QRgb*)(ptr);
	int stride = buffer.bytesPerLine() / 4;
	//QRgb *finish = start + stride * height;

	for (int col = 0; col != width; ++col) {


		QRgb *pixel = start;

		// ceiling
		QRgb *top = start + wallSlices[col].top * stride;
		//for (; pixel < top; pixel += stride) {
			//*pixel = qRgb(100, 100, 100);
		//}

		pixel = top;

		// wall
		// prepare the texture pointer
		int texIdx = wallSlices[col].tex;
		const uchar *src = wallTextures[texIdx].tex.bits();
		int texHeight = wallTextures[texIdx].tex.height();
		int texCol = static_cast<int>(wallSlices[col].texHofs * texHeight); //qBound(0, static_cast<int>(wallSlices[col].texHofs * texWidth), texWidth - 1);
		int texStride = wallTextures[texIdx].tex.bytesPerLine()/4;
		const QRgb *texsrc = reinterpret_cast<const QRgb*>(src) + texCol * texStride;		
		int texWidth = wallTextures[texIdx].tex.width();
		realType vofs = wallSlices[col].texVofs * texWidth;
		realType inc = wallSlices[col].texInc * texWidth;

		for (QRgb *bot = start + wallSlices[col].bot * stride; pixel <= bot; pixel += stride) {
			int ofs = (int)vofs;
			*pixel = *(texsrc + ofs);
			vofs += inc;
		}


		/* solid color slice fill
		QRgb wallColor = (wallSlices[col].dark) ? qRgb(0, 255, 0) : qRgb(255, 0, 0);//qRgb(0, 155, 0) : qRgb(0, 200, 0);
		for (QRgb *bot = start + wallSlices[col].bot * stride; pixel <= bot; pixel += stride) {
		*pixel = wallColor;
		}
		*/

		// floor
		//for (; pixel < finish; pixel += stride) {
			//*pixel = qRgb(50, 50, 50);
		//}

		++start;
		//++finish;
	}
}

void Raycaster::renderFloorByColumns() 
{

	//realType playerAngle = player->getAngle();
	//pAngleSin = sin(playerAngle);
	//pAngleCos = cos(playerAngle);

	int width = buffer.width();
	int height = buffer.height();
	realType playerHeight = player.height / WALL_HEIGHT;
	// player real position on map
	realType px = player.x / WALL_HEIGHT;
	realType py = player.y / WALL_HEIGHT;

	realType colAngleCos = colTrigValues[width-1].cos;
	realType colAngleSin = colTrigValues[width-1].sin;
	realType cos_prod = player.cosAngle * colAngleCos;
	realType sin_prod = player.sinAngle * colAngleSin;
	realType cos_sin_prod_diff = cos_prod - sin_prod;
	realType cos_sin_prod_add = cos_prod + sin_prod;
	realType sin_cos = player.sinAngle * colAngleCos;
	realType cos_sin = player.cosAngle * colAngleSin;
	realType sin_cos_add = sin_cos + cos_sin;
	realType sin_cos_diff = sin_cos - cos_sin;

	//realType colAngle = atan2(width / 2, hpc); // note: positive width

	for (int i = ppy; i != height; ++i) {
		realType ratio = playerHeight / (i - ppy);
		realType distance = ratio * persComp / colAngleCos;
		//realType xl = px + distance * cos(playerAngle - colAngle);
		//realType yl = py + distance * sin(playerAngle - colAngle);
		//realType xr = px + distance * cos(playerAngle + colAngle);
		//realType yr = py + distance * sin(playerAngle + colAngle);
		realType xl = px + distance * cos_sin_prod_add;
		realType yl = py + distance * sin_cos_diff;
		realType xr = px + distance * cos_sin_prod_diff;
		realType yr = py + distance * sin_cos_add;
		realType dx = (xr - xl) / width;
		realType dy = (yr - yl) / width;

		planeRows[i].x = xl;
		planeRows[i].y = yl;
		planeRows[i].dx = dx;
		planeRows[i].dy = dy;
	}

	const uchar *ptr = buffer.bits();
	QRgb *start = (QRgb*)(ptr);
	int stride = buffer.bytesPerLine() / 4;

	for (int col = 0; col != width; ++col) {

		QRgb *pixel = start;

		// ceiling
		QRgb *top = start + wallSlices[col].top * stride;
		QRgb ceilingColor = qRgb(100, 100, 100);
		for (; pixel < top; pixel += stride) {
			*pixel = ceilingColor;
		}

		int row = wallSlices[col].bot+1;
		pixel = start + row * stride;
		for (; row < height; pixel += stride, ++row) {
			realType x = planeRows[row].x + col * planeRows[row].dx;
			realType y = planeRows[row].y + col * planeRows[row].dy;
			int xi = x;
			int yi = y;
			int cellOfs = yi * cellMapCols + xi;// *cellMapCols
			int cellCode = cells[cellOfs].code;
			//if (cellCode!=Cell::EMPTY) {
			//	*pixel = qRgb(255, 0, 0);
			//	continue;
			//}
			int tc = (x - xi) * TEX_SIZE;
			int tr = (y - yi) * TEX_SIZE;
			QRgb *texptr = cells[cellOfs].floorTexPtr;//floorTextures[cellCode].base;
			*pixel = *(texptr + tr * TEX_SIZE + tc);

		}

		++start;
	}
}

void Raycaster::renderByCols() {
	renderWalls();
	renderFloorByColumns();
}

void Raycaster::renderByRows() {

	int width = buffer.width();
	int height = buffer.height();
	realType playerHeight = player.height / WALL_HEIGHT;

	// player real position on map
	realType px = player.x / WALL_HEIGHT;
	realType py = player.y / WALL_HEIGHT;

	realType colAngleCos = colTrigValues[width - 1].cos;
	realType colAngleSin = colTrigValues[width - 1].sin;
	realType cos_prod = player.cosAngle * colAngleCos;
	realType sin_prod = player.sinAngle * colAngleSin;
	realType cos_sin_prod_diff = cos_prod - sin_prod;
	realType cos_sin_prod_add = cos_prod + sin_prod;
	realType sin_cos = player.sinAngle * colAngleCos;
	realType cos_sin = player.cosAngle * colAngleSin;
	realType sin_cos_add = sin_cos + cos_sin;
	realType sin_cos_diff = sin_cos - cos_sin;

	const uchar *ptr = buffer.bits();
	QRgb *start = (QRgb*)(ptr);
	int stride = buffer.bytesPerLine() / 4;
	QRgb *rowStart = start;

	QRgb ceilingColor = qRgb(100, 100, 100);

	for (int y = 0; y <= ppy; ++y) {
		QRgb *pixel = rowStart;
		rowStart += stride;
		WallSlice *slicePtr = wallSlices;
		while (pixel != rowStart) {
			if (y>=slicePtr->top) {
				*pixel = *(slicePtr->texSlicePtr + slicePtr->texVofsFix.getInt());
				slicePtr->texVofsFix += slicePtr->texIncFix;
			}
			else {
				*pixel = ceilingColor;
			}
			++pixel;
			++slicePtr;
		}	
	}



	for (int y = ppy+1; y < height; ++y) {
		realType ratio = playerHeight / (y - ppy);
		realType distance = ratio * persComp / colAngleCos;
		realType xl = px + distance * cos_sin_prod_add;
		realType yl = py + distance * sin_cos_diff;
		realType xr = px + distance * cos_sin_prod_diff;
		realType yr = py + distance * sin_cos_add;
		realType dx = (xr - xl) / width;
		realType dy = (yr - yl) / width;

		FixedPoint<20> fx = xl;
		FixedPoint<20> fy = yl;
		FixedPoint<20> fdx = dx;
		FixedPoint<20> fdy = dy;

		QRgb *pixel = rowStart;
		rowStart += stride;
		WallSlice *slicePtr = wallSlices;
		while (pixel != rowStart) {
			if (y <= slicePtr->bot) {
				*pixel = *(slicePtr->texSlicePtr + slicePtr->texVofsFix.getInt());
				slicePtr->texVofsFix += slicePtr->texIncFix;
			}
			else {

				///*
				int xi = fx.getInt();
				int yi = fy.getInt();
				int cellOfs = yi * 32 + xi;
				//if (cells[cellOfs].code == Cell::EMPTY) { // now we used a black floor texture also for wall cell
					FixedPoint<20> trtx = fx - FixedPoint<20>(xi);
					FixedPoint<20> trty = fy - FixedPoint<20>(yi);
					int tc = (trtx * FixedPoint<20>(TEX_SIZE)).getInt();
					int tr = (trty * FixedPoint<20>(TEX_SIZE)).getInt();
					//QRgb *texptr = floorTextures[cellCode].base;
					//*pixel = *(texptr + tr * TEX_SIZE + tc);
					QRgb *texptr = cells[cellOfs].floorTexPtr;//floorTextures[cellCode].base;
					*pixel = *(texptr + tr * TEX_SIZE + tc);
				//}
				//*/
				/* //fpu version
				int xi = xl;
				int yi = yl;
				int cellOfs = yi * cellMapCols + xi;//to use with cellmap
				//if (cells[cellOfs].code == Cell::EMPTY) {
					int tc = (xl - xi) * TEX_SIZE;
					int tr = (yl - yi) * TEX_SIZE;
					QRgb *texptr = cells[cellOfs].floorTexPtr;//floorTextures[cellCode].base;
					*pixel = *(texptr + tr * TEX_SIZE + tc);
				//}
				*/
			}
			fx += fdx;
			fy += fdy;
			//xl += dx; // for float/double version
			//yl += dy;
			++pixel;
			++slicePtr;
		}
	}
}


void Raycaster::update()
{
	updatePlayer();
}

void Raycaster::showFps()
{
	if (frameTick.elapsed() >= 1000) {
		frameTick.restart();
		parentWidget()->setWindowTitle(QString("Raycasting (%1 FPS)").arg(numFrames));
		numFrames = 0;
	}
	++numFrames;
}

void Raycaster::updatePlayer()
{
	player.updInterval = watch.elapsed();//qBound(20, watch.elapsed(), 10);
	watch.start();

	if (input.forward) {
		moveForward();
	}

	if (input.backward) {
		moveBackward();
	}

	if (input.left) {
		moveLeft();
	}

	if (input.right) {
		moveRight();
	}

	if (input.turnLeft) {
		turnLeft();
	}

	if (input.turnRight) {
		turnRight();
	}
}


void Raycaster::paintEvent(QPaintEvent * event)
{
	QPainter p(this);
	switch (state) {
	case RENDERING:
		p.drawImage(parentWidget()->rect(), buffer, buffer.rect());
		break;
	}

}

void Raycaster::handleKeyPressEvent(QKeyEvent * event)
{
	event->accept();

	switch (event->key()) {
	case Qt::Key_Up:
		input.forward = true;
		break;
	case Qt::Key_Down:
		input.backward = true;
		break;
	case Qt::Key_Left:
		input.turnLeft = true;
		break;
	case Qt::Key_Right:
		input.turnRight = true;
		break;
	case Qt::Key_A:
		input.left = true;
		break;
	case Qt::Key_D:
		input.right = true;
		break;
	}
}

void Raycaster::handleKeyReleasedEvent(QKeyEvent * event)
{
	event->accept();

	switch (event->key()) {
	case Qt::Key_Up:
		input.forward = false;
		break;
	case Qt::Key_Down:
		input.backward = false;
		break;
	case Qt::Key_Left:
		input.turnLeft = false;
		break;
	case Qt::Key_Right:
		input.turnRight = false;
		break;
	case Qt::Key_A:
		input.left = false;
		break;
	case Qt::Key_D:
		input.right = false;
		break;
	}
}

void Raycaster::initPlayer() {
	player.x = 1.5 * WALL_HEIGHT; /* grid map coord * wall size */
	player.y = 1.5 * WALL_HEIGHT;
	player.angle = DEG_TO_RAD(0); // remember, angle in radians...?
	player.speed = 1.6;
	updatePlayerdxy();
	player.turningSpeed = DEG_TO_RAD(1.6);
	player.height = WALL_HEIGHT / 2;
}

void Raycaster::moveForward()
{
	player.x += player.updInterval * player.dx / 10;
	player.y += player.updInterval * player.dy / 10;
}

void Raycaster::moveBackward()
{
	player.x -= player.updInterval * player.dx / 10;
	player.y -= player.updInterval * player.dy / 10;
}

void Raycaster::moveLeft()
{
	player.x += player.updInterval * player.dy / 10;
	player.y -= player.updInterval * player.dx / 10;
}

void Raycaster::moveRight()
{
	player.x -= player.updInterval * player.dy / 10;
	player.y += player.updInterval * player.dx / 10;
}

void Raycaster::turnLeft()
{
	player.angle -= player.updInterval * player.turningSpeed / 10;
	if (player.angle >= 2 * M_PI)
		player.angle -= 2 * M_PI;
	if (player.angle < 0)
		player.angle += 2 * M_PI;
	updatePlayerdxy();
}

void Raycaster::turnRight()
{
	player.angle += player.updInterval * player.turningSpeed / 10;
	if (player.angle >= 2 * M_PI)
		player.angle -= 2 * M_PI;
	if (player.angle < 0)
		player.angle += 2 * M_PI;
	updatePlayerdxy();
}

void Raycaster::updatePlayerdxy()
{
	player.cosAngle = cos(player.angle);
	player.sinAngle = sin(player.angle);
	player.dx = player.speed * player.cosAngle;
	player.dy = player.speed * player.sinAngle;
}



void Raycaster::loadTexturesARGB32()
{
	QTransform mrot;
	//mrot.rotate(-90);
	mrot.scale(-1, 1).rotate(90);
	// 
	numWallTextures = 8;
	wallTextures = new Texture[numWallTextures];

	QImage tmp;

	tmp.load(":/textures/Brick4.bmp");
	wallTextures[0].tex = tmp.convertToFormat(QImage::Format_ARGB32).transformed(mrot);
	//wallTextures[0].base = (QRgb*)wallTextures[0].tex.bits();

	tmp.load(":/textures/Brick4a.bmp");
	wallTextures[1].tex = tmp.convertToFormat(QImage::Format_ARGB32).transformed(mrot);
	//wallTextures[1].base = (QRgb*)wallTextures[1].tex.bits();

	tmp.load(":/textures/Stone3.bmp");
	wallTextures[2].tex = tmp.convertToFormat(QImage::Format_ARGB32).transformed(mrot);
	//wallTextures[2].base = (QRgb*)wallTextures[2].tex.bits();

	tmp.load(":/textures/Stone3a.bmp");
	wallTextures[3].tex = tmp.convertToFormat(QImage::Format_ARGB32).transformed(mrot);
	//wallTextures[3].base = (QRgb*)wallTextures[3].tex.bits();

	tmp.load(":/textures/Brick1.bmp");
	wallTextures[4].tex = tmp.convertToFormat(QImage::Format_ARGB32).transformed(mrot);
	//wallTextures[4].base = (QRgb*)wallTextures[4].tex.bits();

	tmp.load(":/textures/Brick1a.bmp");
	wallTextures[5].tex = tmp.convertToFormat(QImage::Format_ARGB32).transformed(mrot);
	//wallTextures[5].base = (QRgb*)wallTextures[5].tex.bits();
	
	tmp.load(":/textures/Brick6.bmp");
	wallTextures[6].tex = tmp.convertToFormat(QImage::Format_ARGB32).transformed(mrot);
	//wallTextures[6].base = (QRgb*)wallTextures[6].tex.bits();
	
	tmp.load(":/textures/Brick6a.bmp");
	wallTextures[7].tex = tmp.convertToFormat(QImage::Format_ARGB32).transformed(mrot);
	//wallTextures[7].base = (QRgb*)wallTextures[7].tex.bits();

	numFloorTextures = 2;
	floorTextures = new Texture[numFloorTextures];

	tmp.load(":/textures/diamond.bmp");
	floorTextures[0].tex = tmp.convertToFormat(QImage::Format_ARGB32);
	//floorTextures[0].base = (QRgb*)floorTextures[0].tex.bits();


	tmp.load(":/textures/hexgrey.bmp");
	floorTextures[1].tex = tmp.convertToFormat(QImage::Format_ARGB32);
	//floorTextures[1].base = (QRgb*)floorTextures[1].tex.bits();

	blackTexture.tex = QImage(TEX_SIZE, TEX_SIZE, QImage::Format_ARGB32);
	blackTexture.tex.fill(QColor(0, 0, 0));
}


void Raycaster::updateAngleTables()
{
	int width = buffer.width();
	
	if (colTrigValues) delete[] colTrigValues;

	colTrigValues = new TrigValues[width];

	for (int col = 0; col != width; ++col) {
		realType colAngle = atan2(col - width / 2, hpc);
		colTrigValues[col].sin = sin(colAngle);
		colTrigValues[col].cos = cos(colAngle);	
	}

}

void Raycaster::buildPlaneRows() {
	if (planeRows) delete[] planeRows;
	planeRows = new PlaneRow[buffer.height()];
}


void Raycaster::initRandomMap(int w, int h)
{
	cellMapRows = h;
	cellMapCols = w;

	cells = new Cell[cellMapRows*cellMapCols];


	int idx[4] = { 1, 3, 5, 7 }; // wall tex indices
	int floorIdx[2] = { 0, 1 };

	for (size_t i = 0; i != cellMapRows; ++i) {
		cells[i*cellMapCols + 0].code = Cell::WALL;
		cells[i*cellMapCols + 0].wallTexId = idx[rand() % 4];
		cells[i*cellMapCols + 0].floorTexPtr = (QRgb*)blackTexture.tex.bits();
		cells[i*cellMapCols + cellMapCols - 1].code = Cell::WALL;
		cells[i*cellMapCols + cellMapCols - 1].wallTexId = idx[rand() % 4];
		cells[i*cellMapCols + cellMapCols - 1].floorTexPtr = (QRgb*)blackTexture.tex.bits();
	}

	for (size_t j = 1; j != cellMapCols - 1; ++j) {
		cells[j].code = Cell::WALL;
		cells[j].wallTexId = idx[rand() % 4];
		cells[j].floorTexPtr = (QRgb*)blackTexture.tex.bits();
		cells[(cellMapRows - 1) * cellMapCols + j].code = Cell::WALL;
		cells[(cellMapRows - 1) * cellMapCols + j].wallTexId = idx[rand() % 4];
		cells[(cellMapRows - 1) * cellMapCols + j].floorTexPtr = (QRgb*)blackTexture.tex.bits();
	}


	for (size_t i = 1; i != cellMapRows - 1; ++i) {
		for (size_t j = 1; j != cellMapCols - 1; ++j) {
			cells[i*cellMapCols + j].code = Cell::EMPTY; //floorIdx[rand() % 4];
			cells[i*cellMapCols + j].floorTexPtr = (QRgb*)floorTextures[1].tex.bits();
			if (rand() % 7 == 0) {
				cells[i*cellMapCols + j].code = Cell::WALL;
				cells[i*cellMapCols + j].wallTexId = idx[rand() % 4];
				cells[i*cellMapCols + j].floorTexPtr = (QRgb*)blackTexture.tex.bits();
			}
		}
	}

}