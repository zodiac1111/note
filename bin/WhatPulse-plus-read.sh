#!/bin/sh
#为 whatpluse 增加 键盘鼠标的 读权限.
su -c 'chmod +r /dev/input/event*'
