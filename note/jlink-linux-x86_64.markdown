---
layout: post
title: "hello world"
date: 2012-07-03 09:01
comments: true
categories: 
---

#jlink linux x86_64
使用openocd链接
直接下载二进制文件安装,没有通过源代码编译 yum search openocd

	openocd -f 借口文件.cfg -f target文件.cfg 
	//文件默认安装在/usr/loacl/openocd/脚本

只能 Ctrl-c 结束?....

另一个终端连接调试端口:

	telnet localhost 4444 链接
一些指令 halt [毫秒] 默认5毫秒 挂起系统
file_iminge_load ? [bin] 加载镜像文件 
resume ? PC |addr 执行
 exit 退出 :D     