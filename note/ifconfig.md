ip   和子网掩码   执行这个命令：ifconfig   eth0   10.10.10.220   netmask   255.255.255.0 
网关的设定执行这个命令：   route   add   default   gw   10.10.10.6 
把这两个命令写到/etc/rc.local   或者/etc/rc.d/rc.local   里面都可以的，这样就可以永久保存







如果执行了上面的命令后，还不可以的话，可能就是你的网卡没有激活， 
你可以用ifconfig   eth0   查看你的网卡信息，如果没有激活的话就用ifconfig   eth0   up,或者ifup   eth0   ,要停止的话，就用ifconfig   eth0   down   或者ifdown   eth0
