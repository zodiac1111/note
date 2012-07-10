octopress blog基本操作
>http://octopress.org/docs/blogging/

新建日志

	rake new_post["title"]
预览&发布 

	#在本地预览blog
	#转到目录
	cd /home/zodiac1111/blog/octopress
	#生成
	rake generate
	#预览 在本地输入 http://localhost:4000/ 访问
	rake preview
	#发布
	rake deploy	

保存source

	#保存博客源代码之 页面的source分支下。
	cd /home/zodiac1111/blog/octopress
	git add .
	git commit -m 'blog source update'
	#推送至远端
	git push origin source
