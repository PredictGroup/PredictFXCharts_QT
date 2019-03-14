/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Open_Positions.cpp
 * Author: andy
 * 
 * Created on March 31, 2017, 3:30 PM
 */

#include <QDateTime>
#include <QSqlDatabase>
#include <QtSql>

#include "Open_Positions.h"
#include "FinanceChart.h"

Open_Positions::Open_Positions() {
}

Open_Positions::Open_Positions(const Open_Positions& orig) {
}

Open_Positions::~Open_Positions() {
    delete[] m_timeStamps;
    delete[] m_highData;
    delete[] m_lowData;
    delete[] m_openData;
    delete[] m_closeData;
    delete[] m_volData;
    if (db.isOpen())
        db.close();
}

QString Open_Positions::getName() {
    return "Open positions count";
}

int Open_Positions::getNoOfCharts() {
    return 1;
}

int Open_Positions::getChartsGroup() {
    return 1;
}

//
// Because QT uses QDateTime, while ChartDirector uses Chart::chartTime, we need
// utilities to convert from one to another
//

// Convert from QDateTime to chartTime

static double QDateTimeToChartTime(QDateTime q) {
    QDate d = q.date();
    QTime t = q.time();
    return Chart::chartTime(d.year(), d.month(), d.day(), t.hour(), t.minute(),
            t.second()) + t.msec() / 1000.0;
}

/// <summary>
/// Creates a dummy chart to show an error message.
/// </summary>
/// <param name="viewer">The WinChartViewer to display the error message.</param>
/// <param name="msg">The error message</param>

static void errMsg(QChartViewer* viewer, const char *msg) {
    MultiChart m(400, 200);
    m.addTitle(Chart::Center, msg, "Arial", 10)->setMaxWidth(m.getWidth());
    viewer->setChart(&m);
}

void Open_Positions::createChart(QChartViewer *viewer, const int &ticker, QDateTime startDate, QDateTime endDate, int TimeFrame, QString ChartType, int BallSize) {

    // The data series we want to get.
    m_tickerKey = ticker;
    if (!getData(m_tickerKey, startDate, endDate, TimeFrame)) {
        errMsg(viewer, "Please enter a valid ticker symbol");
        return;
    }

    m_timeStampsD = new double[m_noOfPoints];
    for (int i = 0; i < m_noOfPoints; i++) {
        m_timeStampsD[i] = QDateTimeToChartTime(m_timeStamps[i]);
    }

    //
    // At this stage, all data is available. We can draw the chart as according to
    // user input.
    //

    //
    // Determine the chart size. In this demo, user can select 4 different chart sizes.
    // Default is the large chart size.
    //
    int width = 1020;
    int mainHeight = 600;
    int indicatorHeight = 90;


    // Create the chart object using the selected size
    FinanceChart m(width);

    // Set the data into the chart object
    m.setData(DoubleArray(m_timeStampsD, m_noOfPoints),
            DoubleArray(m_highData, m_noOfPoints), DoubleArray(m_lowData, m_noOfPoints),
            DoubleArray(m_openData, m_noOfPoints), DoubleArray(m_closeData, m_noOfPoints),
            DoubleArray(m_volData, m_noOfPoints), 0);

    //
    // We configure the title of the chart. In this demo chart design, we put the
    // company name as the top line of the title with left alignment.
    //
    m.addPlotAreaTitle(Chart::TopLeft, tickerSymbol.toLatin1().data());

    char buffer[1024];
    sprintf(buffer, "<*font=arial.ttf,size=8*>%s - %s chart", m.formatValue(
            QDateTimeToChartTime(QDateTime::currentDateTime()), "mmm dd, yyyy"), getName().toLatin1().data());
    m.addPlotAreaTitle(Chart::BottomLeft, buffer);

    //
    // Add the main chart
    //
    m.addMainChart(mainHeight);

    //
    // Draw the main chart depending on the chart type the user has selected
    //
    QString selectedType = ChartType; //m_ChartType->itemData(m_ChartType->currentIndex()).toString();
    if (selectedType == "Close")
        m.addCloseLine(0x000040);
    else if (selectedType == "TP")
        m.addTypicalPrice(0x000040);
    else if (selectedType == "WC")
        m.addWeightedClose(0x000040);
    else if (selectedType == "Median")
        m.addMedianPrice(0x000040);

    //
    // Draw the main chart if the user has selected CandleStick or OHLC. We
    // draw it here to make sure it is drawn behind the moving average lines
    // (that is, the moving average lines stay on top.)
    //
    if (selectedType == "CandleStick")
        m.addCandleStick(0x33ff33, 0xff3333);
    else if (selectedType == "OHLC")
        m.addHLOC(0x8000, 0x800000);


    //
    // Add volume bars to the main chart if necessary
    //
    m.addVolBars(indicatorHeight, 0x99ff99, 0xff9999, 0xc0c0c0);

    // Set the chart to the viewer
    viewer->setChart(&m);

    // Set image map (for tool tips) to the viewer
    sprintf(buffer, "title='%s {value|P}'", m.getToolTipDateFormat());
    viewer->setImageMap(m.getHTMLImageMap("", "", buffer));
}

