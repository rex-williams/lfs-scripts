#!/bin/sh -e
set -x
version="8.13.0"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf "/sources/curl-$version.tar.xz" -C "$TMPDIR"
cp -fv "/sources/curl-8.14.0-upstream_fix-1.patch" "$TMPDIR"
cd $TMPDIR/curl-$version
patch -Np1 -i ../curl-8.14.0-upstream_fix-1.patch
./configure --prefix=/usr    \
            --disable-static \
            --with-openssl   \
            --with-ca-path=/etc/ssl/certs
make
make install
rm -rf docs/examples/.deps
find docs \( -name Makefile\* -o  \
             -name \*.1       -o  \
             -name \*.3       -o  \
             -name CMakeLists.txt \) -delete
cp -v -R docs -T /usr/share/doc/curl-8.14.0
