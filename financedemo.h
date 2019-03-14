#ifndef FINANCEDEMO_H
#define FINANCEDEMO_H

#include <QComboBox>
#include <QDateEdit>
#include <QSlider>
#include <QCalendarWidget>
#include <QSizePolicy>
#include <QSqlDatabase>
#include "qchartviewer.h"
#include "DemoModule.h"

class FinanceDemo : public QWidget {
    Q_OBJECT
public:   
    FinanceDemo();
    ~FinanceDemo();
    virtual void create(QWidget *parent = 0);  
    virtual void drawChart(DemoModule *chart);
    virtual void drawChart();
private:

    QChartViewer *m_ChartViewer;

    // The user interface
    QComboBox *m_TickerSymbol;
    QComboBox *m_TimeRange;
    QComboBox *m_ChartType;
    QComboBox *m_PriceType;
    QDateEdit *m_DateFrom;
    QDateEdit *m_DateTo;
    QCalendarWidget *m_CalFrom;
    QCalendarWidget *m_CalTo;
    QSlider *m_ChartSize;
    
    // Current chart
    DemoModule *m_Chart;
    
    // Postgresql DB
    QSqlDatabase db;
    
    int ballSize;

public slots:
    void onComboBoxChanged(int);
    void onDateChanged();
    void onSliderValueChanged(int);
};

#endif // FINANCEDEMO_H
