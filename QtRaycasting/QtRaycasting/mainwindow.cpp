#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "raycaster.h"

#include <QtWidgets>

#define WINDOW_TITLE "Raycasting"

#define MIN_WINDOW_WIDTH  320
#define MIN_WINDOW_HEIGHT 240

#define DEFAULT_IMAGE_WIDTH 1024
#define DEFAULT_IMAGE_HEIGHT 768

MainWindow::MainWindow(QWidget *parent)
	: QMainWindow(parent), ui(new Ui::MainWindow)
{
	ui->setupUi(this);

	setMinimumSize(MIN_WINDOW_WIDTH, MIN_WINDOW_HEIGHT);
	resize(DEFAULT_IMAGE_WIDTH, DEFAULT_IMAGE_HEIGHT);
	setWindowTitle(WINDOW_TITLE);

	//setAttribute(Qt::WA_NoSystemBackground);

	raycaster = new Raycaster(this);
	raycaster->resize(DEFAULT_IMAGE_WIDTH, DEFAULT_IMAGE_HEIGHT);
	setCentralWidget(raycaster);


	raycaster->setResolution(DEFAULT_IMAGE_WIDTH, DEFAULT_IMAGE_HEIGHT,
						     DEFAULT_IMAGE_WIDTH, DEFAULT_IMAGE_HEIGHT);
	raycaster->start();
}

MainWindow::~MainWindow()
{
	delete ui;
}

void MainWindow::resizeEvent(QResizeEvent * event)
{
	
}

void MainWindow::keyPressEvent(QKeyEvent * event)
{
	//qDebug() << "parent" << endl;
	switch (event->key())
	{
	case Qt::Key_Escape:
		close();
		break;
	default:
		break;
	}
	
	//QApplication::instance()->sendEvent(centralWidget(), event);
	raycaster->handleKeyPressEvent(event);
}

void MainWindow::keyReleaseEvent(QKeyEvent * event)
{
	//QApplication::instance()->sendEvent(centralWidget(), event);
	raycaster->handleKeyReleasedEvent(event);
}

void MainWindow::closeEvent(QCloseEvent * event)
{
	//centralWidget()->close();
}
