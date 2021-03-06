#############################################################################
# Makefile for building: dist/Debug/GNU-Linux/PredictFXCharts_OS
# Generated by qmake (3.0) (Qt 5.7.1)
# Project:  nbproject/qt-Debug.pro
# Template: app
# Command: /usr/lib/arm-linux-gnueabihf/qt5/bin/qmake VPATH=. -o qttmp-Debug.mk nbproject/qt-Debug.pro
#############################################################################

MAKEFILE      = qttmp-Debug.mk

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_SQL_LIB -DQT_CORE_LIB
CFLAGS        = -pipe -g -Wall -W -D_REENTRANT -fPIC $(DEFINES)
CXXFLAGS      = -pipe -g -std=gnu++11 -Wall -W -D_REENTRANT -fPIC $(DEFINES)
INCPATH       = -Inbproject -I. -IChartDirector/include -IChartDirector/lib -isystem /usr/include/arm-linux-gnueabihf/qt5 -isystem /usr/include/arm-linux-gnueabihf/qt5/QtWidgets -isystem /usr/include/arm-linux-gnueabihf/qt5/QtGui -isystem /usr/include/arm-linux-gnueabihf/qt5/QtSql -isystem /usr/include/arm-linux-gnueabihf/qt5/QtCore -I. -I. -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++
QMAKE         = /usr/lib/arm-linux-gnueabihf/qt5/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = PredictFXCharts_OS1.0.0
DISTDIR = /home/pi/NetBeansProjects/PredictFXCharts_OS/build/Debug/GNU-Linux/PredictFXCharts_OS1.0.0
LINK          = g++
LFLAGS        = 
LIBS          = $(SUBLIBS) -Wl,-rpath,ChartDirector/lib ChartDirector/lib/libchartdir.so -Wl,-rpath,ChartDirector/include -Wl,-rpath,ChartDirector/lib -lQt5Widgets -lQt5Gui -lQt5Sql -lQt5Core -lGLESv2 -lpthread 
AR            = ar cqs
RANLIB        = 
SED           = sed
STRIP         = strip

####### Output directory

OBJECTS_DIR   = build/Debug/GNU-Linux/

####### Files

SOURCES       = DemoModule.cpp \
		Num_Bids.cpp \
		Num_Offers.cpp \
		Open_Positions.cpp \
		aboutForm.cpp.cc \
		hotspotdialog.cpp \
		main.cpp \
		mainWnd.cpp.cc \
		qchartviewer.cpp qrc_pfxMainRes.cpp \
		moc_DemoModule.cpp \
		moc_Num_Bids.cpp \
		moc_Num_Offers.cpp \
		moc_Open_Positions.cpp \
		moc_aboutForm.cpp \
		moc_financedemo.cpp \
		moc_hotspotdialog.cpp \
		moc_mainWnd.cpp \
		moc_qchartviewer.cpp
OBJECTS       = build/Debug/GNU-Linux/DemoModule.o \
		build/Debug/GNU-Linux/Num_Bids.o \
		build/Debug/GNU-Linux/Num_Offers.o \
		build/Debug/GNU-Linux/Open_Positions.o \
		build/Debug/GNU-Linux/aboutForm.cpp.o \
		build/Debug/GNU-Linux/hotspotdialog.o \
		build/Debug/GNU-Linux/main.o \
		build/Debug/GNU-Linux/mainWnd.cpp.o \
		build/Debug/GNU-Linux/qchartviewer.o \
		build/Debug/GNU-Linux/qrc_pfxMainRes.o \
		build/Debug/GNU-Linux/moc_DemoModule.o \
		build/Debug/GNU-Linux/moc_Num_Bids.o \
		build/Debug/GNU-Linux/moc_Num_Offers.o \
		build/Debug/GNU-Linux/moc_Open_Positions.o \
		build/Debug/GNU-Linux/moc_aboutForm.o \
		build/Debug/GNU-Linux/moc_financedemo.o \
		build/Debug/GNU-Linux/moc_hotspotdialog.o \
		build/Debug/GNU-Linux/moc_mainWnd.o \
		build/Debug/GNU-Linux/moc_qchartviewer.o
