#!/bin/sh
set -x
version="2.41"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf "/sources/glibc-${version}.tar.xz" -C "$TMPDIR"
cd $TMPDIR/glibc-${version} || exit 1
localedef -i C -f UTF-8 C.UTF-8
