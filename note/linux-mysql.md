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
#mysql数据库一般操作
update mysql.user set password=password("mima") where user='root';
flush privileges(刷新)
mysql -u root -p(进入数据库)
use student;(进入student这个数据库)
show databases;  用于显示当前存在的数据库；
create database student;  创建一个student 的数据库
create table information(id int,name text,serial text,address text);
show tables;   desc information;(显示表格)
insert into information values(1,"王康"，"123","中国山东")
select *from information;(显示所有表格当中的语句)
select name from information where name="王康"；
select name *from information where name！="蜡笔小新"；
select current_time; select current_date;   select version();
drop databases;   drop tables;    (删除)