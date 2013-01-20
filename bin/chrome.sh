#!/bin/sh
####################################
#set -x #回显/调试
####################################
#访问浏览器 :
#  http://commondatastorage.googleapis.com/chromium-browser-continuous/index.html
#可能需要IPv6支持! 需要 wget
#参数设置:
cd ~/Mysoft
#架构:x86=Linux |x86_64=Linux_86 ? |window=Win 详见网站
ARCH=Linux
#得到版本号文件 LAST_CHANGE
wget -4N http://commondatastorage.googleapis.com/chromium-browser-continuous/${ARCH}/LAST_CHANGE

LAST=`cat ./LAST_CHANGE` 
echo "[chrome]服务器端版本号:" ${LAST}

wget -4 -Ochrome-linux.zip http://commondatastorage.googleapis.com/chromium-browser-continuous/${ARCH}/${LAST}/chrome-linux.zip

echo "[chrome]文件位置:"`pwd`
#解压缩
echo "[chrome]解压缩..."
unzip -o chrome-linux.zip
#回去原来目录
echo "[chrome]完成."
cd -

