#!/bin/sh
set -x
version="1.5.7"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf "/sources/zstd-${version}.tar.gz" -C "$TMPDIR"
cd $TMPDIR/zstd-${version} || exit 1
make prefix=/usr || exit 1
make check || exit 1
make prefix=/usr install
