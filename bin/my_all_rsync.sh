#!/bin/sh
# 同步所有需要同步的东西,很耗时间!! 一般在晚上没事干的时候同步
# 同步目录

# 反注销以下语句以调试脚本
 set -x

backdir=/media/zodiac1111/bcb95e11-a242-494e-bd4c-b88f5fd3308d/
log=/home/zodiac1111/rsync.log
exclude="/home/zodiac1111/gitbin/rsync_exclude.txt"
opt_delete= 
opt=


echo -en "\007"
echo "==== 源目录 ===="
echo "~"
echo "	不包括一下目录"
cat  ${exclude}
echo "==== 目标目录 ==== "
echo ${backdir}

echo "==== 输入选项 ===="
echo -en "\007"

while true; do
    read -p "是否使用删除(delete)选项?<y/N/q>" opt
    case ${opt} in
        [Yy] ) opt_delete="--delete"; break;;
        [Nn] ) opt_delete="";break;;
		[Qq] ) echo "退出备份";exit;;
        "" ) echo "默认不删除";opt_delete= "";break;;
		* ) echo "未知选项.";;
    esac
done

#echo ${opt_delete}
#exit

# 缓存密码
echo "开始备份home目录,日志保存在"${log}"文件中."

echo "start rsync @" `date +"%Y-%m-%d %H:%M:%S"` >> ${log}

rsync \
	--exclude-from  ${exclude}	\
	${opt_delete} \
	--hard-links --archive --verbose --progress --stats  $HOME/  ${backdir}  

ret=$?

# --delete
#rsync '/home/zodiac1111/tmp/' ${backdir}/tmp/'  -avH
#rsync '/home/zodiac1111/Mysoft/' ${backdir}/Mysoft/' -avH
#rsync '/home/zodiac1111/Downloads/' '/media/usb0/Downloads/' -avH
#rsync '/home/zodiac1111/Documents/' '/media/usb0/Documents/' -avH
#rsync '/home/zodiac1111/Dropbox/' '/media/usb0/Dropbox/' -avH
#rsync '/home/zodiac1111/workspace/' '/media/usb0/workspace/' -avH
echo "end rsync @" $? `date +"%Y-%m-%d %H:%M:%S"` >> ${log}

echo "卸载备份硬盘"
# 用完卸载
umount /media/zodiac1111/bcb95e11-a242-494e-bd4c-b88f5fd3308d
echo -en "\007 ret="$ret
# 可能可以关机
#sudo 
