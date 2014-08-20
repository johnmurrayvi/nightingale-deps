#!/bin/bash

ARCH="$(uname -m)"

# XUL Version
export XUL="9.0.1"

export DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export NG_VENDOR_BINARIES_CO_ROOT=$DIR
export NG_VENDOR_BUILD_ROOT=$DIR

export NG_VENDOR_CROSS_COMP=1


### NEED AUTOMAKE-1.13!!! ###
### NEED AUTOMAKE-1.14!!! ###
### NEED AUTOMAKE-1.14.1!!! ###


# mingw32msvc
# export CROSS="i586-pc-mingw32msvc-"

# mxe
# export PATH="/opt/cross/mxe/usr/bin:$PATH"
# echo $PATH
# export CROSS="i686-pc-mingw32"
# export CROSS_LIBTYPE="static"
# export CROSS_CMAKE_TC_PATH="/opt/cross/mxe/usr"

# mingw-w64
# export PATH="/opt/cross/mingw-w64/bin:$PATH"
# echo $PATH
# export CROSS="i686-w64-mingw32"
# export CROSS_CMAKE_TC_PATH="/opt/cross/mingw-w64"


# msvc tools with wine
WPRE="/home/jmurray/.wine-32/drive_c"
export CROSS="i686-wine-mingw32"
export WINEARCH="win32"
export WINEPREFIX="/home/jmurray/.wine-32"
export BUVER="binutils-2.17.50"

VC_VER="VC8"
VC_DIR="$WPRE/$VC_VER"
VC_INC_DIR="$VC_DIR/include"

WIN_SDK_VER="v6.0"
WIN_SDK_DIR="$WPRE/SDKs/Windows-SDK/$WIN_SDK_VER"
WIN_SDK_INC_DIR="$WIN_SDK_DIR/Include"

export WINE_C_FLAGS="-I$VC_INC_DIR -I$WIN_SDK_INC_DIR"
export INCLUDE="$VC_INC_DIR:$WIN_SDK_INC_DIR"

export PATH="$WPRE:$WPRE/$VC_VER/bin:$PATH"
echo "\$PATH = $PATH"
echo "which link = `which link`"


if [ ! -d "build" ]; then
    mkdir build
fi

case $OSTYPE in
    linux*)
        # if [ ! -d "windows-i686-w64" ]; then
        #     mkdir -p "windows-i686-w64"
        # fi
        # if [ ! -d "checkout/windows-i686-w64" ]; then
        #     mkdir -p "checkout/windows-i686-w64"
        # fi
        if [ ! -d "windows-i686-wine" ]; then
            mkdir -p "windows-i686-wine"
        fi
        if [ ! -d "checkout/windows-i686-wine" ]; then
            mkdir -p "checkout/windows-i686-wine"
        fi

        # export CFLAGS="-I$VC_INC_DIR -I$WIN_SDK_INC_DIR"
        # export CXXFLAGS="-I$VC_INC_DIR -I$WIN_SDK_INC_DIR"
        # export CPPFLAGS="-I$VC_INC_DIR -I$WIN_SDK_INC_DIR"

# ------------------------------------------------------- #
        # echo -e "Building libiconv...\n"
        # make -C libiconv -f Makefile.ngwine
        # make -C libiconv -f Makefile.ngmingw32
        make -C libiconv-1.14 -f Makefile.ngwine
        # make -C libiconv-1.14 -f Makefile.ngmingw32
# ------------------------------------------------------- #

#       ### TIER 1 ###
#       echo -e "Building gettext...\n"
#       make -C gettext -f Makefile.ngmingw32
#       make -C gettext-0.14.6 -f Makefile.ngwine
## ------------------------------------------------------- #
#       make -C libffi -f Makefile.ngmingw32
## ------------------------------------------------------- #
#       echo -e "Building zlib...\n"
#       make -C zlib -f Makefile.ngmingw32
#       make -C zlib -f Makefile.ngmingw32 CROSS_ZLIB_W64=1
## ------------------------------------------------------- #
#       echo -e "Building glib...\n"
#       make -C glib -f Makefile.ngmingw32
## ------------------------------------------------------- #
#       echo -e "Building sqlite...\n"
#       make -C sqlite -f Makefile.ngmingw32
## ------------------------------------------------------- #
#       echo -e "Building libjpeg-turbo...\n"
#       make -C libjpeg-turbo -f Makefile.ngmingw32
## ------------------------------------------------------- #
#
#       ### TIER 2 ###
#       echo -e "Building libogg...\n"
#       make -C libogg -f Makefile.ngmingw32
## ------------------------------------------------------- #
#       echo -e "Building libvorbis...\n"
#       make -C libvorbis -f Makefile.ngmingw32
## ------------------------------------------------------- #
#       echo -e "Building libtheora...\n"
#       make -C libtheora -f Makefile.ngmingw32
## ------------------------------------------------------- #
#       echo -e "Building FLAC...\n"
#       make -C flac -f Makefile.ngmingw32
## ------------------------------------------------------- #
#       echo -e "Building taglib...\n"
#       make -C taglib -f Makefile.ngmingw32
## ------------------------------------------------------- #
#
#       ### TIER 3 ###
#       echo -e "Building gstreamer...\n"
#       make -C gstreamer -f Makefile.ngmingw32
## ------------------------------------------------------- #
#
#       ### TIER 4 ###
#       echo -e "Building gst plugins...\n"
#       make -C gst-plugins-base -f Makefile.ngmingw32
#       make -C gst-plugins-good -f Makefile.ngmingw32
#       make -C gst-plugins-bad -f Makefile.ngmingw32
#       make -C gst-plugins-ugly -f Makefile.ngmingw32
## ------------------------------------------------------- #

        echo "Done!"
    ;;

    *)
        echo "This script is meant for cross compiling from linux to win32!\n"
    ;;

esac
