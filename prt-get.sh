#!/bin/sh
set -x
version="5.19.6"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf /sources/prt-get-${version}.tar.xz -C "$TMPDIR"
cd $TMPDIR/prt-get-${version} || exit 1
./configure --prefix=/usr
make || exit 1
make install
