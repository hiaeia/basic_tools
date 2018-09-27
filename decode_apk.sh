#!/bin/zsh
target_apk=$1

rm -rf apk smali
unzip $target_apk "classes.dex" -d apk
apktool decode -o smali $target_apk
d2j-dex2jar.sh apk/classes.dex -o classes.jar
rm -rf apk 

#Mac OS
open -a JD-GUI classes.jar
open -a "Sublime Text" smali
