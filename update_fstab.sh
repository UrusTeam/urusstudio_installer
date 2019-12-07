#!/bin/sh

busybox sh -c '

    if [ -e etc/fstab ] ; then

        export URUSINFSTAB=$(grep -sri etc/fstab -e "/system/urus" | wc -l)

        if [ "$URUSINFSTAB" != 0 ] ; then
            printf "URUS bind are present!\n"
        else
            mkdir -p system/urus
            printf "\n$(pwd) /system/urus none bind,binary,posix=0,noacl,user\n" >> etc/fstab
            printf ""P"ATH=/system/urus/mingw32/bin:"$"PATH\n" >> etc/profile.d/urusprofile.sh
            printf ""P"ATH=/system/urus/bin:"$"PATH\n" >> etc/profile.d/urusprofile.sh
            printf ""P"ATH=/system/urus/lib:"$"PATH\n" >> etc/profile.d/urusprofile.sh
            printf ""P"ATH=/usr/bin:/bin:"$"PATH\n" >> etc/profile.d/urusprofile.sh
            #printf "MSYS=winsymlinks:nativestrict\n" >> etc/profile.d/urusprofile.sh
            printf "URUS path bind INSTALLED!\n"
        fi

    fi'

exit 0
