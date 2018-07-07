#!/bin/sh
umask 022

cd system

../download_toolchain.sh
cp -f ../start_urusstudio bin/
cp -f ../download_android_tools bin/
mkdir -p archives

echo ----------------------------------------
echo Install done!
echo ----------------------------------------

sleep 5
