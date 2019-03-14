/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   mainWnd.cpp
 * Author: andy
 *
 * Created on March 21, 2017, 11:47 AM
 */

#include <QSqlDatabase>
#include <QtSql>


#include <QApplication>
#include <QHBoxLayout>
#include <QObjectList>
#include <QDateTime>
#include <QDate>
#include <QTreeWidgetItem>
#include <QStandardItemModel>
#include <QVariant>
#include <QAction>
#include "financedemo.h"
#include "FinanceChart.h"
#include "mainWnd.h"
#include "ui_mainWnd.h"
#include "aboutForm.h"

#include "Open_Positions.h"
#include "Num_Bids.h"
#include "Num_Offers.h"

mainWnd::mainWnd() {
    widget.setupUi(this);

    // Tree
    QStandardItem *itemHeader = new QStandardItem(QString("Charts"));
    model->setHorizontalHeaderItem(0, itemHeader);
    QStandardItem *parentItem = model->invisibleRootItem();

    QStandardItem *item0 = new QStandardItem(QString("Opened interest"));
    parentItem->appendRow(item0);

    chart1 = new Open_Positions();
    QStandardItem *item1 = new QStandardItem(chart1->getName());
    QVariant var1 = QVariant::fromValue(chart1->getNoOfCharts());
    item1->setData(var1);
    item0->appendRow(item1);

    chart2 = new Num_Bids();
    QStandardItem *item2 = new QStandardItem(chart2->getName());
    QVariant var2 = QVariant::fromValue(chart2->getNoOfCharts());
    item2->setData(var2);
    item0->appendRow(item2);

    chart3 = new Num_Offers();
    QStandardItem *item3 = new QStandardItem(chart3->getName());
    QVariant var3 = QVariant::fromValue(chart3->getNoOfCharts());
    item3->setData(var3);
    item0->appendRow(item3);


    widget.treeView->setModel(model);
    widget.treeView->expandAll();

    connect(widget.treeView->selectionModel(), SIGNAL(currentChanged(const QModelIndex &, const QModelIndex &)), this, SLOT(treeViewClickProgress(const QModelIndex &, const QModelIndex &)));

    demo.create(widget.widgetChartView);

    connect(widget.actionAbout, SIGNAL(triggered()), this, SLOT(menuAbout()));

}

mainWnd::~mainWnd() {
}

void mainWnd::treeViewClickProgress(const QModelIndex &index0, const QModelIndex &index1) {
    int rowNum = widget.treeView->selectionModel()->currentIndex().row();
    int colNum = widget.treeView->selectionModel()->currentIndex().column();

    QVariant data = widget.treeView->selectionModel()->model()->data(widget.treeView->selectionModel()->currentIndex());
    const QString strData = data.toString();
    //char* text = strData.toLatin1().data();

    const QString text1 = chart1->getName();
    const QString text2 = chart2->getName();
    const QString text3 = chart3->getName();   

    if (strData == text1)
        demo.drawChart(chart1);
    else if (strData == text2)
        demo.drawChart(chart2);
    else if (strData == text3)
        demo.drawChart(chart3);
   
}

