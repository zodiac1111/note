---
layout: post
title: "arm-gp2x-linux-gcc_info"
date: 2012-07-03 09:01
comments: true
categories: 
---

#交叉编译的gcc信息:
<code>arm-gp2x-linux-gcc -v</code>

	Using built-in specs.		#内建的specs(规格)
	Target: arm-gp2x-linux		#目标系统(编译出的应用程序运行的平台)
	Configured with:		#配置信息
	 ../gcc-4.1.2/configure 
	 --prefix=/usr 
	 --mandir=/usr/share/man 
	 --infodir=/usr/share/info 
	 --target=arm-gp2x-linux 
	 --enable-languages=c,c++ 
	 --enable-threads=posix 
	 --disable-libmudflap 
	 --disable-libssp 
	 --disable-multilib
	 --disable-shared
	 --disable-nls
	 --enable-long-long
	 --enable-symvers=gnu
	 --enable-c99
	 --with-cpu=arm920t
	 --enable-cxx-flags=-mcpu=arm920t
	 --with-float=soft
	 --disable-libstdcxx-pch
	 --enable-__cxa_atexit
	 --with-system-zlib
	 --enable-version-specific-runtime-libs
	Thread model: posix
	gcc version 4.1.2 (Fedora GP2X 4.1.2-13.fc17)
