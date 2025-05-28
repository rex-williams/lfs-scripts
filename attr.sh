#!/bin/sh
set -x
version="2.5.2"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf "/sources/attr-${version}.tar.gz" -C "$TMPDIR"
cd $TMPDIR/attr-${version} || exit 1
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/attr-2.5.2
make || exit 1
make check || exit 1
make install
