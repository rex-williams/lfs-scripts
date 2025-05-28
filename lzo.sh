#!/bin/sh
version="2.10"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf /sources/lzo-${version}.tar.gz -C "$TMPDIR"
cd $TMPDIR/lzo-${version} || exit 1
./configure --prefix=/usr    \
            --enable-shared  \
            --docdir=/usr/share/doc/lzo-2.10 &&
make || exit 1
make install
