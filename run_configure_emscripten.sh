#!/bin/bash

emconfigure ./configure --without-zlib --without-png --without-bzip2 \
--enable-shared=yes --enable-static=no --with-harfbuzz=no CFLAGS="-O2"

# workaround: build the host executable manually
mkdir -p objs
gcc -o ./objs/apinames ./src/tools/apinames.c
