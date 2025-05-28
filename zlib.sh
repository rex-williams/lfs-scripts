#!/bin/sh
set -x
version="1.3.1"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf "/sources/zlib-${version}.tar.gz" -C "$TMPDIR"
cd $TMPDIR/zlib-${version} || exit 1
./configure --prefix=/usr
make || exit 1
make check || exit 1
make install || exit 1
