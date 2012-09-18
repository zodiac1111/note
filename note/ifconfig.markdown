---
layout: post
title: "hello world"
date: 2012-07-03 09:01
comments: true
categories: 
---

ip   和子网掩码   执行这个命令：<br>
	<code>ifconfig   eth0   10.10.10.131   netmask   255.255.255.0 </code><br>
网关的设定执行这个命令:<br>
	<code>route   add   default   gw   10.10.10.6</code> 
把这两个命令写到/etc/rc.local   或者/etc/rc.d/rc.local   里面都可以的，这样就可以永久保存


我的<b>备份指令</b>(路由)

	ifconfig   eth0  192.168.1.103   netmask   255.255.255.0
 	route   add   default   gw   192.168.1.253


<font stysl color=8888>asda


如果执行了上面的命令后，还不可以的话，可能就是你的网卡没有激活， 
你可以用ifconfig   eth0   查看你的网卡信息，如果没有激活的话就用ifconfig   eth0   up,或者ifup   eth0   ,要停止的话，就用ifconfig   eth0   down   或者ifdown   eth0

//
ifconfig   eth0   192.168.1.168   netmask   255.255.255.0
route   add   default   gw   192.168.1.253
//
ifconfig   eth0   10.10.10.131   netmask   255.255.255.0
route   add   default   gw   10.10.10.6
insmod /var/ftp/motor.ko &
/var/ftp/motor &

ifconfig em1:1 192.168.2.212
