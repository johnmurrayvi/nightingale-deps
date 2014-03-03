#!/bin/bash

ARCH="$(uname -m)"

# XUL Version
export XUL="9.0.1"

export DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export NG_VENDOR_BINARIES_CO_ROOT=$DIR
export NG_VENDOR_BUILD_ROOT=$DIR

export NG_VENDOR_CROSS_COMP=1

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

        ### NEED AUTOMAKE-1.14.1!!! ###

        # echo -e "Building libtool...\n"
        # make -C libtool -f Makefile.ngmingw32

        # echo -e "Building libiconv...\n"
        # make -C libiconv -f Makefile.ngmingw32

        # echo -e "Building libjpeg-turbo...\n"
        # make -C libjpeg-turbo -f Makefile.ngmingw32

        ### TIER 1 ###
        ### Gettext... the lazy way #############
        # echo -e "Building gettext...\n"
        # make -C gettext -f Makefile.ngmingw32

        # cd build/gettext/debug/gettext-tools && autoreconf -f -i
        # cd $DIR

        # echo -e "Building gettext... again\n"
        # make -C gettext -f Makefile.ngmingw32

        # cd build/gettext/release/gettext-tools && autoreconf -f -i
        # cd $DIR

        # echo -e "Building gettext... and again\n"
        # make -C gettext -f Makefile.ngmingw32
        #########################################

        # echo -e "Building glib...\n"
        # make -C glib -f Makefile.ngmingw32

        # echo -e "Building sqlite...\n"
        # make -C sqlite -f Makefile.ngmingw32

        # ### TIER 2 ###
        # echo -e "Building libogg...\n"
        # make -C libogg -f Makefile.ngmingw32

        # echo -e "Building libvorbis...\n"
        # make -C libvorbis -f Makefile.ngmingw32

        # echo -e "Building libtheora...\n"
        # make -C libtheora -f Makefile.ngmingw32

        # echo -e "Building FLAC...\n"
        # make -C flac -f Makefile.ngmingw32

        # echo -e "Building taglib...\n"
        # make -C taglib -f Makefile.ngmingw32

        # ### TIER 3 ###
        # echo -e "Building gstreamer...\n"
        # make -C gstreamer -f Makefile.ngmingw32

        # ### TIER 4 ###
        # echo -e "Building gst plugins...\n"
        # make -C gst-plugins-base -f Makefile.ngmingw32
        # make -C gst-plugins-good -f Makefile.ngmingw32
        # make -C gst-plugins-bad -f Makefile.ngmingw32
        # make -C gst-plugins-ugly -f Makefile.ngmingw32
    ;;

    *)
        echo "This script is meant for cross compiling from linux to win32!\n"
    ;;

esac
