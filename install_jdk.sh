#! /bin/sh

cd /archives/
RETOK=$(ls -1 jdk* 2>/dev/null | grep -m1 - -e "" | wc -l)

if [ "$RETOK" != 0 ] ; then
    echo ok
    JDKPATHFILE=$(ls -1 jdk* 2>/dev/null | grep -m1 - -e "")
    rm -rf output
    rm -rf /opt/jdk
    mkdir output
    unzip $JDKPATHFILE -d output/
    JDKPATHFILE=$(ls -1 output* 2>/dev/null | grep -m1 - -e "")
    cd output/
    mv -f $JDKPATHFILE /opt/jdk
    printf "export PATH='/opt/jdk/bin:"$"PATH'\n" >> /etc/profile.d/android-sdk.sh
    printf "export JAVA_HOME='/opt/jdk'\n" >> /etc/profile.d/android-sdk.sh
    echo $JDKPATHFILE
else
    echo no
fi

sleep 2
