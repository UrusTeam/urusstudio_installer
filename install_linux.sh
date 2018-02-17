#!/bin/sh
umask 022

cd system

../download_toolchain.sh
cp -f ../start_urusstudio bin/

echo ----------------------------------------
echo Install done!
echo ----------------------------------------

sleep 5
