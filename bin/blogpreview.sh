#在本地预览blog
#转到目录
cd /home/zodiac1111/blog/octopress
#生成
bundle exec rake generate
#预览 在本地输入 http://localhost:4000/ 访问
echo -e "本地输入 \e[31m http://localhost:4000/ \e[0m 预览更改"
bundle exec rake preview
