这个目录放置一些平时常用的小脚本.
#使用方法:
##在全新的机器上建立快捷方式
建议为这个bin目录建立一个软链接:

	ln -s ~/note/bin ~/gitbin	

添加软链接到PATH环境变量,并使之生效:

	....

TODO:这个目录让所有用户都可以访问.必尽是bin目录嘛 //root访问有可能有风险!
TODO:分离各个项目 DONE
修改提交,笔记选择性说明,一般提交必须说明

* `chrome.sh` 从官网下载安装chromium
* `chkrepo.sh`检查所有仓库是否提交
* `noteupdate.sh` 笔记上传
* `blogupdate.sh` 博客上传

---

* `rake`
