#!/usr/bin/env bash
# file chkreop.sh  检查所有仓库是否push

# 初始化,所有仓库路径 
# ********  在这里指定所有仓库的路径  *********
aRepo=(
"$HOME/dotvim"
"$HOME/note"
"$HOME/blog/octopress"
"$HOME/Dropbox/qt_tcp_client_server"
"$HOME/Dropbox/wiki"
"$HOME/tmp/curses"
"$HOME/Dropbox/mySnippets"
"$HOME/workspace/blink"
"$HOME/workspace/lcd_4bit_allport"
"$HOME/tmp/i2c-test"
"$HOME/workspace/webbox/01-Trunk/01-Code/src_linux"
)

# **********************************************
n=0 #未push的仓库数量
lenRepo=${#aRepo[@]} 

#函数 检查是否有未push的提交 
# pro <dir> 转到dir目录下,查询git是否提交,提交返回0,否则返回1
function isPushed()
{
	#echo dir=$1
	cd $1

	# 判断返回的字符
	git st|grep "您的分支领先" >>/dev/null
	ret=$? #没有push显示的提示字符 0领先 1不领先
	git st|grep "修改尚未加入提交" >>/dev/null
	ret_m=$? #修改,但没有commit显示的提示 0:没有commit 1:committed
	git st|grep "未跟踪" >>/dev/null
	ret_a=$? #修改,但没有commit显示的提示 0:没有commit 1:committed

	# 返回提示
	if [ $ret == "1" ] && [ $ret_m == "1" ] && [ $ret_a == "1" ]; then
		echo -e "[\e[32m Pushed \e[0m] "`pwd`
		return 1
	elif [ $ret_m == "0" ]; then
		echo -e "[\e[31m Commit \e[0m] "`pwd`
		return 0
	elif [ $ret == "0" ]; then
		echo -e "[\e[33m Unpush \e[0m] "`pwd`
		echo -e "\t\e[32m Pushing... \e[0m"
		git push > /dev/null
		echo -e "\v[\e[32m   OK   \e[0m] Pushed"
		return 0
	elif [ $ret_a == "0" ]; then
		echo -e "[\e[31m NonAdd \e[0m] "`pwd`
		return 0
	fi
}

#echo de: $aRepo n= $lenRepo .
#检查所有仓库
i=0
while [ $i -lt $lenRepo ]
do
	#echo i=$i ${aRepo[$i]}
	isPushed ${aRepo[$i]}
	if [ $? = "0" ] ; then
		let n++
	fi
	let i++
done

#检查完毕,总结
echo -e "\e[32m检查完毕\e[0m:$n个仓库没有push"
