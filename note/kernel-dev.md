 创建设备节点
242 主设备号
mknod /dev/mem_test c 242 0
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