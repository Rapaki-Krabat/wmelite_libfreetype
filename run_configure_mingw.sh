#!/bin/bash

TARGET=i686-w64-mingw32

./configure --without-zlib --without-png --without-bzip2 \
'--enable-static=no' \
'--enable-shared=yes' \
'--with-harfbuzz=no' \
--target=$TARGET --host=$TARGET --build=i386-linux 
