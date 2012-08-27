#!/bin/sh
####################################
#set -x #回显/调试
####################################
#访问浏览器 :
#  http://commondatastorage.googleapis.com/chromium-browser-continuous/index.html
#可能需要IPv6支持! 需要 wget
#参数设置:
#架构:x86=Linux |x86_64=Linux_86 ? |window=Win 详见网站
ARCH=Linux
#得到版本号文件 LAST_CHANGE
wget -6N http://commondatastorage.googleapis.com/chromium-browser-continuous/${ARCH}/LAST_CHANGE

LAST=`cat ./LAST_CHANGE` 
echo "*服务器端版本号:" ${LAST}

wget -6 -Ochrome-linux.zip http://commondatastorage.googleapis.com/chromium-browser-continuous/${ARCH}/${LAST}/chrome-linux.zip

echo "*文件位置 "`pwd`

