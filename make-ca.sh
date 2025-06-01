#!/bin/sh
set -x
version="1.15"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf "/sources/make-ca-${version}.tar.xz" -C "$TMPDIR"
cd $TMPDIR/make-ca-${version} || exit 1
make install &&
install -vdm755 /etc/ssl/local
