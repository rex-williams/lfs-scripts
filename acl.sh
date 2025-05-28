#!/bin/sh
set -x
version="2.3.2"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf "/sources/acl-${version}.tar.xz" -C "$TMPDIR"
cd $TMPDIR/acl-${version} || exit 1
/configure --prefix=/usr         \
            --docdir=/usr/share/doc/acl-2.3.2
make || exit 1
make check || exit 1
make install
