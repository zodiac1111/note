#编译进内核
_init 执行完释放内存 (省内存)
.结构体成员 .分布式分配
动态加载
模块 open/relese

 创建设备节点
422:主设备号 	0:次设备号	c char dev
mknod /dev/mem_test c 422 0
mknod /dev/my c 422 0
删除节点
rm /dev/mem_test 

应用层 文件操作
open /close ...
调佣驱动程序->设备节点

1. 加载模块 	insmod
2. 创建设备节点 	mknod
3. 使用应用程序 -> 调用/打开等操作 open
4. 使用应用程序 -> 关闭 close
5. 删除节点		rm
6. 卸载驱动模块  	rmmod

menuconf 搜索 "/" 键
**mmap** 内存映射方式
watchdog
ioctl
linux内核延时
介绍 linux 创建线程 互斥锁 spin_lock 分配内存 消息队列(介绍为主) 中断挂接
#watchdog
> s3c2440a 18章
利用之前编写的具有mmap功能的驱动文件.
例如代码里 : int f1()
{
	while(1)
	;
}
这样看门狗饥饿.,重启. 选项 WTCON
#ioctl
#iounmap
p175 ldd 内核开发手册 延时
1 ioctl: ioremap_nochce 映射物理地址到内核态虚拟地址.

2 三个延时 占用cpu mdelay 等等
主动释放cpu :set_cuureat_state(任务可切换的)
	schedule_timeout (HZ) HZ宏定义. HZ=200 即一秒
jiffise 内核基本时钟,一个调度周期(HZ)加1(?) 内核中 的全局变量
3 取消映射
#练习
使用ioctl 不能使用mmap
#中断
简单但个终端服务程序
#互斥锁
#创建线程
#分配内存
kmalloc (size,flag) size 最大128k flag __GPF_DMA 
__GFP_KERNEL 调用分配内核的地址空间 大地址get_free_pages()
#平台API库
	