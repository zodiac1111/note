#!/bin/sh
#浏览器访问路径
# http://commondatastorage.googleapis.com/chromium-browser-continuous/index.html?path=Linux_x64/

wget -4N http://commondatastorage.googleapis.com/chromium-browser-continuous/Linux_x64/LAST_CHANGE
LAST=`cat ~/LAST_CHANGE` 
wget -4 -Ochrome-linux.zip http://commondatastorage.googleapis.com/chromium-browser-continuous/Linux_x64/$(LAST)/chrome-linux.zip

#解压到制定路径 -o 忽略,直接覆盖 -d 转到该目录
 unzip -o '/home/zodiac1111/tmp/chrome-linux.zip' -d /opt/google 

