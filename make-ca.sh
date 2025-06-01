#!/bin/sh -e
set -x
version="1.16"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf "/sources/make-ca-$version.tar.gz" -C "$TMPDIR"
cd $TMPDIR/make-ca-$version
make install &&
install -vdm755 /etc/ssl/local
