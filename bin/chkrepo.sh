#!/usr/bin/env bash
# file chkreop.sh  检查所有仓库是否push

# 反注释以调试脚本
# set -x # 查看运行的命令
# set -v # 查看bash输入的文本

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
"$HOME/workspace/spi_nokia5110lcd"
"$HOME/tmp/i2c-test"
"$HOME/workspace/webbox/01-Trunk/01-Code/src_linux"
"$HOME/workspace/webbox/01-Trunk/01-Code/website/ChiticBank-OverseasV1.0"
"$HOME/Dropbox/hv插件/freeshop发送"
"$HOME/tmp/webbox_manual"
"$HOME/tmp/lisp"
"$HOME/workspace/lua/c_call_lua_pass_data_to_lua"
)

# **********************************************
n_commit=0 #未push的仓库数量
n_add=0
n_push=0
lenRepo=${#aRepos[@]}

# 仓库状态
rstat=0

function main() {
	#echo de: $aRepos n= $lenRepo .
	#检查所有仓库
	i=0
	while [ $i -lt $lenRepo ]
	do
		#echo i=$i ${aRepos[$i]}
		isPushed ${aRepos[$i]};ret=$?
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
	echo -en "[${CL_GREEN}  Done  ${CL_END}]"
	if [ $n_commit == "0" ] && [ $n_add == "0" ]; then
		echo -e " 所有仓库均已push"
	else
		echo -e " ${CL_YELLOW}有残留${CL_END}"
		if [ $n_commit != "0" ]; then
			echo -e "* 有 ${CL_RED}${n_commit}${CL_END} 个仓库没有commit"
		fi
		if [ $n_add != "0" ]; then
			echo -e "* 有 ${CL_RED}${n_add}${CL_END} 个仓库没有add"
		fi
	fi
	echo ""
}

function repo_stat() {
	return
}

#函数 检查是否有未push的提交
# pro <dir> 转到dir目录下,查询git是否提交,提交返回0,否则返回1
# 检查仓库状态,
# 0 pushed
# 1 commit 但是未push
# 2 add 但是未commit
function isPushed() {
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
		echo -e "[${CL_GREEN} Pushed ${CL_END}] "`pwd`
		return 0
	elif [ $ret_m == "0" ]; then
		echo -e "[${CL_RED} Commit ${CL_END}] ${CL_YELLOW}"`pwd`"${CL_END}"
		return 1
	elif [ $ret == "0" ]; then
		echo -en "[${CL_YELLOW} UnPush ${CL_END}] "`pwd`
		echo -en "\r[${CL_RED} Push.. ${CL_END}] "
		#git push #> /dev/null 2>&1
		git push > /dev/null 2>&1
		p_ret=$?
		if [ ${p_ret} -ne 0 ] ; then
			echo -e "\n[${CL_RED} PUSH ${CL_END}] ${CL_YELLOW}${p_ret}${CL_END}"
		fi
		echo -e "\r[${CL_PURP} Pushed ${CL_END}] "
		return 0
	elif [ $ret_a == "0" ]; then
		echo -e "[${CL_RED} Un-Add ${CL_END}] ${CL_YELLOW}"`pwd`${CL_END}
		return 2
	fi
}

# tty color define
CL_RED="\033[31m"
CL_YELLOW="\033[33m"
CL_GREEN="\033[32m"
CL_PURP="\033[35m"
CL_END="\033[0m"
## start script

main

