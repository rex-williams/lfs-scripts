#!/bin/sh
set -x
version="3.13.2"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf "/sources/Python-${version}.tar.xz" -C "$TMPDIR"
cd $TMPDIR/Python-${version} || exit 1
./configure --prefix=/usr \
            --enable-shared \
            --with-system-expat \
            --enable-optimizations
make
make install
