#!/bin/sh
set -x
version="1.25.0"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf "/sources/wget-${version}.tar.xz" -C "$TMPDIR"
cd $TMPDIR/wget-${version} || exit 1
./configure --prefix=/usr      \
            --sysconfdir=/etc  \
            --with-ssl=openssl
make || exit 1
make check
make install