/// <summary>
/// Get the timeStamps, highData, lowData, openData, closeData and volData.
/// </summary>
/// <param name="ticker">The ticker symbol for the data series.</param>
/// <param name="startDate">The starting date/time for the data series.</param>
/// <param name="endDate">The ending date/time for the data series.</param>
/// <param name="extraPoints">The extra leading data points needed in order to
/// compute moving averages.</param>
/// <returns>True if successfully obtain the data, otherwise false.</returns>

bool Open_Positions::getData(const int &ticker, QDateTime startDate, QDateTime endDate, int TimeFrame) {
    // This method should return false if the ticker symbol is invalid. In this
    // sample code, as we are using a random number generator for the data, all
    // ticker symbol is allowed, but we still assumed an empty symbol is invalid.
    if (ticker <= 0)
        return false;

    //
    // Fill the data
    //
    if (!db.isOpen()) {
        db = QSqlDatabase::addDatabase("QPSQL", "settingquotes_open_positions_conn");
        db.setHostName("localhost");
        db.setDatabaseName("consoledb2");
        db.setUserName("");
        db.setPassword("");
        bool ok = db.open();
    }

    QSqlTableModel *model0 = new QSqlTableModel(this, db);
    model0->setTable("\"public\".\"settingquotes\"");
    QString filter = QString("stock = '%1' AND datetime >= '%2' AND datetime <= '%3' and timeframe = '%4' AND"
            " numcontractsclose <> 0 ").arg(QString::number(ticker),
            startDate.toString("yyyy-MM-dd"),
            endDate.toString("yyyy-MM-dd"),
            QString::number(TimeFrame));
    std::string utf8_text = filter.toUtf8().constData();
    model0->setFilter(filter);
    model0->setSort(34, Qt::AscendingOrder);
    model0->select();

    // Allocate the data arrays
    m_noOfPoints = model0->rowCount();
    m_timeStamps = new QDateTime[m_noOfPoints];
    m_highData = new double[m_noOfPoints];
    m_lowData = new double[m_noOfPoints];
    m_openData = new double[m_noOfPoints];
    m_closeData = new double[m_noOfPoints];
    m_volData = new double[m_noOfPoints];

    for (int i = 0; i < model0->rowCount(); i++) {
        QSqlRecord rec = model0->record(i);

        m_timeStamps[i] = rec.value("datetime").toDateTime();
        m_highData[i] = rec.value("numcontractshigh").toDouble();
        m_lowData[i] = rec.value("numcontractslow").toDouble();
        m_openData[i] = rec.value("numcontractsopen").toDouble();
        m_closeData[i] = rec.value("numcontractsclose").toDouble();
        m_volData[i] = rec.value("voltoday").toDouble();
    }

    // Ticker symbol
    QSqlTableModel *model1 = new QSqlTableModel(this, db);
    model1->setTable("\"public\".\"stocks\"");
    model1->setFilter(QString("id = '%1' AND Active = true").arg(QString::number(ticker)));
    model1->select();

    for (int i = 0; i < model1->rowCount(); i++) {
        QSqlRecord rec = model1->record(i);
        int id = rec.value("id").toInt();
        QString ticker = rec.value("ticker").toString();

        tickerSymbol = ticker;
    }

    return true;
}
