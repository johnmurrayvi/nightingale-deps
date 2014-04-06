#!/bin/bash

# export PATH="/opt/mxe/bin:$PATH"
export PATH="/opt/cross/mxe/usr/bin:$PATH"

export CROSS="i686-pc-mingw32.static-"

export CC="$CROSS"gcc
export LD="$CROSS"ld
export AR="$CROSS"ar
export PKG_CONFIG="$CROSS"pkg-config

make
