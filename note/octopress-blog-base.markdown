---
layout: post
title: "hello world"
date: 2012-07-03 09:01
comments: true
categories: 
---
#安装:

gem:
`yum install gem`

bundler:
`gem install bundler`

rake:
`gem install rake`

Could not find rake-0.9.6 in any of the sources
`bundle install`

git clone 项目.
rake等操作

octopress blog基本操作  
http://octopress.org/docs/blogging/

1. 传到博客根目录

	`cd ~/blog/octopress`

2. 新建日志
	在博客根目录,例如`/home/zodiac1111/blog/octopress`执行:
	`rake new_post["Title"]`来创建一篇新文章.
3. 预览&发布 

	#在本地预览blog
	#转到目录
	cd /home/zodiac1111/blog/octopress
	#生成
	rake generate
	#预览 在本地输入 http://localhost:4000/ 访问
	rake preview
	#发布
	rake deploy	
	#生成和发布也可以合并成为一句:
	rake gen_deploy

4. 保存source(可选)

	#保存博客源代码之 页面的source分支下。
	cd /home/zodiac1111/blog/octopress
	git add .
	git commit -m 'blog source update'
	#推送至远端
	git push origin source
