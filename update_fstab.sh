#!/bin/sh

busybox sh -c '

    if [ -e etc/fstab ] ; then

        export URUSINFSTAB=$(grep -sri etc/fstab -e "/system/urus" | wc -l)

        if [ "$URUSINFSTAB" != 0 ] ; then
            printf "URUS bind are present on /etc/fstab\n"
        else
            mkdir -p system/urus
            printf "\n$(pwd) /system/urus none bind,binary,noacl,user\n" >> etc/fstab
            printf ""P"ATH=/system/urus/mingw32/bin:"$"PATH\n" >> etc/profile
            printf ""P"ATH=/system/urus/bin:"$"PATH\n" >> etc/profile
            printf ""P"ATH=/system/urus/lib:"$"PATH\n" >> etc/profile
            printf ""P"ATH=/usr/bin:/bin:"$"PATH\n" >> etc/profile
            #printf "MSYS=winsymlinks:nativestrict\n" >> etc/profile
            printf "URUS path bind INSTALLED! on /etc/fstab\n"
        fi

    fi'

exit 0
