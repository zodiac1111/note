#!/bin/bash
#pro <dir> 转到dir目录下,查询git是否提交,提交返回0,否则返回1

function isPushed()
{
	cd $1
	git st|grep clean
	ret=$?
	if [ $ret = "0" ]; then
		return 0
	else
		echo `pwd`没有
		return 1
	fi
}

isPushed ~/note
isPushed ~/dotvim
