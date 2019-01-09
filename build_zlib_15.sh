#!/bin/bash

. ./build_env_0.sh

echo "building zlib"

cd source/zlib

sed -i 's/-O3/-Os/g' configure
./configure --prefix=/usr --shared
make && make DESTDIR=${OS}/ install

mv -v ${OS}/usr/lib/libz.so.* ${OS}/lib
ln -svf ../../lib/libz.so.1 ${OS}/usr/lib/libz.so
ln -svf ../../lib/libz.so.1 ${OS}/usr/lib/libz.so.1
ln -svf ../lib/libz.so.1 ${OS}/lib64/libz.so.1

echo "completed zlib build"

cd ../../
