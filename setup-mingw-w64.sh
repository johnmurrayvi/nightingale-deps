#!/bin/bash

#########################################################################
#                                                                       #
# This program is free software: you can redistribute it and/or modify  #
# it under the terms of the GNU General Public License as published by  #
# the Free Software Foundation, either version 3 of the License, or     #
# (at your option) any later version.                                   #
#                                                                       #
# This program is distributed in the hope that it will be useful,       #
# but WITHOUT ANY WARRANTY; without even the implied warranty of        #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         #
# GNU General Public License for more details.                          #
#                                                                       #
# You should have received a copy of the GNU General Public License     #
# along with this program.  If not, see <http://www.gnu.org/licenses/>. #
#                                                                       #
#########################################################################

# Adapted from 
# https://developer.mozilla.org/en-US/docs/Cross_Compile_Mozilla_for_Mingw32


TOPDIR=$(pwd)

BINUTILSVER=binutils-2.24
GCCVER=gcc-4.8.2
FFIVER=libffi-3.0.13
NUMPROC=$(getconf _NPROCESSORS_ONLN)
JNUM="$(($NUMPROC / 2))"
PREFIX=/opt/cross/mingw-w64

# NEEDED TO INSTALL CRT AND FINSIH GCC INSTALL
sudowpath="sudo env PATH=$PATH"


echo "Your build directory will be $TOPDIR"
echo -n "Is this okay with you? [N/y]"
read -n 1 isdirokay
echo

if [ "$isdirokay" == "y" ] || [ "$isdirokay" == "Y" ] ; then
    echo "Alright, proceeding with script!"
else
    echo "Okay, copy this script to the directory you want to build"
    echo "build in, and then run it there."
    exit 1
fi


# get packages
wget http://ftp.gnu.org/gnu/binutils/$BINUTILSVER.tar.bz2
tar -jxf $BINUTILSVER.tar.bz2
wget http://gcc.fyxm.net/releases/$GCCVER/$GCCVER.tar.bz2
tar -jxf $GCCVER.tar.bz2
wget ftp://sourceware.org/pub/libffi/libffi-3.0.13.tar.gz
tar -xf $FFIVER.tar.gz

# checkout mingw-w64 code
svn co svn://svn.code.sf.net/p/mingw-w64/code/trunk mingw-w64-svn


# configure, build, and install binutils
mkdir $BINUTILSVER-build32 && cd $BINUTILSVER-build32

../$BINUTILSVER/configure \
    --prefix=$PREFIX \
    --target=i686-w64-mingw32

make -j$JNUM
sudo make install
cd $TOPDIR


# add new toolchain to path
echo "### Added by mingw-w64 build script ###" | tee -a ~/.bashrc
echo -e "export PATH=/opt/cross/mingw-w64:\$PATH" | tee -a ~/.bashrc
source ~/.bashrc


# install mingw-w64-headers
mkdir mingw-w64-headers32 && cd mingw-w64-headers32
../mingw-w64-svn/mingw-w64-headers/configure \
    --host=i686-w64-mingw32 \
    --prefix=$PREFIX/i686-w64-mingw32/ \
    --enable-sdk=all \
    --enable-secure-api \
    --enable-idl

sudo make install
cd $TOPDIR


# build and install gcc
mkdir $GCCVER-mingw32 && cd $GCCVER-mingw32
../$GCCVER/configure \
    --prefix=$PREFIX/ \
    --target=i686-w64-mingw32 \
    --with-gnu-ld \
    --with-gnu-as \
    --enable-languages=c,c++ \
    --disable-multilib

make -j$JNUM all-gcc
sudo make install-gcc
cd $TOPDIR


# configure, build, and install mingw-w64-crt
mkdir mingw-w64-crt32 && cd mingw-w64-crt32
../mingw-w64-svn/mingw-w64-crt/configure \
    --host=i686-w64-mingw32 \
    --prefix=$PREFIX/i686-w64-mingw32/

make -j$JNUM
$sudowpath make install
cd $TOPDIR


# finish GCC build and install
cd $GCCVER-mingw32
make -j$JNUM
$sudowpath make install
cd $TOPDIR


# configure, build, and install widl (replacement for midl)
mkdir widl32 && cd widl32
../mingw-w64-svn/mingw-w64-tools/widl/configure \
    --prefix=$PREFIX \
    --target=i686-w64-mingw32

make -j$JNUM
$sudowpath make install
cd $TOPDIR


# configure, build, and install libffi
mkdir $FFIVER-mingw32 && cd $FFIVER-mingw32
../$FFIVER/configure \
    --prefix=$PREFIX \
    --host=i686-w64-mingw32
make -j$JNUM
sudo make install
cd $TOPDIR


# set up pkg-config
PKGCONF=i686-w64-mingw32-pkg-config

(cat << EOF) > $PKGCONF
#!/bin/bash

# This file has no copyright assigned and is placed in the Public Domain.
# No warranty is given.

# When using the mingw32msvc cross compiler tools, the native Linux
# pkg-config executable works fine as long as the default PKG_CONFIG_LIBDIR
# is overridden.
export PKG_CONFIG_LIBDIR=/opt/cross/mingw-w64/lib/pkgconfig

# Also want to override the standard user defined PKG_CONFIG_PATH with
# a mingw32msvc specific one.
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH_MINGWW64

# Now just execute pkg-config with the given command line args.
pkg-config $@
EOF

sudo mv $PKGCONF $PREFIX/bin/$PKGCONF
sudo chmod +x $PREFIX/bin/$PKGCONF


# install cmake toolchain file
CTCFILE=mingw-w64-conf.cmake

sudo mkdir $PREFIX/i686-w64-mingw32/share/cmake

(cat << EOF) > $CTCFILE
# the name of the target operating system
SET(CMAKE_SYSTEM_NAME Windows)
set(MSYS 1)
set(BUILD_SHARED_LIBS ON)

# Choose an appropriate compiler prefix
# for 32 or 64 bits mingw-w64
# see http://mingw-w64.sourceforge.net/
set(COMPILER_PREFIX "i686-w64-mingw32")

# which compilers to use for C and C++
#find_program(CMAKE_RC_COMPILER NAMES \${COMPILER_PREFIX}-windres)
#find_program(CMAKE_C_COMPILER NAMES \${COMPILER_PREFIX}-gcc)
#find_program(CMAKE_CXX_COMPILER NAMES \${COMPILER_PREFIX}-g++)
set(CMAKE_C_COMPILER \${COMPILER_PREFIX}-gcc)
set(CMAKE_CXX_COMPILER \${COMPILER_PREFIX}-g++)
set(CMAKE_RC_COMPILER \${COMPILER_PREFIX}-windres)
set(PKG_CONFIG_EXECUTABLE \${COMPILER_PREFIX}-pkg-config)

# here is the target environment located
SET(CMAKE_FIND_ROOT_PATH /opt/cross/mingw-w64/\${COMPILER_PREFIX})

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search 
# programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

EOF

sudo mv $CTCFILE $PREFIX/i686-w64-mingw32/share/cmake/$CTCFILE



echo "done!"
