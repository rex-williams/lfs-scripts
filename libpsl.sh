#!/bin/sh
set -x
version="0.21.5"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf "/sources/libpsl-${version}.tar.xz" -C "$TMPDIR"
cd $TMPDIR/libpsl-${version} || exit 1
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release &&

ninja
ninja install
