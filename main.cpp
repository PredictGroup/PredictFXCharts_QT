/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   main.cpp
 * Author: andy
 *
 * Created on March 18, 2017, 3:34 PM
 */

#include <QApplication>
#include <qt/QtWidgets/qwidget.h>
#include "mainWnd.h"


int main(int argc, char *argv[]) {
    // initialize resources, if needed
    // Q_INIT_RESOURCE(resfile);

    QApplication app(argc, argv);

    // create and show your widgets here
    mainWnd wnd;
    wnd.show();    

    return app.exec();
}
