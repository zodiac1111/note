#系统服务笔记
##运行级别
某个运行级别(runlevel)是指一种系统的工作模式，用来组合特定的Fedora服务管理程序以实现某种目的或者提供对系统的受到限制的使用。对基于Fedora/Redhat的Linux系统，主要的运行级别有
runlevel 1: 单用户模式 
runlevel 2: 多用户模式 
runlevel 3: 支持网络的多用户模式 
runlevel 5: 支持网络以及图形界面的多用户模式 (runlevel 3 + X Window System "the GUI"). 
如果安装了X-server，大多数用户会使用runlevel 5；否则的话，一般使用runlevel 3. 在runlevel 1模式下，一般不会运行Fedora服务管理程序。

##启用以及禁用Fedora服务管理
需要对每一个Fedora服务管理程序在每个运行级别上单独设置启用（ON）或者禁用（OFF）状态。要查看所有服务在每个运行级别上的启用状态，可以运行如下命令：#/sbin/chkconfig --list 要在某个运行级别上设定哪些服务启用，可以在图形界面下运行system-config-services 或者在命令行下运行ntsysv (旧版本的Fedora没有system-config-services 命令，而是使用 serviceconf 来代替)。

##控制Fedora服务管理
不管一项Fedora服务管理是如何设置的，缺省是启用还是禁用，我们都可以在系统运行时随时启动、停止以及管理它。要查看当前正在运行的服务，运行如下命令：# /sbin/service --status-all 如果要单独查看某个服务，比如crond，使用如下命令即可：# /sbin/service crond status crond (pid 1604) is running...

选项status可以替换为start, stop, status, reload, restart。对有些服务，有时还有更多选项可用。

#Linux/Fedora systemd系统服务控制(systemctl)配置说明以及和System V启动脚本(service)的区别[注1]

在CentOS/RHEL中,系统服务是System V启动脚本控制,主要使用chkconfig和service两个命令,配置在/etc/init.d/下.
在Fedora中使用的是新的systemd系统和服务管理程序.主要使用systemctl控制,配置在/etc/systemd/下.
以下是两种服务管理的却别和对应的命令.
`
任务	指令	新指令
使某服务自动启动	chkconfig –level 3 sshd on	systemctl enable sshd.service
使某服务不自动启动	chkconfig –level 3 sshd off	systemctl disable sshd.service
检查服务状态	service sshd status	systemctl status sshd.service （服务详细信息） systemctl is-active sshd.service （仅显示是否 Active)
显示所有已启动的服务	chkconfig –list	systemctl list-units –type=service
启动某服务	service sshd start	systemctl start sshd.service
停止某服务	service sshd stop	systemctl stop sshd.service
重启某服务	service sshd restart	systemctl restart sshd.service
`

1. 参考:https://fedoraproject.org/wiki/Systemd/zh-cn#System_V_init_.E4.B8.8E_systemd_.E7.9A.84.E5.AF.B9.E6.8E.A5
