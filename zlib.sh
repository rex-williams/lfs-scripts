#!/bin/sh
set -x
version="1.3.1"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf "/sources/zlib-${version}.tar.gz" -C "$TMPDIR"
cd $TMPDIR/zlib-${version} || exit 1
