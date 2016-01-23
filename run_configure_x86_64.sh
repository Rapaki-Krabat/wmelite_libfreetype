#!/bin/bash

if [ -z $CUSTOM_PLATFORM_CONFIG ]; then
PLATFORM_CONFIG='../ios_platform_config.sh'
else
PLATFORM_CONFIG=$CUSTOM_PLATFORM_CONFIG
fi

MY_ARCH='x86_64'
MY_CC=$($PLATFORM_CONFIG --cc)
MY_CFLAGS=$($PLATFORM_CONFIG --cflags_sim)
MY_MINVERSION=$($PLATFORM_CONFIG --minversion)
MY_LIBXML_INC=$(xml2-config --cflags)
MY_SYSROOT=$($PLATFORM_CONFIG --sysroot-sim)
MY_AR=$($PLATFORM_CONFIG --ar)

CFLAGS_COMPOSITE="-arch $MY_ARCH $MY_CFLAGS -miphoneos-version-min=$MY_MINVERSION $MY_LIBXML_INC -isysroot $MY_SYSROOT"
LDFLAGS_COMPOSITE="-arch $MY_ARCH -isysroot $MY_SYSROOT -miphoneos-version-min=$MY_MINVERSION"

./configure --without-zlib --without-png --without-bzip2 \
'--prefix=/usr/local/iPhone' '--host=arm-apple-darwin' '--enable-static=yes' \
'--enable-shared=no' \
CC=$MY_CC \
CFLAGS="$CFLAGS_COMPOSITE" \
AR=$MY_AR \
LDFLAGS="$LDFLAGS_COMPOSITE"

