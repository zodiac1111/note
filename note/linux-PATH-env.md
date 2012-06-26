#Linux操作系统下三种配置环境变量的方法
>http://www.linuxeden.com/html/sysadmin/20080424/56879.html  
环境变量([wiki](http://zh.wikipedia.org/wiki/%E7%8E%AF%E5%A2%83%E5%8F%98%E9%87%8F)):  
现在使用linux的朋友越来越多了，在linux下做开发首先就是需要配置环境变量，下面以配置java环境变量为例介绍三种配置环境变量的方法。  
这里的环境变量主要是指配置目录.  
例如a文件绝对路径`执行/文件/所在/目录/a`,每次执行a文件时需要输入全部的路径,或者切换到a文件所在目录然后`./a`运行,这样比较麻烦.作为懒惰的人
当然要使用懒惰的方法.把路径`执行/文件/所在/目录`保存在一个配置文件中,然后运行命令时首先在这个文件中查找,那么我只要输入
`a`就可以运行了,不论当前工作路径(`pwd`)是不是a文件所在目录.
##1.修改/etc/profile文件
如果你的计算机仅仅作为开发使用时推荐使用这种方法，因为所有用户的shell都有权使用这些环境变量，可能会给系统带来安全性问题。
 
1.用文本编辑器打开<code>/etc/profile</code><br>
2.在profile文件末尾加入：<br>

	JAVA_HOME=/usr/share/jdk1.5.0_05
	PATH=$JAVA_HOME/bin:$PATH
	CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
	export JAVA_HOME
	export PATH
	export CLASSPATH

3. 重新登录
 
注解：

* 你要将 <code>/usr/share/jdk1.5.0_05jdk</code> 改为你的jdk安装目录
* linux下用冒号“:”来分隔路径
* $PATH / $CLASSPATH / $JAVA_HOME 是用来引用原来的环境变量的值,在设置环境变量时特别要注意不能把原来的值给覆盖掉了，这是一种常见的错误。
* CLASSPATH中当前目录“.”不能丢,把当前目录丢掉也是常见的错误。
* export是把这三个变量导出为全局变量。
* 大小写必须严格区分。
 
##2. 修改.bashrc文件　　
这种方法更为安全，它可以把使用这些环境变量的权限控制到用户级别，如果你需要给某个用户权限使用这些环境变量，你只需要修改其个人用户主目录下的.bashrc文件就可以了。
 
1. 用文本编辑器打开用户目录下的.bashrc文件(我修改的是**~/.bash_profile**文件)
2. 在.bashrc文件末尾加入：  

	set JAVA_HOME=/usr/share/jdk1.5.0_05
	export JAVA_HOME<br>
	set PATH=$JAVA_HOME/bin:$PATH<br>
	export PATH<br>
	set CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar<br>
	export CLASSPATH<br>

3. 重新登录
4. ps: Linux-使环境变量**马上生效**的命令>http://www.cnblogs.com/babyblue/archive/2006/02/14/519179.html

`source <filename> ~/.bash_profile` 
仅对**当前**(输入这条命令的)终端(终端模拟器之中一个终端/标签)有效.

##3. 直接在shell下设置变量
仅对当前终端有效,重启失效,适用与一次性的/临时的修改.  
gnome下的终端仿真程序每一个标签都是不同的终端.所以这个方法仅对当前标签有效 :)
 
只需在shell终端执行下列命令：

	export JAVA_HOME=/usr/share/jdk1.5.0_05       	#欲添加的环境变量路径
	export PATH=$JAVA_HOME/bin:$PATH		#
	export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
	
	
![Alt text](http://cimg2.163.com/catchpic/1/1A/1AE6BA37579B21A3D3C40BB58643952C.jpg)
