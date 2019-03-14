/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   mainWnd.h
 * Author: andy
 *
 * Created on March 21, 2017, 11:47 AM
 */

#ifndef _MAINWND_H
#define _MAINWND_H

#include "ui_mainWnd.h"
#include "financedemo.h"
#include "aboutForm.h"
#include <QModelIndex>
#include <QStandardItemModel>
#include <QAction>

class mainWnd : public QMainWindow {
    Q_OBJECT
public:
    mainWnd();
    virtual ~mainWnd();

    DemoModule *chart1;
    DemoModule *chart2;
    DemoModule *chart3;
    DemoModule *chart5;
    DemoModule *chart6;
    DemoModule *chart7;
    DemoModule *chart8;
    DemoModule *chart9;
    DemoModule *chart10;

private:
    Ui::mainWnd widget;
    FinanceDemo demo;
    QStandardItemModel *model = new QStandardItemModel();
    aboutForm *about;

private slots:
    void treeViewClickProgress(const QModelIndex &, const QModelIndex &);
    void menuAbout();
};

#endif /* _MAINWND_H */
