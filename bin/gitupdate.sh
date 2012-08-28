#!/bin/bash 
#设置回显执行的语句 + 号
set -x 
#添加文件新增至工程
#git add . 
if [ "$1" == "" ]
then
	git commit -a -m '没有说明' #添加说明? m提交 a默认跟踪
else
 	git commit -a -m $1 #添加说明?
fi
 git push -u origin master  #上传至服务器
