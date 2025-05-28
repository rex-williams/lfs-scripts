#!/bin/sh
set -x
version="1.0.8"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf "/sources/bzip2-$(echo "$version" | sed 's/\./_/g').tar.gz" -C "$TMPDIR"
cd $TMPDIR/bzip2-${version} || exit 1
