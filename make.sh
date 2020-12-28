#########################################################################
# File Name: make.sh
# Author: fht
# Created Time: Thu 12 Oct 2017 04:34:20 PM CST
#########################################################################
#!/bin/bash
zero=0
one=1
two=2
echo "#############################"
echo "###### 0 : x32 and x64 ######"
echo "###### 1 : x32         ######"
echo "###### 2 : x64         ######"
echo "#############################"
echo "Please enter your make number"
read Number

if [[ $Number -eq $one || $Number -eq $zero ]]
then
echo "############# ndk-build x32 ###############"
cp mk/Android-x32.mk jni/Android.mk
cp mk/Application-x32.mk jni/Application.mk

ndk-build -B
if [ -e "release/lib" ]
then
    echo "##release file is already create!##"
else
    echo "##create release/lib##"
    mkdir -p release/lib
fi
cp obj/local/armeabi-v7a/iwpriv release/lib

echo "############ ndk-build x32 end ############"
echo ""
echo ""
fi
if [[ $Number -eq $two  || $Number -eq $zero ]]
then
echo "############# ndk-build x64 ###############"
cp mk/Android-x64.mk jni/Android.mk
cp mk/Application-x64.mk jni/Application.mk

ndk-build -B

if [ -e "release/lib64" ]
then
    echo "##release file is already create!##"
else
    echo "##create release/lib64##"
    mkdir -p release/lib64
fi

cp obj/local/arm64-v8a/iwpriv release/lib64
echo "############ ndk-build x64 end ############"
fi
