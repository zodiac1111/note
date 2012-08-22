---
layout: post
title: "hello world"
date: 2012-07-03 09:01
comments: true
categories: 
---

#LPI笔记
##* ~的特殊用法 cd
其他用户的主目录
Bash 将把单独的 ~ 扩展为指向主目录，然而您还可以用它来指向其他用户的主目录。例如，如果我们想要引用 user1用户 的主目录中的名为 fredsfile.txt 的文件，可以输入：
$ ./myprog ~user1/fredsfile.txt
* cd 的man手册内置在bash中.所以man cd 即是 man bash.
##ls
-a all ; -l long 例如
drwxrwxr-x.  3 zodiac1111 zodiac1111  4096 6月  19 14:30 workspace
<1权限信息> 2链接数 3所有者 4group 5object size 6mtime 7object name
查看目录本身 -d : ls -dl
##mkdir -p
然而，mkdir 有一个很方便的 -p 选项，该选项告诉 mkdir 创建所有缺少的父目录，如下所示：
$ mkdir -p 这是/一个/绝对/不/存在的/目录/filename
##通配符
rm file1 file2 file3 file4 file5 file6 file7 file8
rm file[1-8]
rm file*
## 前台fg 停止C-z 后台bg<&> 前台
fg 和 bg
为了使进程“重新活动”并再次运行，我们能用 bash 内置的 fg 使它在前台运行：
$ fg

现在回到我们开始之处，xeyes 完全在前台运行并且没有 bash 提示符。如果我们想同时得到 bash 提示符和正在运行的 xeyes 进程，那么我们实际想要做的是将该进程发送到后台。首先，让我们再次使它停止，这样我们就有提示符：
^Z
[1]+  Stopped                 xeyes -center red
$

现在用 bash 内置的 bg 来继续在后台运行它：
$ bg
[1]+ xeyes -center red &
$

好极了！现在 xeyes 进程在后台运行，并且出现了新的正在工作的 bash 提示符。
查看后台: jobs -l
##链接:动态/静态
 man ldconfig 和 man ld.so
ldd /sbin/sln
ldd /bin/ln
配置:/etc/ld.so.conf 和 /etc/ld.so.cache
