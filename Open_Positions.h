/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Open_Positions.h
 * Author: andy
 *
 * Created on March 31, 2017, 3:30 PM
 */

#include <QSqlDatabase>
#include <QString>
#include "DemoModule.h"

#ifndef OPEN_POSITIONS_H
#define OPEN_POSITIONS_H

class Open_Positions : public DemoModule {
    Q_OBJECT
public:
    Open_Positions();
    Open_Positions(const Open_Positions& orig);
    ~Open_Positions();
    QString getName();
    int getNoOfCharts();
    int getChartsGroup();
    void createChart(QChartViewer *viewer, const int &ticker, QDateTime startDate, QDateTime endDate, int TimeFrame, QString ChartType, int BallSize);

private:
    // TimeStamps, volume, high, low, open and close data
    int m_tickerKey;
    QDateTime *m_timeStamps;
    double *m_timeStampsD;
    double *m_volData;
    double *m_highData;
    double *m_lowData;
    double *m_openData;
    double *m_closeData;
    int m_noOfPoints;
    
    QSqlDatabase db;
    
    QString tickerSymbol;

    bool getData(const int &ticker, QDateTime startDate, QDateTime endDate, int TimeFrame);
};

#endif /* OPEN_POSITIONS_H */

