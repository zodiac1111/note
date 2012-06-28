#github一些使用笔记
##初始化
<全局设定>

	git config --global user.name "zodiac1111"
	<设定用户名>
	git config --global user.email zodiac8765+github_admin@gmail.com
	<设定电子邮件地址>

##新建项目


	mkdir test
	cd test
	git init
	touch README
  	git add README
 	<添加至本地服务器>
	git commit -m '第一次提交'
	<写一些更改纪要,简明扼要>
  	git remote add origin git@github.com:zodiac1111/test.git
	<添加远程服务器分支和地址>
 	git push -u origin master
  	<提交至远程服务器>

##已有项目

	cd existing_git_repo
	<转到已有项目的目录>
	git remote add origin git@github.com:zodiac1111/test.git
	<添加已有项目的网址,git形式的ssh,不用每次都写用户名密码>
	git push -u origin master
	<提交>

##SSH Keys设置
对于第一次在本机提交,ssh设置是必须的,设置好后很方便.
官方关于SSH密钥设置的帮助 >https://help.github.com/categories/56/articles
###创建一个ssh密钥

	cd ~/.ssh
可选:备份密钥

	cd ~/.ssh
	cp id_rsa* key_backup
	rm id_rsa*

创建新的ssh key
	
	ssh-keygen -t rsa -C "zodiac8765+github_admin@gmail.com"
	#创建电子邮件地址

测试新的密钥

	ssh -T git@github.com

返回如下信息:

	Hi _username_! You've successfully authenticated, but GitHub does not
	provide shell access.

则表示已经成功咯 XD
