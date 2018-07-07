#!/bin/sh

if [ -e /etc/fstab ] ; then

    export URUSINFSTAB=$(grep -sri /etc/fstab -e "/system/urus" | wc -l)

    if [ "$URUSINFSTAB" != 0 ] ; then
        printf "URUS bind are present on /etc/fstab\n"
    else
        mkdir -p /system/urus
        printf "\n$(pwd)/system /system/urus none bind\n" >> /etc/fstab
        sed -i "1i export PATH=/system/urus/bin:"$"PATH" /etc/profile
        #sed -i "1i export LD_LIBRARY_PATH=/system/urus/lib:"$"LD_LIBRARY_PATH" /etc/profile
        sed -i "1i export ACLOCAL_FLAGS=-I/system/urus/share/aclocal:"$"ACLOCAL_FLAGS" /etc/profile
        printf "\nexport ACLOCAL_FLAGS=-I/system/urus/share/aclocal:"$"ACLOCAL_FLAGS\n" >> ~/.profile
        #printf "export LD_LIBRARY_PATH=/system/urus/lib:"$"LD_LIBRARY_PATH\n" >> ~/.profile
        printf "export PATH=/system/urus/bin:"$"PATH\n" >> ~/.profile
        printf "/system/urus/i686-pc-linux-gnu/lib\n" >> /etc/ld.so.conf.d/i686-urus-linux-gnu.conf
        printf "/system/urus/lib\n" >> /etc/ld.so.conf.d/i686-urus-linux-gnu.conf
        cp -f $(pwd)/system/i686-pc-linux-gnu/lib/*.py ../archives/
        ldconfig
        printf "URUS path bind INSTALLED! on /etc/fstab\n"
    fi
    mount /system/urus
    . ~/.profile

fi

exit 0