DIST          = /usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/linux.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/sanitize.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/qconfig.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_post.prf \
		nbproject/.qmake.stash \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/toolchain.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_post.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resources.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/moc.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/uic.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/file_copies.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/yacc.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/lex.prf \
		nbproject/nbproject/qt-Debug.pro DemoModule.h \
		IdentLevels.h \
		Num_Bids.h \
		Num_Offers.h \
		Open_Positions.h \
		aboutForm.h \
		financedemo.h \
		hotspotdialog.h \
		mainWnd.h \
		qchartviewer.h DemoModule.cpp \
		Num_Bids.cpp \
		Num_Offers.cpp \
		Open_Positions.cpp \
		aboutForm.cpp.cc \
		hotspotdialog.cpp \
		main.cpp \
		mainWnd.cpp.cc \
		qchartviewer.cpp
QMAKE_TARGET  = PredictFXCharts_OS
DESTDIR       = dist/Debug/GNU-Linux/
TARGET        = dist/Debug/GNU-Linux/PredictFXCharts_OS


first: all
####### Build rules

$(TARGET): ui_aboutForm.h ui_mainWnd.h $(OBJECTS)  
	@test -d dist/Debug/GNU-Linux/ || mkdir -p dist/Debug/GNU-Linux/
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

qttmp-Debug.mk: nbproject/qt-Debug.pro /usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++/qmake.conf /usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/linux.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/sanitize.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/qconfig.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_post.prf \
		.qmake.stash \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/toolchain.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_post.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resources.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/moc.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/uic.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/file_copies.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/yacc.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/lex.prf \
		nbproject/qt-Debug.pro \
		pfxMainRes.qrc \
		/usr/lib/arm-linux-gnueabihf/libQt5Widgets.prl \
		/usr/lib/arm-linux-gnueabihf/libQt5Gui.prl \
		/usr/lib/arm-linux-gnueabihf/libQt5Sql.prl \
		/usr/lib/arm-linux-gnueabihf/libQt5Core.prl
	$(QMAKE) VPATH=. -o qttmp-Debug.mk nbproject/qt-Debug.pro
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_pre.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/unix.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/linux.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/sanitize.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base-unix.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-base.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-unix.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/qconfig.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_functions.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_config.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++/qmake.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_post.prf:
.qmake.stash:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exclusive_builds.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/toolchain.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_pre.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resolve_config.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_post.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/warn_on.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resources.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/moc.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/opengl.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/uic.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/thread.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/file_copies.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/testcase_targets.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exceptions.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/yacc.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/lex.prf:
nbproject/qt-Debug.pro:
pfxMainRes.qrc:
/usr/lib/arm-linux-gnueabihf/libQt5Widgets.prl:
/usr/lib/arm-linux-gnueabihf/libQt5Gui.prl:
/usr/lib/arm-linux-gnueabihf/libQt5Sql.prl:
/usr/lib/arm-linux-gnueabihf/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) VPATH=. -o qttmp-Debug.mk nbproject/qt-Debug.pro

qmake_all: FORCE


all: qttmp-Debug.mk $(TARGET)

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents $(DIST) $(DISTDIR)/
	$(COPY_FILE) --parents pfxMainRes.qrc $(DISTDIR)/
	$(COPY_FILE) --parents DemoModule.h IdentLevels.h Num_Bids.h Num_Offers.h Open_Positions.h aboutForm.h financedemo.h hotspotdialog.h mainWnd.h qchartviewer.h $(DISTDIR)/
	$(COPY_FILE) --parents DemoModule.cpp Num_Bids.cpp Num_Offers.cpp Open_Positions.cpp aboutForm.cpp.cc hotspotdialog.cpp main.cpp mainWnd.cpp.cc qchartviewer.cpp $(DISTDIR)/
	$(COPY_FILE) --parents aboutForm.ui mainWnd.ui $(DISTDIR)/


clean: compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) .qmake.stash
	-$(DEL_FILE) qttmp-Debug.mk


####### Sub-libraries

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

check: first

benchmark: first

compiler_rcc_make_all: qrc_pfxMainRes.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_pfxMainRes.cpp
qrc_pfxMainRes.cpp: pfxMainRes.qrc \
		/usr/lib/arm-linux-gnueabihf/qt5/bin/rcc \
		images/icon_vip.png \
		images/exit.png \
		images/info.png
	/usr/lib/arm-linux-gnueabihf/qt5/bin/rcc -name pfxMainRes pfxMainRes.qrc -o qrc_pfxMainRes.cpp

