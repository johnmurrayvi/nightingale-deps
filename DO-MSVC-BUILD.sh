#!/bin/bash

set -e

export DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export SB_VENDOR_BINARIES_CO_ROOT=$DIR
export SB_VENDOR_BUILD_ROOT=$DIR

export DEP_DIR_WIN_PATH="$(sh -c "(echo $DIR | sed -e 's/\\//\\\\/g;s/^\\\\\([a-z]\)\\\\/\\1:\\\\/')")"
# echo "\$DEP_DIR_WIN_PATH = $DEP_DIR_WIN_PATH"


case $OSTYPE in
    msys*)
        if [ ! -d "build" ]; then
            mkdir "build"
        fi
        if [ ! -d "windows-i686-msvc8" ]; then
            mkdir -p "windows-i686-msvc8"
        fi
        if [ ! -d "checkout/windows-i686-msvc8" ]; then
            mkdir -p "checkout/windows-i686-msvc8"
        fi
        # if [ ! -d "windows-i686-msvc9" ]; then
        #     mkdir -p "windows-i686-msvc9"
        # fi
        # if [ ! -d "checkout/windows-i686-msvc9" ]; then
        #     mkdir -p "checkout/windows-i686-msvc9"
        # fi


        # export DIRECTX_SDK_ROOT="/c/Program Files (x86)/Microsoft DirectX SDK (June 2010)"
        # export DIRECTX_SDK_ROOT="/c/Program Files (x86)/Microsoft DirectX SDK (June 2008)"
        export DIRECTX_SDK_ROOT="/c/SDKs/DXSDK_Jun08"
        # export QUICKTIME_SDK_ROOT="/c/Program Files (x86)/QuickTime SDK"
        export QUICKTIME_SDK_ROOT="/c/SDKs/QuickTime-SDK"
        # export WINDOWS_SDK_ROOT="/c/Program Files (x86)/Microsoft SDKs/Windows/v6.0A"
        export WINDOWS_SDK_ROOT="/c/SDKs/Windows-SDK/v6.0"
        # export WINDOWS_SDK_ROOT="/c/SDKs/Windows-SDK/v7.0"

        # echo "Building xr-build-debug..."
        # make -C xulrunner-1.9.2 -f Makefile.songbird xr-build-debug

        # echo "Building xr-build-release..."
        # make -C xulrunner-1.9.2 -f Makefile.songbird xr-build-release

        # echo "Building xr-symbols..."
        # make -C xulrunner-1.9.2 -f Makefile.songbird xr-symbols

        # echo "Building xr-packaging-debug..."
        # make -C xulrunner-1.9.2 -f Makefile.songbird xr-packaging-debug

        # echo "Building xr-packaging-release..."
        # make -C xulrunner-1.9.2 -f Makefile.songbird xr-packaging-release

# --------------------------------------------------------------------------- #

# XXX   # echo -e "Building libtool..."
# XXX   # make -C libtool -f Makefile.songbird

# --------------------------------------------------------------------------- #

        ########
        # Don't need to build libiconv actually?
        ########
        # make -C libiconv -f Makefile.songbird
        # make -C gettext -f Makefile.songbird
        # make -C glib -f Makefile.songbird

# pkg d # echo -e "Building libiconv..."
# pkg d # make -C libiconv -f Makefile.songbird

# pkg d # echo -e "Building gettext..."
# pkg d # make -C gettext -f Makefile.songbird

# pkg d # echo -e "Building glib..."
# pkg d # make -C glib -f Makefile.songbird


# --------------------------------------------------------------------------- #

        # make -C libiconv-1.14 -f Makefile.songbird
        # make -C libffi -f Makefile.songbird
        # make -C zlib -f Makefile.songbird

