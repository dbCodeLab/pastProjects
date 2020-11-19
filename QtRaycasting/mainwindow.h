#pragma once
#include <QtWidgets/QMainWindow>


namespace Ui {
	class MainWindow;
}

class Raycaster;

class MainWindow : public QMainWindow
{
	Q_OBJECT

public:
	MainWindow(QWidget *parent = Q_NULLPTR);
	~MainWindow();

protected:
	void keyPressEvent(QKeyEvent *event);
	void keyReleaseEvent(QKeyEvent *event);
	void resizeEvent(QResizeEvent *event);
	void closeEvent(QCloseEvent *event);

private:
	Ui::MainWindow *ui;
	Raycaster *raycaster;
};
