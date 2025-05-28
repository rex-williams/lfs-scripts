#!/bin/sh
set -x
version="1.13"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf "/sources/gzip-${version}.tar.gz" -C "$TMPDIR"
cd $TMPDIR/gzip-${version} || exit 1
./configure --prefix=/usr
make || exit 1
make check || exit 1
make install || exit 1
