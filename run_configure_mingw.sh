#!/bin/bash

TARGET=i586-mingw32msvc

./configure --without-zlib --without-png --without-bzip2 \
'--enable-static=no' \
'--enable-shared=yes' \
'--with-harfbuzz=no' \
--target=$TARGET --host=$TARGET --build=i386-linux 
