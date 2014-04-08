#!/bin/bash

if [ $(pwd) != $(cd ~ && pwd) ] ; then
    TOPDIR=$(cd .. && pwd)
else
    mkdir cross && cd cross
fi

git clone git@github.com:johnmurrayvi/mxe.git -b master

cd mxe

make check-requirements

if [ ! -f settings.mk ] ; then
    echo "error! you need to have the dependencies for MXE!"
    exit 1;
fi

echo "MXE_TARGETS := i686-pc-mingw32.static i686-pc-mingw32.shared" >> settings.mk

echo "Hang on, this might take awhile..."

make autoconf automake binutils gcc gcc-cloog gcc-gmp gcc-mpc \
     gcc-mpfr libffi m4 mingwrt nasm pkgconf w32api


sudo mkdir -p /opt/cross
sudo ln -s $(pwd) /opt/cross/mxe

cd $TOPDIR

if [ ! -d ng-deps-cross ] ; then
    git clone git@github.com:johnmurrayvi/nightingale-deps.git -b cross-xul-9.0.1 ng-deps-cross
fi

cd ng-deps-cross

./cross-build-no-xul.sh
