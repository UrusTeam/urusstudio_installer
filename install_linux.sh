#!/bin/sh
umask 022

cd system

../download_toolchain.sh
cp -f ../start_urusstudio bin/
cp -f ../download_android_tools bin/
mkdir -p archives
cp -rf ../archives/urusstudio archives/
mv -f $(pwd)/i686-pc-linux-gnu/lib/*.py ../archives/
sudo ldconfig

if [ "x$BUILD_TARGETS" != "x" ] ; then
start_urusstudio --user-data-dir=archives/urusstudio --build $USP_PATH --target=$USP_TARGET_PATH
fi

echo ----------------------------------------
echo Install done!
echo ----------------------------------------

sleep 5
