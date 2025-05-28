#!/bin/sh
set -x
version="2.4.47"
TMPDIR="/tmp/build"
[ -d "$TMPDIR" ] || mkdir "$TMPDIR"
tar xvf "/sources/attr-${version}.tar.xz" -C "$TMPDIR"
cd $TMPDIR/attr-${version} || exit 1
sed -i -e 's|/@pkg_name@|&-@pkg_version@|' include/builddefs.in &&

INSTALL_USER=root  \
INSTALL_GROUP=root \
./configure --prefix=/usr &&
make || exit 1
make install install-dev install-lib &&
chmod -v 755 /usr/lib/libattr.so &&
mv -v /usr/lib/libattr.so.* /lib &&
ln -sfv ../../lib/libattr.so.1 /usr/lib/libattr.so
