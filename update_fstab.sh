#!/bin/sh

    if [ -e etc/fstab ] ; then

        export URUSINFSTAB=$(grep -sri etc/fstab -e "/system/urus" | wc -l)

        if [ "$URUSINFSTAB" != 0 ] ; then
            printf "URUS bind are present!\n"
        else
            mkdir -p system/urus
            printf "\n$(pwd) /system/urus none bind,binary,posix=0,noacl,user\n" >> etc/fstab
            printf "PATH=/system/urus/mingw32/bin:"'$'"PATH\n" >> etc/profile.d/urusprofile.sh
            printf "PATH=/system/urus/bin:"'$'"PATH\n" >> etc/profile.d/urusprofile.sh
            printf "PATH=/system/urus/lib:"'$'"PATH\n" >> etc/profile.d/urusprofile.sh
            printf "export PATH=/usr/bin:/bin:"'$'"PATH\n" >> etc/profile.d/urusprofile.sh
            #printf "MSYS=winsymlinks:nativestrict\n" >> etc/profile.d/urusprofile.sh
            printf "export LC_ALL=C\n" >> etc/profile.d/urusprofile.sh
            printf "URUS path bind INSTALLED!\n"
        fi

    fi

exit 0
