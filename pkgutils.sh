#!/bin/sh
version="5.40.9"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf /sources/pkgutils-${version}.tar.xz -C "$TMPDIR"
cd $TMPDIR/pkgutils-${version} || exit 1
sed -i -e 's/ --static//' -e 's/ -static//' Makefile
make || exit 1
make install
