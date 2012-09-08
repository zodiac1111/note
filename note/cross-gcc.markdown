---
layout: post
title: "hello world"
date: 2012-07-03 09:01
comments: true
categories: 
---

#简明构建交叉编译器指导提示(gcc)
[来源](http://www.ifp.illinois.edu/~nakazato/tips/xgcc.html#pre)


****
#构建GCC交叉编译器
[来源](http://wiki.osdev.org/GCC_Cross-Compiler)
##1.gcc
Now, you can build GCC.

	cd /usr/src/build-gcc
	export PATH=$PATH:$PREFIX/bin
	../gcc-x.x.x/configure --target=$TARGET \ 
	--prefix=$PREFIX  \
	--disable-nls  \
	--enable-languages=c,c++ \
	--without-headers \

	make all-gcc
	make install-gcc
	* --disable-nls is the same as for binutils above.
	* --without-headers tells GCC not to rely on any C library (standard or runtime) being present for the target.
	* --enable-languages tells GCC not to compile all the other language frontends it supports, but only C (and optionally C++).
其他参数
arm-linux arm-elf 区别,C语言库区别.
[来源](http://hi.baidu.com/ajoe/blog/item/1780d100a2270a12728b6582.html)
#2.Clibrary
#3.Full Cross-Compiler整个编译器
#4.本地编译器
运行在arm上,且编译出运行在arm平台的可执行文件的gcc for arm 而不是 gcc for host build target for arm.
