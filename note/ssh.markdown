1.启动SSH服务
# systemctl start sshd.service

2.随系统一起启动服务
# systemctl enable sshd.service

3.开启防火墙22端口
# iptables -I INPUT -p -tcp --dport 22 -j ACCEPT

http://blog.sina.com.cn/s/blog_643493600100uje6.html

===================================

	$ sudo systemctl start sshd.service
                              
	$ sudo systemctl enable sshd.service
	ln -s '/usr/lib/systemd/system/sshd.service' '/etc/systemd/system/multi-user.target.wants/sshd.service' 
===================================
