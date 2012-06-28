#Fedora 17 x86_64安装配置TFTP服务器
>http://www.oklinux.cn/html/network/ser/20090729/72351.html   

****
f17下有些东西有所改变,网上一些教程略显陈旧.  
###安装环境：Fedora
1.安装xinetd  
这是一个守护程序(?)

	yum install xinetd
2.安装tftp server(ftp服务器)

	yum install tftp tftp-server
3.更改tftp配置文件 `/etc/xinetd.d/tftp`

`vi /etc/xinetd.d/tftp`,打开tftp文件，设置tftp的跟目录，开启服务。（没有安装tftp-server之前，不存在tftp文件）

	service tftp
	{
		socket_type = dgram
		protocol = udp
		wait = yes
		user = root
		server = /usr/sbin/in.tftpd
		#tftp服务器跟目录
		#-c 表示服务端可以创建(create)文件.
		#更多 man tftpd
		server_args = -c -s /home/gerry/tftpboot  
		#disable = yes 
		disable = no
		per_source = 11
		cps = 100 2
		flags = IPv4
	}

在上述server_args设置tftp的工作目录  
并且注释掉disable选项或者改成no使能tftp服务。

4.在`/home/gerry`下创建tftpboot目录，并且修改权限

	mkdir tftpboot
	chmod 777 tftpboot/

5.启动tftp服务器

	service xinetd restart

现在已经被重定向,提示:`Redirecting to /bin/systemctl  restart xinetd.service`  
没什么影响,推荐按照重定向的命令执行来开启tftp服务`/bin/systemctl  restart xinetd.service`

ps:selinux 和防火墙都可能(一定)使服务生效但无法访问!
粗暴但有效的解决办法 关闭syslinux 和防火墙
####selinux
*临时关闭SELinux。如果你仅仅只是想临时关闭，可以输入
	setenforce 0

禁用SELinux。在 /etc  下可以看到一个SELinux文件夹，进入后，里面有个config文件，在终端进入到文件夹，输入

	vi config
更改其中的SELINUX项的值就可以关闭和启用SELinux服务了。
修改成  SELINUX=disable     禁用SeLinux
修改成  SELINUX=enforcing 使用SeLinux


####精准的防火墙设置
>http://himme007.blog.163.com/blog/static/3466802520095742420660/

修改`/etc/sysconfig/iptables`文件，添加以下内容：

	-A RH-Firewall-1-INPUT -m state --state NEW -m tcp -p tcp --dport 80 -j ACCEPT  
各项参数含义暂时不甚了解,详情搜索iptables.

#参考文献
tftpd设定[TFTP Trivial File Transfer Protocol](http://std.sssh.tp.edu.tw/lesson/linux/tftp.htm )
防火墙设置 http://himme007.blog.163.com/blog/static/3466802520095742420660/















