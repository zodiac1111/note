#!/bin/sh
wget -4N http://commondatastorage.googleapis.com/chromium-browser-continuous/Linux_x64/LAST_CHANGE
LAST=`cat ~/LAST_CHANGE` 
wget -4 -Ochrome-linux.zip http://commondatastorage.googleapis.com/chromium-browser-continuous/Linux_x64/$(LAST)/chrome-linux.zip

