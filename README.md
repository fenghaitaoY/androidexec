
本目录是为了编译android平台可执行程序

使用说明：
    1，将你的.c文件拷贝到jni路径下
    2，修改mk路径下Android-x32.mk和Android-x64.mk，将LOCAL_SRC_FILES替换成你的.c文件
    3，执行make.sh文件，编译生成需要的可执行程序，生成放在release目录
    4，将生成可执行程序通过adb push 放到Android设备内,例如：
        adb push apptest /data
    5，使用adb shell 进到设备内，执行刚刚放进来的程序，例如：
        ./apptest








