#!/bin/bash

./configure --without-zlib --without-png --without-bzip2 \
'--prefix=/usr/local/iPhone' '--host=arm-apple-darwin' '--enable-static=yes' \
'--enable-shared=no' \
'CC=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang' \
'CFLAGS=-arch i386   -pipe -std=c99 -Wno-trigraphs -fpascal-strings -O2 -Wreturn-type -Wunused-variable -fmessage-length=0 -fvisibility=hidden -fexceptions -fasm-blocks -mios-simulator-version-min=5.1.1 -I/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/include/libxml2/ -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk' \
'AR=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ar' \
'LDFLAGS=-arch i386   -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/ -mios-simulator-version-min=5.1.1'
