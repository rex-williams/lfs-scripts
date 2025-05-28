#!/bin/sh
version="3.10.1"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf /sources/nettle-${version}.tar.gz -C "$TMPDIR"
cd $TMPDIR/nettle-${version} || exit 1
./configure \
            --prefix=/usr &&
make || exit 1
make install &&
chmod   -v   755 /usr/lib/lib{hogweed,nettle}.so &&
install -v -m755 -d /usr/share/doc/nettle-3.10.1 &&
install -v -m644 nettle.{html,pdf} /usr/share/doc/nettle-3.10.1
