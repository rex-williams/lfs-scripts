#!/bin/sh
version="3.10.1"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf /sources/nettle-${version}.tar.gz -C "$TMPDIR"
cd $TMPDIR/nettle-${version} || exit 1
