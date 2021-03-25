#!/bin/sh

export BASEPATH=/system/urus/bin
export DESTPATH=/system/urus/lib
#bash -lc "ldd $BASEPATH/urusstudio" | grep -e "/urus" | grep -v "winpthread" | \
#grep -v "i686" | grep -v "avr" | grep -v "arm" | sed -r -e 's:( =>).*::;' | \
#xargs -I {} rm -f $BASEPATH/{}

mv -f $BASEPATH/*.dll $DESTPATH/ 2>/dev/null
mv -f $BASEPATH/*.a $DESTPATH/ 2>/dev/null

rm -rf $BASEPATH/../share/urusstudio/*.zip
rm -rf $BASEPATH/../share/urusstudio/plugins/*
