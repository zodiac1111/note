---
layout: post
title: "hello world"
date: 2012-07-03 09:01
comments: true
categories: 
---

###bash shell编程

####特殊变量
	$0:脚本执行文件名
	$1 命令行参数1 ... 与main函数参数列表相似
	$? 返回值
	补全

###shell脚本调试
1. 脚本文件中添加`set -x`语句,显示每一步执行的语句.方便调试脚本