compiler_moc_header_make_all: moc_DemoModule.cpp moc_Num_Bids.cpp moc_Num_Offers.cpp moc_Open_Positions.cpp moc_aboutForm.cpp moc_financedemo.cpp moc_hotspotdialog.cpp moc_mainWnd.cpp moc_qchartviewer.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_DemoModule.cpp moc_Num_Bids.cpp moc_Num_Offers.cpp moc_Open_Positions.cpp moc_aboutForm.cpp moc_financedemo.cpp moc_hotspotdialog.cpp moc_mainWnd.cpp moc_qchartviewer.cpp
moc_DemoModule.cpp: qchartviewer.h \
		ChartDirector/include/chartdir.h \
		ChartDirector/include/bchartdir.h \
		ChartDirector/include/memblock.h \
		DemoModule.h \
		/usr/lib/arm-linux-gnueabihf/qt5/bin/moc
	/usr/lib/arm-linux-gnueabihf/qt5/bin/moc $(DEFINES) -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/include -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/lib -I/usr/include/arm-linux-gnueabihf/qt5 -I/usr/include/arm-linux-gnueabihf/qt5/QtWidgets -I/usr/include/arm-linux-gnueabihf/qt5/QtGui -I/usr/include/arm-linux-gnueabihf/qt5/QtSql -I/usr/include/arm-linux-gnueabihf/qt5/QtCore -I. -I/usr/include/c++/6 -I/usr/include/arm-linux-gnueabihf/c++/6 -I/usr/include/c++/6/backward -I/usr/lib/gcc/arm-linux-gnueabihf/6/include -I/usr/local/include -I/usr/lib/gcc/arm-linux-gnueabihf/6/include-fixed -I/usr/include/arm-linux-gnueabihf -I/usr/include DemoModule.h -o moc_DemoModule.cpp

moc_Num_Bids.cpp: DemoModule.h \
		qchartviewer.h \
		ChartDirector/include/chartdir.h \
		ChartDirector/include/bchartdir.h \
		ChartDirector/include/memblock.h \
		Num_Bids.h \
		/usr/lib/arm-linux-gnueabihf/qt5/bin/moc
	/usr/lib/arm-linux-gnueabihf/qt5/bin/moc $(DEFINES) -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/include -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/lib -I/usr/include/arm-linux-gnueabihf/qt5 -I/usr/include/arm-linux-gnueabihf/qt5/QtWidgets -I/usr/include/arm-linux-gnueabihf/qt5/QtGui -I/usr/include/arm-linux-gnueabihf/qt5/QtSql -I/usr/include/arm-linux-gnueabihf/qt5/QtCore -I. -I/usr/include/c++/6 -I/usr/include/arm-linux-gnueabihf/c++/6 -I/usr/include/c++/6/backward -I/usr/lib/gcc/arm-linux-gnueabihf/6/include -I/usr/local/include -I/usr/lib/gcc/arm-linux-gnueabihf/6/include-fixed -I/usr/include/arm-linux-gnueabihf -I/usr/include Num_Bids.h -o moc_Num_Bids.cpp

moc_Num_Offers.cpp: DemoModule.h \
		qchartviewer.h \
		ChartDirector/include/chartdir.h \
		ChartDirector/include/bchartdir.h \
		ChartDirector/include/memblock.h \
		Num_Offers.h \
		/usr/lib/arm-linux-gnueabihf/qt5/bin/moc
	/usr/lib/arm-linux-gnueabihf/qt5/bin/moc $(DEFINES) -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/include -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/lib -I/usr/include/arm-linux-gnueabihf/qt5 -I/usr/include/arm-linux-gnueabihf/qt5/QtWidgets -I/usr/include/arm-linux-gnueabihf/qt5/QtGui -I/usr/include/arm-linux-gnueabihf/qt5/QtSql -I/usr/include/arm-linux-gnueabihf/qt5/QtCore -I. -I/usr/include/c++/6 -I/usr/include/arm-linux-gnueabihf/c++/6 -I/usr/include/c++/6/backward -I/usr/lib/gcc/arm-linux-gnueabihf/6/include -I/usr/local/include -I/usr/lib/gcc/arm-linux-gnueabihf/6/include-fixed -I/usr/include/arm-linux-gnueabihf -I/usr/include Num_Offers.h -o moc_Num_Offers.cpp

