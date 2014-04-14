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
# export PATH="/opt/mxe/bin:$PATH"
export PATH="/opt/cross/mxe/usr/bin:$PATH"
echo $PATH
export CROSS="i686-pc-mingw32"
export CROSS_LIBTYPE="static"
export CROSS_CMAKE_TC_PATH="/opt/cross/mxe/usr"


if [ ! -d "build" ]; then
    mkdir build
fi

case $OSTYPE in
    linux*)
        if [ ! -d "windows-i686-msvc10" ]; then
            mkdir -p "windows-i686-msvc10"
        fi
        if [ ! -d "checkout/windows-i686-msvc10" ]; then
            mkdir -p "checkout/windows-i686-msvc10"
        fi


        ### not needed ###
        # echo -e "Building libtool...\n"
        # make -C libtool -f Makefile.ngmingw32


        export CROSS_LIBTYPE="static"

## ------------------------------------------------------- #
#
#       # echo -e "Building libiconv...\n"
#       make -C libiconv -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#       ### TIER 1 ###
#       # echo -e "Building gettext...\n"
#       make -C gettext -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#       # echo -e "Building glib...\n"
#       make -C glib -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#       # echo -e "Building zlib...\n"
#       make -C zlib -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#       # echo -e "Building sqlite...\n"
#       make -C sqlite -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#       # echo -e "Building libjpeg-turbo...\n"
#       make -C libjpeg-turbo -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#       ### TIER 2 ###
#       # echo -e "Building libogg...\n"
#       make -C libogg -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#       # echo -e "Building libvorbis...\n"
#       make -C libvorbis -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#       # echo -e "Building libtheora...\n"
#       make -C libtheora -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#       # echo -e "Building FLAC...\n"
#       make -C flac -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#        # echo -e "Building taglib...\n"
#        make -C taglib -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#        ### TIER 3 ###
#        # echo -e "Building gstreamer...\n"
#        make -C gstreamer -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#        ### TIER 4 ###
#        # echo -e "Building gst plugins...\n"
#        make -C gst-plugins-base -f Makefile.ngmingw32
#        make -C gst-plugins-good -f Makefile.ngmingw32
#        make -C gst-plugins-bad -f Makefile.ngmingw32
#        make -C gst-plugins-ugly -f Makefile.ngmingw32




        # mv build build-static
        # mv windows-i686-msvc10 windows-i686-msvc10-static




        export CROSS_LIBTYPE="shared"

## ------------------------------------------------------- #
#
#        # echo -e "Building libiconv...\n"
#        make -C libiconv -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#        ### TIER 1 ###
#        # echo -e "Building gettext...\n"
#        make -C gettext -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#        # echo -e "Building glib...\n"
#        make -C glib -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#        # echo -e "Building zlib...\n"
#        make -C zlib -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#        # echo -e "Building sqlite...\n"
#        make -C sqlite -f Makefile.ngmingw32
#
### ------------------------------------------------------- #
#
#        # echo -e "Building libjpeg-turbo...\n"
#        make -C libjpeg-turbo -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#        ### TIER 2 ###
#        # echo -e "Building libogg...\n"
#        make -C libogg -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#        # echo -e "Building libvorbis...\n"
#        make -C libvorbis -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#        # echo -e "Building libtheora...\n"
#        make -C libtheora -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#        # echo -e "Building FLAC...\n"
#        make -C flac -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#        # echo -e "Building taglib...\n"
#        make -C taglib -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#        ### TIER 3 ###
#        # echo -e "Building gstreamer...\n"
#        make -C gstreamer -f Makefile.ngmingw32
#
## ------------------------------------------------------- #
#
#        ### TIER 4 ###
#        # echo -e "Building gst plugins...\n"
#        make -C gst-plugins-base -f Makefile.ngmingw32
#        make -C gst-plugins-good -f Makefile.ngmingw32
#        make -C gst-plugins-bad -f Makefile.ngmingw32
#        make -C gst-plugins-ugly -f Makefile.ngmingw32

        # mv build build-shared
        # mv windows-i686-msvc10 windows-i686-msvc10-shared

    ;;

    *)
        echo "This script is meant for cross compiling from linux to win32!\n"
    ;;

esac
