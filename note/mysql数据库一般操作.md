#mysql数据库一般操作
update mysql.user set password=password("mima") where user='root';

flush privileges(刷新)

mysql -u root -p(进入数据库)

use student;(进入student这个数据库)

show databases;  用于显示当前存在的数据库；

create database student;  创建一个student 的数据库

create table information(id int,name text,serial text,address text);

show tables;   desc information;(显示表格)

insert into information values(1,"王康"，"123","中国山东")；

select *from information;(显示所有表格当中的语句)

select name from information where name="王康"；


select name *from information where name！="蜡笔小新"；

select current_time; select current_date;   select version();

drop databases;   drop tables;    (删除)