moc_Open_Positions.cpp: DemoModule.h \
		qchartviewer.h \
		ChartDirector/include/chartdir.h \
		ChartDirector/include/bchartdir.h \
		ChartDirector/include/memblock.h \
		Open_Positions.h \
		/usr/lib/arm-linux-gnueabihf/qt5/bin/moc
	/usr/lib/arm-linux-gnueabihf/qt5/bin/moc $(DEFINES) -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/include -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/lib -I/usr/include/arm-linux-gnueabihf/qt5 -I/usr/include/arm-linux-gnueabihf/qt5/QtWidgets -I/usr/include/arm-linux-gnueabihf/qt5/QtGui -I/usr/include/arm-linux-gnueabihf/qt5/QtSql -I/usr/include/arm-linux-gnueabihf/qt5/QtCore -I. -I/usr/include/c++/6 -I/usr/include/arm-linux-gnueabihf/c++/6 -I/usr/include/c++/6/backward -I/usr/lib/gcc/arm-linux-gnueabihf/6/include -I/usr/local/include -I/usr/lib/gcc/arm-linux-gnueabihf/6/include-fixed -I/usr/include/arm-linux-gnueabihf -I/usr/include Open_Positions.h -o moc_Open_Positions.cpp

moc_aboutForm.cpp: ui_aboutForm.h \
		aboutForm.h \
		/usr/lib/arm-linux-gnueabihf/qt5/bin/moc
	/usr/lib/arm-linux-gnueabihf/qt5/bin/moc $(DEFINES) -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/include -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/lib -I/usr/include/arm-linux-gnueabihf/qt5 -I/usr/include/arm-linux-gnueabihf/qt5/QtWidgets -I/usr/include/arm-linux-gnueabihf/qt5/QtGui -I/usr/include/arm-linux-gnueabihf/qt5/QtSql -I/usr/include/arm-linux-gnueabihf/qt5/QtCore -I. -I/usr/include/c++/6 -I/usr/include/arm-linux-gnueabihf/c++/6 -I/usr/include/c++/6/backward -I/usr/lib/gcc/arm-linux-gnueabihf/6/include -I/usr/local/include -I/usr/lib/gcc/arm-linux-gnueabihf/6/include-fixed -I/usr/include/arm-linux-gnueabihf -I/usr/include aboutForm.h -o moc_aboutForm.cpp

moc_financedemo.cpp: qchartviewer.h \
		ChartDirector/include/chartdir.h \
		ChartDirector/include/bchartdir.h \
		ChartDirector/include/memblock.h \
		DemoModule.h \
		financedemo.h \
		/usr/lib/arm-linux-gnueabihf/qt5/bin/moc
	/usr/lib/arm-linux-gnueabihf/qt5/bin/moc $(DEFINES) -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/include -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/lib -I/usr/include/arm-linux-gnueabihf/qt5 -I/usr/include/arm-linux-gnueabihf/qt5/QtWidgets -I/usr/include/arm-linux-gnueabihf/qt5/QtGui -I/usr/include/arm-linux-gnueabihf/qt5/QtSql -I/usr/include/arm-linux-gnueabihf/qt5/QtCore -I. -I/usr/include/c++/6 -I/usr/include/arm-linux-gnueabihf/c++/6 -I/usr/include/c++/6/backward -I/usr/lib/gcc/arm-linux-gnueabihf/6/include -I/usr/local/include -I/usr/lib/gcc/arm-linux-gnueabihf/6/include-fixed -I/usr/include/arm-linux-gnueabihf -I/usr/include financedemo.h -o moc_financedemo.cpp

moc_hotspotdialog.cpp: ChartDirector/include/chartdir.h \
		ChartDirector/include/bchartdir.h \
		ChartDirector/include/memblock.h \
		hotspotdialog.h \
		/usr/lib/arm-linux-gnueabihf/qt5/bin/moc
	/usr/lib/arm-linux-gnueabihf/qt5/bin/moc $(DEFINES) -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/include -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/lib -I/usr/include/arm-linux-gnueabihf/qt5 -I/usr/include/arm-linux-gnueabihf/qt5/QtWidgets -I/usr/include/arm-linux-gnueabihf/qt5/QtGui -I/usr/include/arm-linux-gnueabihf/qt5/QtSql -I/usr/include/arm-linux-gnueabihf/qt5/QtCore -I. -I/usr/include/c++/6 -I/usr/include/arm-linux-gnueabihf/c++/6 -I/usr/include/c++/6/backward -I/usr/lib/gcc/arm-linux-gnueabihf/6/include -I/usr/local/include -I/usr/lib/gcc/arm-linux-gnueabihf/6/include-fixed -I/usr/include/arm-linux-gnueabihf -I/usr/include hotspotdialog.h -o moc_hotspotdialog.cpp

