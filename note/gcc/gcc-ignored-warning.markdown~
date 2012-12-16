
#各个层次的gcc警告

从上到下覆盖

##变量(代码)级:指定某个变量警告

	int a __attribute__ ((unused));

指定该变量为"未使用的".即使这个变量没有被使用,编译时也会忽略则个警告输出.

##文件级:在源代码文件中诊断(忽略/警告)
语法:

	#pragma GCC diagnostic [error|warning|ignored] "-W<警告选项>"

诊断-忽略:(关闭警告)

	#pragma  GCC diagnostic ignored  "-Wunused"
	#pragma  GCC diagnostic ignored  "-Wunused-parameter"

诊断-警告:(开启警告)

	#pragma  GCC diagnostic warning  "-Wunused"
	#pragma  GCC diagnostic warning  "-Wunused-parameter"

诊断-错误:(开启警告-升级为错误)

	#pragma  GCC diagnostic error  "-Wunused"
	#pragma  GCC diagnostic error  "-Wunused-parameter"

用法:

在文件开头处关闭警告,在文件结尾出再开启警告,这样可以忽略该文件中的指定警告.

##项目级:命令行/编译参数指定

警告:  
	gcc main.c -Wall
忽略:  
	gcc mian.c -Wall -Wno-unused-parameter  //开去`all`警告,但是忽略 `-unused-parameter`警告

选项格式: `-W[no-]<警告选项>`  
如	: `-Wno-unused-parameter # no- 表示诊断时忽略这个警告`

