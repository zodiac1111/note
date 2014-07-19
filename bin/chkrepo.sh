#!/usr/bin/env bash
# file chkreop.sh  检查所有仓库是否push

# 反注释以调试脚本
# set -x

# 初始化,所有仓库路径 
# ********  在这里指定所有仓库的路径  *********
aRepos=(
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
"$HOME/workspace/webbox/01-Trunk/01-Code/website/ChiticBank-OverseasV1.0"
"$HOME/Dropbox/hv插件/freeshop发送"
)

# **********************************************
n_commit=0 #未push的仓库数量
n_add=0
n_push=0
lenRepo=${#aRepos[@]} 

#函数 检查是否有未push的提交 
# pro <dir> 转到dir目录下,查询git是否提交,提交返回0,否则返回1
# 检查仓库状态,
# 0 pushed
# 1 commit 但是未push
# 2 add 但是未commit
function isPushed()
{
	#echo dir=$1
	cd $1
	# 发生错误,可能是没有这个仓库,退出
	if [ $? != "0" ]; then
		return 99	
	fi
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
		return 0
	elif [ $ret_m == "0" ]; then
		echo -e "[\e[31m Commit \e[0m] \e[33m"`pwd`"\e[0m"
		return 1
	elif [ $ret == "0" ]; then
		echo -en "[\e[33m Unpush \e[0m] "`pwd`
		echo -en "\r[\e[31m Push.. \e[0m] "
		git push > /dev/null 2>&1
		echo -e "\r[\e[33m Pushed \e[0m] "
		return 0
	elif [ $ret_a == "0" ]; then
		echo -e "[\e[31m NonAdd \e[0m] \e[33m"`pwd`"\e[0m"
		return 2
	fi
}

#echo de: $aRepos n= $lenRepo .
#检查所有仓库
i=0
while [ $i -lt $lenRepo ]
do
	#echo i=$i ${aRepos[$i]}
	isPushed ${aRepos[$i]}
	ret=$?
	if [ $ret == "0" ] ; then
		let n_push++
	elif [ $ret == "1" ]; then
		let n_commit++
	elif [ $ret == "2" ]; then
		let n_add++
	fi
	let i++
done

#检查完毕,总结
echo -en "\e[32m 检查完毕\e[0m: "
if [ $n_commit == "0" ] && [ $n_add == "0" ]; then
	echo -en "所有仓库均已push"
else
	echo -en "有 \e[31m$n_commit\e[0m 个仓库没有commit"
fi
echo ""