moc_mainWnd.cpp: ui_mainWnd.h \
		financedemo.h \
		qchartviewer.h \
		ChartDirector/include/chartdir.h \
		ChartDirector/include/bchartdir.h \
		ChartDirector/include/memblock.h \
		DemoModule.h \
		aboutForm.h \
		ui_aboutForm.h \
		mainWnd.h \
		/usr/lib/arm-linux-gnueabihf/qt5/bin/moc
	/usr/lib/arm-linux-gnueabihf/qt5/bin/moc $(DEFINES) -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/include -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/lib -I/usr/include/arm-linux-gnueabihf/qt5 -I/usr/include/arm-linux-gnueabihf/qt5/QtWidgets -I/usr/include/arm-linux-gnueabihf/qt5/QtGui -I/usr/include/arm-linux-gnueabihf/qt5/QtSql -I/usr/include/arm-linux-gnueabihf/qt5/QtCore -I. -I/usr/include/c++/6 -I/usr/include/arm-linux-gnueabihf/c++/6 -I/usr/include/c++/6/backward -I/usr/lib/gcc/arm-linux-gnueabihf/6/include -I/usr/local/include -I/usr/lib/gcc/arm-linux-gnueabihf/6/include-fixed -I/usr/include/arm-linux-gnueabihf -I/usr/include mainWnd.h -o moc_mainWnd.cpp

moc_qchartviewer.cpp: ChartDirector/include/chartdir.h \
		ChartDirector/include/bchartdir.h \
		ChartDirector/include/memblock.h \
		qchartviewer.h \
		/usr/lib/arm-linux-gnueabihf/qt5/bin/moc
	/usr/lib/arm-linux-gnueabihf/qt5/bin/moc $(DEFINES) -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/include -I/home/pi/NetBeansProjects/PredictFXCharts_OS/nbproject/ChartDirector/lib -I/usr/include/arm-linux-gnueabihf/qt5 -I/usr/include/arm-linux-gnueabihf/qt5/QtWidgets -I/usr/include/arm-linux-gnueabihf/qt5/QtGui -I/usr/include/arm-linux-gnueabihf/qt5/QtSql -I/usr/include/arm-linux-gnueabihf/qt5/QtCore -I. -I/usr/include/c++/6 -I/usr/include/arm-linux-gnueabihf/c++/6 -I/usr/include/c++/6/backward -I/usr/lib/gcc/arm-linux-gnueabihf/6/include -I/usr/local/include -I/usr/lib/gcc/arm-linux-gnueabihf/6/include-fixed -I/usr/include/arm-linux-gnueabihf -I/usr/include qchartviewer.h -o moc_qchartviewer.cpp

compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_aboutForm.h ui_mainWnd.h
compiler_uic_clean:
	-$(DEL_FILE) ui_aboutForm.h ui_mainWnd.h
ui_aboutForm.h: aboutForm.ui \
		/usr/lib/arm-linux-gnueabihf/qt5/bin/uic
	/usr/lib/arm-linux-gnueabihf/qt5/bin/uic aboutForm.ui -o ui_aboutForm.h

ui_mainWnd.h: mainWnd.ui \
		/usr/lib/arm-linux-gnueabihf/qt5/bin/uic
	/usr/lib/arm-linux-gnueabihf/qt5/bin/uic mainWnd.ui -o ui_mainWnd.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_rcc_clean compiler_moc_header_clean compiler_uic_clean 

####### Compile

build/Debug/GNU-Linux/DemoModule.o: DemoModule.cpp DemoModule.h \
		qchartviewer.h \
		ChartDirector/include/chartdir.h \
		ChartDirector/include/bchartdir.h \
		ChartDirector/include/memblock.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/DemoModule.o DemoModule.cpp

build/Debug/GNU-Linux/Num_Bids.o: Num_Bids.cpp Num_Bids.h \
		DemoModule.h \
		qchartviewer.h \
		ChartDirector/include/chartdir.h \
		ChartDirector/include/bchartdir.h \
		ChartDirector/include/memblock.h \
		ChartDirector/include/FinanceChart.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/Num_Bids.o Num_Bids.cpp

