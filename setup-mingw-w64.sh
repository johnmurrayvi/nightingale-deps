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

# NEEDED TO INSTALL CRT AND FINSIH GCC INSTALL
alias sudowpath="sudo env PATH=$PATH"


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
    --prefix=/opt/cross/mingw-w64/ \
    --target=i686-w64-mingw32

make -j$JNUM
sudo make install
cd $TOPDIR


# add new toolchain to path
echo "### Added by mingw-w64 build script ###" | tee -a ~/.bashrc
echo "export PATH=/opt/cross/mingw-w64:$PATH" | tee -a ~/.bashrc
source ~/.bashrc


# install mingw-w64-headers
mkdir mingw-w64-headers32 && cd mingw-w64-headers32
../mingw-w64-svn/mingw-w64-headers/configure \
    --host=i686-w64-mingw32 \
    --prefix=/opt/cross/mingw-w64/i686-w64-mingw32/ \
    --enable-sdk=all \
    --enable-secure-api \
    --enable-idl

sudo make install
cd $TOPDIR


# build and install gcc
mkdir $GCCVER-mingw32 && cd $GCCVER-mingw32
../$GCCVER/configure \
    --prefix=/opt/cross/mingw-w64/ \
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
    --prefix=/opt/cross/mingw-w64/i686-w64-mingw32/

make -j$JNUM
sudowpath make install
cd $TOPDIR


# finish GCC build and install
cd $GCCVER-mingw32
make -j$JNUM
sudowpath make install
cd $TOPDIR


# configure, build, and install widl (replacement for midl)
mkdir widl32 && cd widl32
../mingw-w64-svn/mingw-w64-tools/widl/configure \
    --prefix=/opt/cross/mingw-w64 \
    --target=i686-w64-mingw32

make -j$JNUM
sudowpath make install
cd $TOPDIR


# configure, build, and install libffi
mkdir $FFIVER-mingw32 && cd $FFIVER-mingw32
../$FFIVER/configure \
    --prefix=/opt/cross/mingw-w64 \
    --host=i686-w64-mingw32
make -j$JNUM
sudo make install
cd $TOPDIR

echo "done!"
