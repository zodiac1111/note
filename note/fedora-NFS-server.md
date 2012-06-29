#NFS服务器配置

OS:fedora17.i686 & fedora17.x86_64 & f17beta.i686 & f17beta.x86-64 
现在已经改成不用 imapXXXX的了
改成 守护进程rpc.nfsd
安装守护进程程序:  
1. 搜索:`yum search nfs`    
2. 得到:`nfs-utils.i686 : NFS utilities and supporting clients and daemons for the kernel NFS server`  
	看描述就是这货了.  
3. 安装:`yum install nfs-utils`  
4. 使用:
 
	rpc.nfsd [数量]		#设置最大线程
	man 8 rpc.nfsd 		#查看 帮助
##配置可用NFS服务器的目录

使用您喜欢的文本编辑器编辑/etc/exports 文件
例如:`vi /etc/exports`

	/mnt			127.0.0.1(ro,sync)
	共享目录			主机名	(权限)  
其中:

* 共享目录	服务器共享的目录
* 主机名	指示能够访问这个共享目录的主机
* 权限	指示主机访问该共享目录的权限

	
权限:
ro=readonly只读 rw=读写
sync是设置NFS服务器同步写磁盘，不会导致数据的丢失
##关闭防火墙

##启用新的配置
exportfs 指令主要的三个作用：
exportfs -rv   重新读取共享配置文件，马上生效
exportfs -auv  马上停止所有本机上的NFS共享，并不改变 /etc/exports 文件的内容，只是当前停止共享
exportfs -av   显示所有当前机器上的NFS共享目录信息
##测试
1.启用挂载

	rpc.mountd	
否则在下一步挂载可能出现:
mount.nfs: access denied by server while mounting 127.0.0.1:/home
或者在输入"mount -t nfs 127.0.0.1:"后按Tab键补全
:rpc mount export: RPC: Unable to receive; errno = Connection refused

2 挂载

	mount -t nfs 127.0.0.1:/home 	/mnt
	挂载 -t 类型 从.....		到...
	#将127.0.0.1:/home 挂载到本机的/mnt目录下

3卸载
 
	unomt /mnt