#####   ###########################################
        ##### make -C libiconv-1.14 -f Makefile.songbird
        # make -C libiconv-1.14-msvcrt -f Makefile.songbird ICONV_ONLY_LIBS=1
        # make -C libiconv-1.14-msvcrt -f Makefile.songbird ICONV_ONLY_LIBS=1 ICONVDLL=1
        # make -C gettext-win -f Makefile.songbird
        ## HOLD OFF ON THESE FOR NOW ## make -C libiconv-1.14-msvcrt -f Makefile.songbird
        ## HOLD OFF ON THESE FOR NOW ## make -C libiconv-1.14-msvcrt -f Makefile.songbird ICONV_ONLY_LIBS=1 ICONVDLL=1

        # make -C gettext-0.14.6-sb -f Makefile.songbird
#####   ###########################################

        ### FAIL ### # make -C gettext -f Makefile.songbird
        # make -C gettext-win -f Makefile.songbird
        # make -C wingetopt -f Makefile.songbird
        # make -C gettext-win-full -f Makefile.songbird

        # make -C glib -f Makefile.songbird

        # make -C glib-2.32.4 -f Makefile.songbird
        # make -C glib-2.16.6 -f Makefile.songbird

        # make -C sqlite -f Makefile.songbird
        # using libjpeg-turbo instead # make -C libjpeg -f Makefile.songbird
        # make -C libjpeg-turbo -f Makefile.songbird
        # make -C taglib -f Makefile.songbird
        # using flac 1.2.1 instead # make -C flac -f Makefile.songbird     # error C2485: '__restrict' : unrecognized extended attribute
        # make -C flac-1.2.1 -f Makefile.songbird
        # make -C libogg -f Makefile.songbird
        # make -C libvorbis -f Makefile.songbird
        # make -C libtheora -f Makefile.songbird


        # REDO - FREAKING LIBTOOL
        # make -C libjpeg-turbo -f Makefile.songbird
        # make -C libogg -f Makefile.songbird
        # make -C libvorbis -f Makefile.songbird
        # make -C libtheora -f Makefile.songbird
        # make -C gstreamer -f Makefile.songbird
        # make -C gst-plugins-base -f Makefile.songbird
        # make -C gst-plugins-good -f Makefile.songbird


        # make -C gstreamer -f Makefile.songbird
        # make -C gst-plugins-base -f Makefile.songbird
        # make -C gst-plugins-good -f Makefile.songbird
        # make -C gst-plugins-bad -f Makefile.songbird


# make -C wingetopt -f Makefile.songbird
# make -C gettext -f Makefile.songbird

        # make -C gst-plugins-ugly -f Makefile.songbird


# --------------------------------------------------------------------------- #

        # echo "Building zlib..."
        # make -C zlib -f Makefile.songbird

        # echo -e "Building sqlite..."
        # make -C sqlite -f Makefile.songbird

# --------------------------------------------------------------------------- #

        # echo -e "Building libjpeg...\n"
        # make -C libjpeg -f Makefile.songbird

# --------------------------------------------------------------------------- #

        # echo -e "Building libogg...\n"
        # make -C libogg -f Makefile.songbird

        # echo -e "Building libvorbis...\n"
        # make -C libvorbis -f Makefile.songbird

        # echo -e "Building libtheora...\n"
        # make -C libtheora -f Makefile.songbird

# --------------------------------------------------------------------------- #

        # echo -e "Building FLAC...\n"
        # make -C flac -f Makefile.songbird

        # echo "Building taglib..."
        # make -C taglib -f Makefile.songbird

# --------------------------------------------------------------------------- #

        # echo -e "Building gstreamer...\n"
        # make -C gstreamer -f Makefile.songbird

# --------------------------------------------------------------------------- #

        # echo -e "Building gst plugins...\n"
        # make -C gst-plugins-base -f Makefile.songbird
        # make -C gst-plugins-good -f Makefile.songbird
        # make -C gst-plugins-bad -f Makefile.songbird
        # make -C gst-plugins-ugly -f Makefile.songbird

    ;;
    *)
        echo "Lazy buildscript for your OS coming soon."
    ;;
esac
