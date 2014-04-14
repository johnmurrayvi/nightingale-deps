#!/bin/bash

ARCH="$(uname -m)"

# XUL Version
export XUL="9.0.1"

export DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export NG_VENDOR_BINARIES_CO_ROOT=$DIR
export NG_VENDOR_BUILD_ROOT=$DIR

export NG_VENDOR_CROSS_COMP=1

# mingw-w64
export PATH="/opt/cross/mingw-w64/bin:$PATH"
echo $PATH
export CROSS="i686-w64-mingw32"


if [ ! -d "windows-i686-mingw32" ]; then
    mkdir -p "windows-i686-mingw32"
fi
if [ ! -d "checkout/windows-i686-mingw32" ]; then
    mkdir -p "checkout/windows-i686-mingw32"
fi

echo -e "Building xulrunner...\n"
make -C xulrunner xr-all