void mainWnd::menuAbout() {
    about = new aboutForm();
    if (about->exec() == QDialog::Accepted) {
        // show dialog
    }
    delete about;
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

FinanceDemo::FinanceDemo()
: QWidget() {
}

//
// Destructor
//

FinanceDemo::~FinanceDemo() {
    if (db.isOpen())
        db.close();
}

void FinanceDemo::create(QWidget *parent) {

    //
    // Set up the GUI
    //

    resize(954, 720);
    QFont defaultFont("Arial");
    defaultFont.setPixelSize(11);
    setFont(defaultFont);
    setPalette(QPalette(QColor(0xff, 0xff, 0xff)));

    // Use horizontal layout to put the tree view on the left and the charts on the right
    QVBoxLayout *vertLayout = new QVBoxLayout(this);
    vertLayout->setMargin(0);
    vertLayout->setSpacing(0);

    parent->setLayout(vertLayout);

    // The frame on the left side
    QWidget *leftPanel = new QWidget(this);
    leftPanel->setAutoFillBackground(true);
    leftPanel->setPalette(QPalette(QColor(186, 221, 255)));
    leftPanel->setFixedWidth(1035);
    leftPanel->setFixedHeight(75);
    vertLayout->addWidget(leftPanel);

    QFrame *separator = new QFrame(this);
    separator->setFrameStyle(QFrame::VLine | QFrame::Plain);
    vertLayout->addWidget(separator);

    QWidget *rightPanel = new QWidget(this);
    vertLayout->addWidget(rightPanel);
    rightPanel->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);

    // Ticker Symbol
    (new QLabel("Ticker Symbol", leftPanel))->setGeometry(8, 10, 140, 18);
    m_TickerSymbol = new QComboBox(leftPanel);
    m_TickerSymbol->setGeometry(8, 26, 140, 20);

    // Time Period
    (new QLabel("Time Period", leftPanel))->setGeometry(155, 10, 140, 18);
    m_TimeRange = new QComboBox(leftPanel);
    m_TimeRange->setGeometry(155, 26, 140, 20);

    // Chart Type
    (new QLabel("Chart Type", leftPanel))->setGeometry(302, 10, 140, 18);
    m_ChartType = new QComboBox(leftPanel);
    m_ChartType->setGeometry(302, 26, 140, 20);

    // Price Type
    (new QLabel("Price Type", leftPanel))->setGeometry(449, 10, 140, 18);
    m_PriceType = new QComboBox(leftPanel);
    m_PriceType->setGeometry(449, 26, 140, 20);

    // Date From
    (new QLabel("From", leftPanel))->setGeometry(596, 10, 140, 18);
    m_DateFrom = new QDateEdit(leftPanel);
    m_DateFrom->setGeometry(596, 26, 140, 20);
    m_DateFrom->setDate(QDate(2016, 02, 01));
    m_DateFrom->setCalendarWidget(m_CalFrom);
    m_DateFrom->setCalendarPopup(true);

    // Date To
    (new QLabel("To", leftPanel))->setGeometry(743, 10, 140, 18);
    m_DateTo = new QDateEdit(leftPanel);
    m_DateTo->setGeometry(743, 26, 140, 20);
    m_DateTo->setDate(QDate(2016, 02, 10));
    m_DateTo->setCalendarWidget(m_CalTo);
    m_DateTo->setCalendarPopup(true);

    // Chart Size
    (new QLabel("Chart Size", leftPanel))->setGeometry(890, 10, 140, 18);
    m_ChartSize = new QSlider(Qt::Horizontal, leftPanel);
    m_ChartSize->setGeometry(890, 26, 140, 20);
    m_ChartSize->setPageStep(1);
    m_ChartSize->setSingleStep(0);
    m_ChartSize->setMinimum(5);
    m_ChartSize->setMaximum(15);
    m_ChartSize->setSliderPosition(9);
    m_ChartSize->setTracking(true);

    ballSize = 9;

    QFont labelFont(defaultFont);
    labelFont.setBold(true);
    const QObjectList& children = leftPanel->children();
    for (int i = 0; i < children.size(); ++i) {
        QLabel *label = qobject_cast<QLabel *>(children[i]);
        if (0 != label)
            label->setFont(labelFont);
    }

    // Chart Viewer
    m_ChartViewer = new QChartViewer(rightPanel);
    m_ChartViewer->move(8, 12);

    //
    // Fill the contents of the combo boxes
    //
    if (!db.isOpen()) {
        db = QSqlDatabase::addDatabase("QPSQL", "stocks_conn");
        db.setHostName("localhost");
        db.setDatabaseName("consoledb2");
        db.setUserName("");
        db.setPassword("");
        bool ok = db.open();
    }

    QSqlTableModel *model0 = new QSqlTableModel(this, db);
    model0->setTable("\"public\".\"stocks\"");
    model0->setFilter(QString("Active = true"));
    model0->select();

    for (int i = 0; i < model0->rowCount(); i++) {
        QSqlRecord rec = model0->record(i);
        int id = rec.value("id").toInt();
        QString ticker = rec.value("ticker").toString();

        m_TickerSymbol->addItem(ticker, id);
    }
    m_TickerSymbol->setCurrentIndex(282);

    QSqlTableModel *model1 = new QSqlTableModel(this, db);
    model1->setTable("\"public\".\"timeframes\"");
    model1->setFilter(QString("Active = true"));
    model1->select();

    for (int i = 0; i < model1->rowCount(); i++) {
        QSqlRecord rec = model1->record(i);
        int tfsec = rec.value("id").toInt();
        QString tfname = rec.value("timeframename").toString();

        m_TimeRange->addItem(tfname, tfsec);
    }

    m_TimeRange->setCurrentIndex(2);

    m_PriceType->addItem("By close", "ByClose");
    m_PriceType->addItem("By average price", "ByAvg");


    m_ChartType->addItem("None", "None");
    m_ChartType->addItem("CandleStick", "CandleStick");
    m_ChartType->addItem("Closing Price", "Close");
    m_ChartType->addItem("Median Price", "Median");
    m_ChartType->addItem("OHLC", "OHLC");
    m_ChartType->addItem("Typical Price", "TP");
    m_ChartType->addItem("Weighted Close", "WC");
    m_ChartType->setCurrentIndex(1);


    // Use the same action hanlder for all controls
    const QObjectList &allControls = leftPanel->children();
    for (int i = 0; i < allControls.count(); ++i) {
        QObject *obj;
        if ((obj = qobject_cast<QComboBox *>(allControls[i])) != 0)
            connect(obj, SIGNAL(currentIndexChanged(int)), this, SLOT(onComboBoxChanged(int)));

        else if ((obj = qobject_cast<QDateEdit *>(allControls[i])) != 0) {
            connect(obj, SIGNAL(dateChanged(QDate)), this, SLOT(onDateChanged()));

        } else if ((obj = qobject_cast<QSlider *>(allControls[i])) != 0)
            connect(obj, SIGNAL(valueChanged(int)), SLOT(onSliderValueChanged(int)));
    }

}

void FinanceDemo::onComboBoxChanged(int) {
    drawChart();
}

void FinanceDemo::onDateChanged() {
    drawChart();
}

void FinanceDemo::onSliderValueChanged(int) {
    drawChart();
}

/////////////////////////////////////////////////////////////////////////////
// Chart Creation

/// <summary>
/// Draw the chart according to user selection and display it in the ChartViewer.
/// </summary>
/// <param name="viewer">The ChartViewer object to display the chart.</param>

void FinanceDemo::drawChart(DemoModule *chart) {

    //
    // Initialize member variables
    //
    m_Chart = chart;

    drawChart();
}

void FinanceDemo::drawChart() {

    //
    // Initialize member variables
    //
    int ticker = m_TickerSymbol->itemData(m_TickerSymbol->currentIndex()).toInt();
    int timeRange = m_TimeRange->itemData(m_TimeRange->currentIndex()).toInt();
    QString chartType = m_ChartType->itemData(m_ChartType->currentIndex()).toString();
    ballSize = m_ChartSize->value();

    m_Chart->createChart(m_ChartViewer,
            ticker,
            m_DateFrom->dateTime(),
            m_DateTo->dateTime(),
            timeRange,
            chartType,
            ballSize);
}