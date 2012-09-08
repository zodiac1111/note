##在fedora 16/17_i686/x86_64下的Jlink驱动安装
多数命令需要管理员权限 
###显示usb设备.

	lsusb
###安装glibc

	yum install glibc

x86_64需要安装32位的:

	 yum install glibc.i686 glibc.x86_64

###安装readline

	yum install readline
x86_64需要安装32位的和64位的;

	yum install readline.i686 readline.x86_64

###从官网下载for linux的驱动

按照官方README 复制动态链接库到/usr/bin
重建符号链接

官方驱动需要readline.so.5, 安装readline后应该有一个readline.so.6
在/lib下新建一个符号链接到readline.so.6

TODO:更妥当的方法应该是下载5的版本的源代码,自行编译 :)

使能修改的动态链接库符号链接

	ldconfig

##测试
运行JLinkExe 或者在start所在目录运行start

###ps:
* 官方更新慢,所以依赖的库有点老(readline.so.5)
* 官方(也许)是在32位下运行的,所以64位只有安装32位的对应的依赖文件才可能能够成功运行
* 安装过程没有照官方执行**添加用户组**操作.暂时没有发现副作用
* 在F16 i686/x86_64 F17_beta i686/x86_64 测试通过(刚安装完系统就安装测试)
* 自己的电脑(F17_beta_x86_64)无法运行,可能是安装的其他软件冲突, :(


