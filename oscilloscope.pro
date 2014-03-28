################################################################
# Qwt Widget Library
# Copyright (C) 1997   Josef Wilgen
# Copyright (C) 2002   Uwe Rathmann
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the Qwt License, Version 1.0
################################################################

CONFIG      += qwt
MOC_DIR      = moc
RCC_DIR      = resources

unix {
    CONFIG      += link_pkgconfig
    PKGCONFIG   += libnl-genl-3.0 libnl-3.0
}

!debug_and_release {
    OBJECTS_DIR       = obj
}

TARGET   = oscilloscope

HEADERS = \
    signaldata.h \
    plot.h \
    knob.h \
    wheelbox.h \
    samplingthread.h \
    curvedata.h \
    ad9520.h \
    adc08d1020.h \
    dac101c085.h \
    lmh6518.h \
    mainwindow.h 

SOURCES = \
    signaldata.cpp \
    plot.cpp \
    knob.cpp \
    wheelbox.cpp \
    samplingthread.cpp \
    curvedata.cpp \
    mainwindow.cpp \
    ad9520.cpp \
    adc08d1020.cpp \
    dac101c085.cpp \
    lmh6518.cpp \
    main.cpp
