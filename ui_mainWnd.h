/********************************************************************************
** Form generated from reading UI file 'mainWnd.ui'
**
** Created by: Qt User Interface Compiler version 5.7.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWND_H
#define UI_MAINWND_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTreeView>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_mainWnd
{
public:
    QAction *actionQuit;
    QAction *actionAbout;
    QWidget *centralwidget;
    QWidget *gridLayoutWidget;
    QGridLayout *gridLayout;
    QTreeView *treeView;
    QWidget *gridLayoutWidget_2;
    QGridLayout *gridLayout_2;
    QWidget *widgetChartView;
    QMenuBar *menubar;
    QMenu *menu;
    QMenu *menuHelp;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *mainWnd)
    {
        if (mainWnd->objectName().isEmpty())
            mainWnd->setObjectName(QStringLiteral("mainWnd"));
        mainWnd->resize(1300, 800);
        QSizePolicy sizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(mainWnd->sizePolicy().hasHeightForWidth());
        mainWnd->setSizePolicy(sizePolicy);
        QIcon icon;
        icon.addFile(QStringLiteral(":/images/icon_vip.png"), QSize(), QIcon::Normal, QIcon::Off);
        mainWnd->setWindowIcon(icon);
        mainWnd->setDockNestingEnabled(true);
        actionQuit = new QAction(mainWnd);
        actionQuit->setObjectName(QStringLiteral("actionQuit"));
        QIcon icon1;
        icon1.addFile(QStringLiteral(":/images/exit.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionQuit->setIcon(icon1);
        actionAbout = new QAction(mainWnd);
        actionAbout->setObjectName(QStringLiteral("actionAbout"));
        QIcon icon2;
        icon2.addFile(QStringLiteral(":/images/info.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionAbout->setIcon(icon2);
        centralwidget = new QWidget(mainWnd);
        centralwidget->setObjectName(QStringLiteral("centralwidget"));
        gridLayoutWidget = new QWidget(centralwidget);
        gridLayoutWidget->setObjectName(QStringLiteral("gridLayoutWidget"));
        gridLayoutWidget->setGeometry(QRect(0, 0, 251, 751));
        gridLayout = new QGridLayout(gridLayoutWidget);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        treeView = new QTreeView(gridLayoutWidget);
        treeView->setObjectName(QStringLiteral("treeView"));
        treeView->setEditTriggers(QAbstractItemView::NoEditTriggers);

        gridLayout->addWidget(treeView, 0, 0, 1, 1);

        gridLayoutWidget_2 = new QWidget(centralwidget);
        gridLayoutWidget_2->setObjectName(QStringLiteral("gridLayoutWidget_2"));
        gridLayoutWidget_2->setGeometry(QRect(259, -1, 1041, 751));
        gridLayout_2 = new QGridLayout(gridLayoutWidget_2);
        gridLayout_2->setObjectName(QStringLiteral("gridLayout_2"));
        gridLayout_2->setContentsMargins(0, 0, 0, 0);
        widgetChartView = new QWidget(gridLayoutWidget_2);
        widgetChartView->setObjectName(QStringLiteral("widgetChartView"));

        gridLayout_2->addWidget(widgetChartView, 0, 0, 1, 1);

        mainWnd->setCentralWidget(centralwidget);
        menubar = new QMenuBar(mainWnd);
        menubar->setObjectName(QStringLiteral("menubar"));
        menubar->setGeometry(QRect(0, 0, 1300, 23));
        menu = new QMenu(menubar);
        menu->setObjectName(QStringLiteral("menu"));
        menuHelp = new QMenu(menubar);
        menuHelp->setObjectName(QStringLiteral("menuHelp"));
        mainWnd->setMenuBar(menubar);
        statusbar = new QStatusBar(mainWnd);
        statusbar->setObjectName(QStringLiteral("statusbar"));
        mainWnd->setStatusBar(statusbar);

        menubar->addAction(menu->menuAction());
        menubar->addAction(menuHelp->menuAction());
        menu->addAction(actionQuit);
        menuHelp->addAction(actionAbout);

        retranslateUi(mainWnd);
        QObject::connect(actionQuit, SIGNAL(triggered()), mainWnd, SLOT(close()));

        QMetaObject::connectSlotsByName(mainWnd);
    } // setupUi

    void retranslateUi(QMainWindow *mainWnd)
    {
        mainWnd->setWindowTitle(QApplication::translate("mainWnd", "PredictCharts", Q_NULLPTR));
        actionQuit->setText(QApplication::translate("mainWnd", "&Quit", Q_NULLPTR));
        actionQuit->setShortcut(QApplication::translate("mainWnd", "Ctrl+Q", Q_NULLPTR));
        actionAbout->setText(QApplication::translate("mainWnd", "About", Q_NULLPTR));
        menu->setTitle(QApplication::translate("mainWnd", "File", Q_NULLPTR));
        menuHelp->setTitle(QApplication::translate("mainWnd", "Help", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class mainWnd: public Ui_mainWnd {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWND_H
