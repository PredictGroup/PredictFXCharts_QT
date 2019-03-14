# -------------------------------------------------
# QT Project File
# -------------------------------------------------
TARGET = viewportcontroldemo

TEMPLATE = app
greaterThan(QT_MAJOR_VERSION, 4) {
    QT += widgets
} 

SOURCES += qchartviewer.cpp \
    viewportcontroldemo.cpp

HEADERS += qchartviewer.h \
    viewportcontroldemo.h

RESOURCES += viewportcontroldemo.qrc

INCLUDEPATH += ../../include

DEFINES += CHARTDIR_HIDE_OBSOLETE _CRT_SECURE_NO_WARNINGS

win32:LIBS += ../../lib/chartdir60.lib
win32:QMAKE_POST_LINK = copy /Y ..\\..\\lib\\chartdir60.dll $(DESTDIR)

macx:LIBS += -L../../lib -lchartdir
macx:QMAKE_POST_LINK += mkdir -p \"`dirname $(TARGET)`/../Frameworks\";
macx:QMAKE_POST_LINK += cp ../../lib/libchartdir.6.dylib \"`dirname $(TARGET)`/../Frameworks\";
macx:QMAKE_POST_LINK += install_name_tool -change libchartdir.6.dylib \
     \@loader_path/../Frameworks/libchartdir.6.dylib \"$(TARGET)\";

unix:!macx:LIBS += -L../../lib -lchartdir
unix:!macx:QMAKE_RPATHDIR += ../../lib

