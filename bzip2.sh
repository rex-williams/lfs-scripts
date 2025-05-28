#!/bin/sh
set -x
version="1.0.8"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf "/sources/bzip2-${version}.tar.gz" -C "$TMPDIR"
cp -fv "/sources/bzip2-${version}-install_docs-1.patch" "$TMPDIR/bzip2-${version}"
cd $TMPDIR/bzip2-${version} || exit 1
patch -Np1 -i ../bzip2-1.0.8-install_docs-1.patch
