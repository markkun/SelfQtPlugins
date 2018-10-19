CONFIG      += plugin debug_and_release
TARGET      = $$qtLibraryTarget(digitpanelplugin)
TEMPLATE    = lib

HEADERS     = digitpanelplugin.h
SOURCES     = digitpanelplugin.cpp
RESOURCES   = icons.qrc
LIBS        += -L. 

MOC_DIR = tmp/moc
OBJECTS_DIR = tmp/obj
RCC_DIR = tmp/rcc
UI_DIR = tmp/ui


msvc:QMAKE_CXXFLAGS += -execution-charset:utf-8
greaterThan(QT_MAJOR_VERSION, 4) {
    QT += designer
} else {
    CONFIG += designer
}

target.path = $$[QT_INSTALL_PLUGINS]/designer
INSTALLS    += target

include(digitPanel.pri)
