#添加文件新增至工程
git add . 
if [ "$1" == "" ]
then
 	git commit -m '没有说明' #添加说明?
else
 	git commit -m $1 #添加说明?
fi
 git push -u origin master  #上传至服务器
