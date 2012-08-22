---
layout: post
title: "arm1"
date: 2012-07-03 09:01
comments: true
categories: 
---

#第一课
2arm 0~ 64M-1
 arm加点以后,自动执行0~4k RAM
 搬运代码,其作用就是加载其他程序到特定位置
3 其他程序开始工作.如 OS

烧录 1 uboot (bootloader)
2 直接(裸机程序)

传输数据 3种  
串口,
jlink(不依赖其他软件,
tftp(有一定软件依赖)

uboot常驻.之后利用uboot烧录.
第一阶段只能使用 jtag(jlnk) 下载(调试) bootloader(uboot)
之后利用bootloader 下载

烧录的东西没有文件系统 ,原始数据/物理复制.

nand每扇区大小 8~16k 
烧录最多64M.
init.bin -> boot.bin -> u-boot.bin
