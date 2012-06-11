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