build/Debug/GNU-Linux/Num_Offers.o: Num_Offers.cpp Num_Offers.h \
		DemoModule.h \
		qchartviewer.h \
		ChartDirector/include/chartdir.h \
		ChartDirector/include/bchartdir.h \
		ChartDirector/include/memblock.h \
		ChartDirector/include/FinanceChart.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/Num_Offers.o Num_Offers.cpp

build/Debug/GNU-Linux/Open_Positions.o: Open_Positions.cpp Open_Positions.h \
		DemoModule.h \
		qchartviewer.h \
		ChartDirector/include/chartdir.h \
		ChartDirector/include/bchartdir.h \
		ChartDirector/include/memblock.h \
		ChartDirector/include/FinanceChart.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/Open_Positions.o Open_Positions.cpp

build/Debug/GNU-Linux/aboutForm.cpp.o: aboutForm.cpp.cc aboutForm.h \
		ui_aboutForm.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/aboutForm.cpp.o aboutForm.cpp.cc

build/Debug/GNU-Linux/hotspotdialog.o: hotspotdialog.cpp hotspotdialog.h \
		ChartDirector/include/chartdir.h \
		ChartDirector/include/bchartdir.h \
		ChartDirector/include/memblock.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/hotspotdialog.o hotspotdialog.cpp

build/Debug/GNU-Linux/main.o: main.cpp mainWnd.h \
		ui_mainWnd.h \
		financedemo.h \
		qchartviewer.h \
		ChartDirector/include/chartdir.h \
		ChartDirector/include/bchartdir.h \
		ChartDirector/include/memblock.h \
		DemoModule.h \
		aboutForm.h \
		ui_aboutForm.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/main.o main.cpp

build/Debug/GNU-Linux/mainWnd.cpp.o: mainWnd.cpp.cc financedemo.h \
		qchartviewer.h \
		ChartDirector/include/chartdir.h \
		ChartDirector/include/bchartdir.h \
		ChartDirector/include/memblock.h \
		DemoModule.h \
		ChartDirector/include/FinanceChart.h \
		mainWnd.h \
		ui_mainWnd.h \
		aboutForm.h \
		ui_aboutForm.h \
		Open_Positions.h \
		Num_Bids.h \
		Num_Offers.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/mainWnd.cpp.o mainWnd.cpp.cc

build/Debug/GNU-Linux/qchartviewer.o: qchartviewer.cpp qchartviewer.h \
		ChartDirector/include/chartdir.h \
		ChartDirector/include/bchartdir.h \
		ChartDirector/include/memblock.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/qchartviewer.o qchartviewer.cpp

build/Debug/GNU-Linux/qrc_pfxMainRes.o: qrc_pfxMainRes.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/qrc_pfxMainRes.o qrc_pfxMainRes.cpp

build/Debug/GNU-Linux/moc_DemoModule.o: moc_DemoModule.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/moc_DemoModule.o moc_DemoModule.cpp

build/Debug/GNU-Linux/moc_Num_Bids.o: moc_Num_Bids.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/moc_Num_Bids.o moc_Num_Bids.cpp

build/Debug/GNU-Linux/moc_Num_Offers.o: moc_Num_Offers.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/moc_Num_Offers.o moc_Num_Offers.cpp

build/Debug/GNU-Linux/moc_Open_Positions.o: moc_Open_Positions.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/moc_Open_Positions.o moc_Open_Positions.cpp

build/Debug/GNU-Linux/moc_aboutForm.o: moc_aboutForm.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/moc_aboutForm.o moc_aboutForm.cpp

build/Debug/GNU-Linux/moc_financedemo.o: moc_financedemo.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/moc_financedemo.o moc_financedemo.cpp

build/Debug/GNU-Linux/moc_hotspotdialog.o: moc_hotspotdialog.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/moc_hotspotdialog.o moc_hotspotdialog.cpp

build/Debug/GNU-Linux/moc_mainWnd.o: moc_mainWnd.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/moc_mainWnd.o moc_mainWnd.cpp

build/Debug/GNU-Linux/moc_qchartviewer.o: moc_qchartviewer.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux/moc_qchartviewer.o moc_qchartviewer.cpp

####### Install

install:  FORCE

uninstall:  FORCE

FORCE:

