#!/bin/bash
#set -x
#set -v on
#update loacl date(conf back and note) to remote sever
cd ~/note
#date +%Y/%m/%d_%H:%M:%S
if [ "$1" == "" ]
then
	echo "默认说明"
	~/Mysoft/bin/gitnoteupdate.sh '笔记备份'`date +%Y/%m/%d_%H:%M:%S`
else
	echo "手动说明"
	~/Mysoft/bin/gitnoteupdate.sh $1'->笔记备份'`date +%Y/%m/%d_%H:%M:%S`
fi
exit 0
