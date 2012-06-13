#一些mysql的路径
启动 mysql   

	systemctl start mysqld.service
	或者 service mysqld start
后者被重定向到前者	

	
日志文件 '/var/log/mysqld.log' 
配置文件 /etc/my.cnf 
默认数据库所在路径 /var/lib/mysql

mysql和qt连接 需要驱动 形如 libqsqlmysql.so
一般放在(官网下载的二进制包) 
~/QtSDK/Desktop/Qt/4.8.1/gcc/plugins/sqldrivers/libqsqlmysql.so
