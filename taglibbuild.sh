#!/bin/bash

set -e

export DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export SB_VENDOR_BINARIES_CO_ROOT=$DIR
export SB_VENDOR_BUILD_ROOT=$DIR

# Currently, we build both debug and release, which takes a lot longer,
# especially on xulrunner... TODO: make it optional to build debug

rm -rf build
mkdir build

case $OSTYPE in
    # linux is easy, as all it requires right now is xulrunner, sqlite, and taglib
    # we'll get to a point where this is unnecessary on linux altogether in the future
    linux*)
        export CXXFLAGS="-fpermissive"
        export CFLAGS=$CXXFLAGS
        export CCFLAGS=$CXXFLAGS

        if [ ! -d "linux-$(uname -m)" ]; then
            mkdir -p "linux-$(uname -m)"
            mkdir -p "checkout/linux-$(uname -m)"
            if [ ! -d "build" ]; then
                mkdir "build"
            fi
        fi

        echo -e "Building taglib...\n"
        make -C taglib -f Makefile.songbird

    ;;

    *)
        echo "Lazy buildscript for your OS coming soon."
    ;;
esac
