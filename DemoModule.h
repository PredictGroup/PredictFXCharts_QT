/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   DemoModule.h
 * Author: andy
 *
 * Created on March 31, 2017, 2:41 PM
 */

#include <QObject>
#include <QString>
#include <QDateTime>
#include "qchartviewer.h"

#ifndef DEMOMODULE_H
#define DEMOMODULE_H

class DemoModule : public QObject {
    Q_OBJECT
public:
    DemoModule();
    ~DemoModule();

    virtual QString getName() {
        return "";
    }

    virtual int getNoOfCharts() {
        return 0;
    }

    virtual int getChartsGroup() {
        return 1;
    }

    virtual void createChart(QChartViewer *viewer, const int &ticker, QDateTime startDate, QDateTime endDate, int TimeFrame, QString ChartType, int BallSize) {
    }

private:

};

#endif /* DEMOMODULE_H */

