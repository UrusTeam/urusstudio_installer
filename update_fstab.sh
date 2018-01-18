#!/bin/sh

busybox sh -c '

    if [ -e etc/fstab ] ; then

        export URUSINFSTAB=$(grep -sri etc/fstab -e "/system/urus" | wc -l)

        if [ "$URUSINFSTAB" != 0 ] ; then
            printf "URUS bind are present on /etc/fstab\n"
        else
            printf "\n$(pwd) /system/urus none bind\n" >> etc/fstab
            printf "URUS path bind INSTALLED! on /etc/fstab\n"
        fi

    fi'

exit 0
