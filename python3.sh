#!/bin/sh
set -x
version="3.13.2"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf "/sources/Python-${version}.tar.gz" -C "$TMPDIR"
cd $TMPDIR/Python-${version} || exit 1
./configure --prefix=/usr \
            --enable-shared \
            --without-ensurepip
make
make install
