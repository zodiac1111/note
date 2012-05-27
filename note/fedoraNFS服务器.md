#NFS服务器配置

@fedora17beta
现在已经改成不用 imapXXXX的了
改成 守护进程rpc.nfsd
 
	rpc.nfsd <数量>		#设置最大线程
	man 8 rpc.nfsd 		#查看 帮助
##配置可用NFS的目录

使用您喜欢的文本编辑器编辑/etc/exports 文件
例如:<code>vi /etc/exports</code>

	/mnt			127.0.0.1(ro,sync)
	共享目录			主机名	(权限)  
其中:

* 共享目录	您欲与其他(或自己)共享的目录		有目录才能让人家共享嘛
* 主机名	指示能够访问这个共享目录的主机		也不能谁都能来访问
* 权限	指示主机访问该共享目录的权限		不能乱删/改我的目录

	
权限:
ro=readonly
sync是设置NFS服务器同步写磁盘，不会导致数据的丢失
##关闭防火墙

##启用新的配置
exportfs 指令主要的三个作用：
exportfs -rv   重新读取共享配置文件，马上生效
exportfs -auv  马上停止所有本机上的NFS共享，并不改变 /etc/exports 文件的内容，只是当前停止共享
exportfs -av   显示所有当前机器上的NFS共享目录信息
##测试
	1
	rpc.mountd			#启动
	否则在下一步挂载可能出现:
		mount.nfs: access denied by server while mounting 127.0.0.1:/home
	或者在输入"mount -t nfs 127.0.0.1:"后按Tab键出现
		:rpc mount export: RPC: Unable to receive; errno = Connection refused
	
	2 挂载
	mount -t nfs 127.0.0.1:/home 	/mnt
	挂载 -t 类型 从.....		到...
	#将127.0.0.1:/home 挂载到本机的/mnt目录下

卸载 unomt /mnt


