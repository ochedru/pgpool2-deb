#!/bin/sh -ex

cd pgpool2
ln -s ../pgpool2-deb/debian .

patch -p0 < ../bug152.patch

debuild -b -us -uc
