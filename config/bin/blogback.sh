#!/bin/sh
#保存博客源代码之 页面的source分支下。
cd /home/zodiac1111/blog/octopress
git add .
git commit -m 'blog source update'
#推送至远端
git push origin source
