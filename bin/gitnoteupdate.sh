#!/bin/bash 
#设置调试执行的语句 + 号
#set -x 
#设置回显
#set -v on
#添加文件新增至工程

git add . 
if [ "$1" == "" ]
then
	#-a 只能跟踪已经被跟踪的内容,不能跟踪新增的文件
	git commit -a -m '没有说明' #添加说明? m提交 a默认跟踪
	
else
 	git commit -a -m $1 #添加说明?
fi
 git push -u origin master  #上传至服务器
