#软件交叉编译平台
1. 主机:<code>uname -a </code>

	Linux localhost.localdomain 3.3.6-3.fc17.x86_64 #1 SMP Wed May 16 21:21:18 UTC 2012 x86_64 x86_64 x86_64 GNU/Linux

gcc<code> gcc -v<code>:
>http://gcc.gnu.org/install/configure.html 如何安装gcc:配置选项

	使用内建 				#specs Using built-in specs
	COLLECT_GCC=gcc
	COLLECT_LTO_WRAPPER=/usr/libexec/gcc/x86_64-redhat-linux/4.7.0/lto-wrapper
	目标(Target)：x86_64-redhat-linux
	配置为：../configure			#以下为gcc配置参数 
	 --prefix=/usr 			#安装的目录 
	 --mandir=/usr/share/man 
	 --infodir=/usr/share/info
	 --with-bugurl=http://bugzilla.redhat.com/bugzilla #经销商选项(二进制版)
	 --enable-bootstrap 
	 --enable-shared
	 --enable-threads=posix 
	 --enable-checking=release
	 --disable-build-with-cxx 		#[不]使用C++编译器替代旧的c编译器build
	 --disable-build-poststage1-with-cxx		#在STAGE1期间所选择编译语言种类,Mostly useful for compiler development.
	 --with-system-zlib 
	 --enable-__cxa_atexit
	 --disable-libunwind-exceptions 
	 --enable-gnu-unique-object
	 --enable-linker-build-id 
	 --with-linker-hash-style=gnu
	 --enable-languages=c,c++,objc,obj-c++,java,fortran,ada,go,lto
	 --enable-plugin 
	 --enable-initfini-array 
	 --enable-java-awt=gtk 
	 --disable-dssi 
	 --with-java-home=/usr/lib/jvm/java-1.5.0-gcj-1.5.0.0/jre 
	 --enable-libgcj-multifile 
	 --enable-java-maintainer-mode 
	 --with-ecj-jar=/usr/share/java/eclipse-ecj.jar 
	 --disable-libjava-multilib 
	 --with-ppl
	 --with-cloog 
	 --with-tune=generic 
	 --with-arch_32=i686 
	 --build=x86_64-redhat-linux
	线程模型：posix
	gcc 版本 4.7.0 20120507 (Red Hat 4.7.0-5) (GCC) 
##linux内核源代码
从git下载:

	git clone git://github.com/torvalds/linux.git
	(或者http[s]方式):https://github.com/torvalds/linux.git

