---
layout: post
title: "hello world"
date: 2012-07-03 09:01
comments: true
categories: 
---
#集成构建工具:
1. Buildroot
2. crosstool
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
##2.Clibrary
##3.Full Cross-Compiler整个编译器
##4.本地编译器
运行在arm上,且编译出运行在arm平台的可执行文件的gcc for arm 而不是 gcc for host build target for arm.

im-chooser输入法选择器
`
[lee@localhost gtktest1]$ arm-linux-gcc -v
Using built-in specs.
Target: arm-unknown-linux-uclibcgnueabi
Configured with: /home/zzl/buildroot-2011.02/output/toolchain/gcc-4.3.5/configure --prefix=/home/zzl/buildroot-2011.02/output/host/usr --build=i686-pc-linux-gnu --host=i686-pc-linux-gnu --target=arm-unknown-linux-uclibcgnueabi --enable-languages=c,c++ --with-sysroot=/home/zzl/buildroot-2011.02/output/host/usr/arm-unknown-linux-uclibcgnueabi/sysroot --with-build-time-tools=/home/zzl/buildroot-2011.02/output/host/usr/arm-unknown-linux-uclibcgnueabi/bin --disable-__cxa_atexit --enable-target-optspace --with-gnu-ld --disable-libssp --disable-multilib --disable-tls --enable-shared --with-gmp=/home/zzl/buildroot-2011.02/output/host/usr --with-mpfr=/home/zzl/buildroot-2011.02/output/host/usr --disable-nls --enable-threads --disable-decimal-float --with-float=soft --with-abi=aapcs-linux --with-arch=armv4t --with-tune=arm920t --disable-largefile --with-pkgversion='Buildroot 2011.02' --with-bugurl=http://bugs.buildroot.net/ : (reconfigured) /home/zzl/buildroot-2011.02/output/toolchain/gcc-4.3.5/configure --prefix=/home/zzl/buildroot-2011.02/output/host/usr --build=i686-pc-linux-gnu --host=i686-pc-linux-gnu --target=arm-unknown-linux-uclibcgnueabi --enable-languages=c,c++ --with-sysroot=/home/zzl/buildroot-2011.02/output/host/usr/arm-unknown-linux-uclibcgnueabi/sysroot --with-build-time-tools=/home/zzl/buildroot-2011.02/output/host/usr/arm-unknown-linux-uclibcgnueabi/bin --disable-__cxa_atexit --enable-target-optspace --with-gnu-ld --disable-libssp --disable-multilib --disable-tls --enable-shared --with-gmp=/home/zzl/buildroot-2011.02/output/host/usr --with-mpfr=/home/zzl/buildroot-2011.02/output/host/usr --disable-nls --enable-threads --disable-decimal-float --with-float=soft --with-abi=aapcs-linux --with-arch=armv4t --with-tune=arm920t --disable-largefile --with-pkgversion='Buildroot 2011.02' --with-bugurl=http://bugs.buildroot.net/
Thread model: posix
gcc version 4.3.5 (Buildroot 2011.02) 
`
`
#
'/home/zodiac1111/arm/buildroot/output/host/usr/bin/arm-linux-gcc' -v
Using built-in specs.
COLLECT_GCC=/home/zodiac1111/arm/buildroot/output/host/usr/bin/arm-linux-gcc
COLLECT_LTO_WRAPPER=/home/zodiac1111/arm/buildroot/output/host/usr/libexec/gcc/arm-unknown-linux-uclibcgnueabi/4.6.3/lto-wrapper
Target: arm-unknown-linux-uclibcgnueabi
Configured with: /home/zodiac1111/arm/buildroot/output/toolchain/gcc-4.6.3/configure --prefix=/home/zodiac1111/arm/buildroot/output/host/usr --build=i686-pc-linux-gnu --host=i686-pc-linux-gnu --target=arm-unknown-linux-uclibcgnueabi --enable-languages=c --with-sysroot=/home/zodiac1111/arm/buildroot/output/host/usr/arm-unknown-linux-uclibcgnueabi/sysroot --with-build-time-tools=/home/zodiac1111/arm/buildroot/output/host/usr/arm-unknown-linux-uclibcgnueabi/bin --disable-__cxa_atexit --enable-target-optspace --disable-libquadmath --disable-libgomp --with-gnu-ld --disable-libssp --disable-multilib --enable-tls --enable-shared --with-gmp=/home/zodiac1111/arm/buildroot/output/host/usr --with-mpfr=/home/zodiac1111/arm/buildroot/output/host/usr --with-mpc=/home/zodiac1111/arm/buildroot/output/host/usr --disable-nls --enable-threads --disable-decimal-float --with-float=soft --with-abi=aapcs-linux --with-arch=armv4t --with-tune=arm922t --with-pkgversion='Buildroot 2012.11-git-00344-g2410e3d-dirty' --with-bugurl=http://bugs.buildroot.net/
Thread model: posix
gcc version 4.6.3 (Buildroot 2012.11-git-00344-g2410e3d-dirty) 
`

