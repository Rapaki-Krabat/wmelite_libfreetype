#!/bin/bash

chmod 755 run_configure_armv7.sh
./run_configure_armv7.sh
make clean
make
mkdir -p custombuild
rm -f custombuild/libfreetype-armv7.a
cp objs/.libs/libfreetype.a custombuild/libfreetype-armv7.a

cd dependencies/freetype-2.6/
chmod 755 run_configure_armv7s.sh
./run_configure_armv7s.sh
make clean
make
mkdir -p custombuild
rm -f custombuild/libfreetype-armv7s.a
cp objs/.libs/libfreetype.a custombuild/libfreetype-armv7s.a

cd dependencies/freetype-2.6/
chmod 755 run_configure_arm64.sh
./run_configure_arm64.sh
make clean
make
mkdir -p custombuild
rm -f custombuild/libfreetype-arm64.a
cp objs/.libs/libfreetype.a custombuild/libfreetype-arm64.a

mkdir -p Release-iphoneos/
rm -f Release-iphoneos/libfreetype.a
$($CUSTOM_PLATFORM_CONFIG --lipo) -create -output Release-iphoneos/libfreetype.a custombuild/libfreetype-armv7.a custombuild/libfreetype-armv7s.a custombuild/libfreetype-arm64.a
$($CUSTOM_PLATFORM_CONFIG --lipo)  -info Release-iphoneos/libfreetype.a

mkdir -p $($CUSTOM_PLATFORM_CONFIG --installdir)/libfreetype/include/
rm -rf $($CUSTOM_PLATFORM_CONFIG --installdir)/libfreetype/include/*
cp -r include/* $($CUSTOM_PLATFORM_CONFIG --installdir)/libfreetype/include/

mkdir -p $($CUSTOM_PLATFORM_CONFIG --installdir)/libfreetype/libcombined/
rm -rf $($CUSTOM_PLATFORM_CONFIG --installdir)/libfreetype/libcombined/*
cp Release-iphoneos/libfreetype.a $($CUSTOM_PLATFORM_CONFIG --installdir)/libfreetype/libcombined/
