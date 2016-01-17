#!/bin/bash

./configure --without-zlib --without-png --without-bzip2 \
'--prefix=/usr/local/iPhone' '--host=arm-apple-darwin' '--enable-static=yes' \
'--enable-shared=no' \
'CC=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang' \
'CFLAGS=-arch armv7s -pipe -std=c99 -fembed-bitcode -fpascal-strings -O2 -Wall -Wextra -Wcast-align -Wno-trigraphs -Wno-unused-parameter -Wno-format -Wno-unused-function -Wno-sign-compare -Wreturn-type -Wunused-variable -fmessage-length=0 -fvisibility=hidden -miphoneos-version-min=6.0 -I/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/include/libxml2/ -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/' \
'AR=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ar' \
'LDFLAGS=-arch armv7s -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/ -miphoneos-version-min=6.0'

