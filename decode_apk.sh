#!/bin/zsh
target_apk=$1
rm -rf apk smali
unzip $target_apk "classes.dex" -d apk

#apktool 下载 https://bitbucket.org/iBotPeaches/apktool/downloads
apktool decode -o smali $target_apk
#dex2jar 下载 https://github.com/pxb1988/dex2jar
d2j-dex2jar.sh apk/classes.dex -o classes.jar
rm -rf apk 

#Mac OS
open -a JD-GUI classes.jar
open -a "Sublime Text" smali
