#ipv6
##客户端 miredo
fedora17 下 <code>yum search miredo</code>可以得到一些信息

基本上是全自动配置.之后会在系统添加一项服务 : miredo-client

使用型如<code> service miredo-client restart</code> 命令可以重启服务(需要root权限)
start:启动 stop 停止 restart 重启服务.
配置文件:<code>/etc/miredo/miredo.conf</code>

配合google docs上的ipv6地址文档可以(一定程度)突破网络封锁.能访问一些有ipv6网址的网站(大部分是大网站)例如 twitter facebook google wiki百科(英文忘了...)