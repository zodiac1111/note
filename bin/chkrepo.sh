#!/usr/bin/env bash
# file chkreop.sh  检查所有仓库是否push

# 初始化,所有仓库路径 **在这里指定所有仓库的路径**
aRepo=(
"$HOME/dotvim"
"$HOME/note"
#"$HOME/blog/octopress"
"$HOME/Dropbox/qt_tcp_client_server"
"$HOME/Dropbox/wiki"
)

n=0 #未push的仓库数量
lenRepo=${#aRepo[@]} 

#函数 检查是否有未push的提交 
# pro <dir> 转到dir目录下,查询git是否提交,提交返回0,否则返回1
function isPushed()
{
	#echo dir=$1
	cd $1
	git st|grep "git" >>/dev/null
	ret=$?
	if [ $ret = "1" ]; then
		echo -e "[\e[32m Pushed \e[0m] "`pwd`
		return 1
	else
		echo -e "[\e[33m Unpush \e[0m] "`pwd`
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
