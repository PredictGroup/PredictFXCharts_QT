# This file is generated automatically. Do not edit.
# Use project properties -> Build -> Qt -> Expert -> Custom Definitions.
TEMPLATE = app
DESTDIR = dist/Release/GNU-Linux
TARGET = PredictFXCharts_OS
VERSION = 1.0.0
CONFIG -= debug_and_release app_bundle lib_bundle
CONFIG += release 
PKGCONFIG +=
QT = core gui widgets
SOURCES += DemoModule.cpp Num_Bids.cpp Num_Offers.cpp Open_Positions.cpp aboutForm.cpp.cc hotspotdialog.cpp main.cpp mainWnd.cpp.cc qchartviewer.cpp
HEADERS += DemoModule.h IdentLevels.h Num_Bids.h Num_Offers.h Open_Positions.h aboutForm.h financedemo.h hotspotdialog.h mainWnd.h qchartviewer.h
FORMS += aboutForm.ui mainWnd.ui
RESOURCES += pfxMainRes.qrc
TRANSLATIONS +=
OBJECTS_DIR = build/Release/GNU-Linux
MOC_DIR = 
RCC_DIR = 
UI_DIR = 
QMAKE_CC = gcc
QMAKE_CXX = g++
DEFINES += 
INCLUDEPATH += 
LIBS += 
