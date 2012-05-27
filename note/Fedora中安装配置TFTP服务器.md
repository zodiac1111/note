>http://www.oklinux.cn/html/network/ser/20090729/72351.html

安装环境：Fedora
1.安装xinetd

	yum install xinetd
2.安装tftp server

	yum install tftp tftp-server
3.更改tftp配置文件 <code>/etc/xinetd.d/tftp</code>

<code>vi /etc/xinetd.d/tftp</code>,打开tftp文件，设置tftp的跟目录，开启服务。（没有安装tftp-server之前，不存在tftp文件）

	service tftp
	{
		socket_type = dgram
		protocol = udp
		wait = yes
		user = root
		server = /usr/sbin/in.tftpd
		server_args = -s /home/gerry/tftpboot
		#disable = yes  ###使能
		per_source = 11
		cps = 100 2
		flags = IPv4
	}

在上述server_args设置tftp的工作目录，并且注释掉disable选项。

4.在<code>/home/gerry</code>下创建tftpboot目录，并且修改权限

	mkdir tftpboot
	chmod 777 tftpboot/

5.启动tftp服务器

	service xinetd restart

#syslinux 和防火墙都可能(一定)使服务生效但无法访问!
粗暴但有效的解决办法 关闭syslinux 和防火墙

精准的防火墙设置
>http://himme007.blog.163.com/blog/static/3466802520095742420660/

修改<code>/etc/sysconfig/iptables</code> 文件，添加以下内容：

	-A RH-Firewall-1-INPUT -m state --state NEW -m tcp -p tcp --dport 80 -j ACCEPT
















