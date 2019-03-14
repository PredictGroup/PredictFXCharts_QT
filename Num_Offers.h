/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Num_Offers.h
 * Author: andy
 *
 * Created on April 5, 2017, 1:56 PM
 */

#include <QSqlDatabase>
#include <QString>
#include "DemoModule.h"

#ifndef NUM_OFFERS_H
#define NUM_OFFERS_H

class Num_Offers : public DemoModule {
    Q_OBJECT
public:
    Num_Offers();
    Num_Offers(const Num_Offers& orig);
    virtual ~Num_Offers();
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

#endif /* NUM_OFFERS_H */

