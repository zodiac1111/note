#使用valgrind测试程序的内存泄露/多线程竞争/等等
http://www.ibm.com/developerworks/cn/linux/l-cn-valgrind/


#在执行 Valgrind 期间连接 gdb
>http://www.ibm.com/developerworks/cn/aix/library/au-aixnirvana/index.html
algrind 和 gdb 可以结合使用。通过在 Valgrind 中使用 -db-attach=yes 选项，可以在运行 Valgrind 时直接调用 gdb。例如，如果带 –db-attach 选项对清单 12 中的代码调用 Valgrind，在首次遇到内存问题时，它会调用 gdb，见清单 13。
valgrind --tool=memcheck --leak-check=full  --db-attach=yes ./test
ps:--db-command=<command> 选项可以指定调试器


#加快编译 
>http://www.ibm.com/developerworks/cn/aix/library/au-aixnirvana/index.html
对于任何比较复杂的软件，编译源代码都会占用不少时间。在加快编译过程方面，最好的工具之一是 ccache（见 参考资料 中的链接）。ccache 是一种编译器缓存，这意味着如果在编译期间文件没有修改过，就从工具的缓存获取它。如果用户只修改了一个头文件并调用 make clean; make，ccache 会显著加快编译。因为 ccache 不仅仅使用时间戳决定文件是否需要重新编译，可以更好地节省宝贵的编译时间。下面是使用 ccache 的一个示例：

#尾递归
`
// 尾递归求阶乘
unsigned int RefactorialTail(unsigned int i,const unsigned int status)
{
    if(i == 0)
        return status;
    return RefactorialTail(i-1, status*i);
}

call :RefactorialTail(xs,1);

`
`
// 尾递归求菲波纳锲数列
unsigned int FeboTail(unsigned int i,  //输入
                      const unsigned int s1,     //上上次结果
                      const unsigned int s2)    //上次结果
{
    if(i == 0)
        return s1;
    return FeboTail(i-1, s2, s1+s2);
}
call: FeboTail(x,1,1) //数组第0项开始
call: FeboTail(x,1,1) //数组第1项开始
`

#*sh: ./hello3: No such file or directory 
>http://www.newsmth.net/nForum/#!article/Embedded/104992
ldd 查看库版本,然后检查是否存在该库

#echo -e "1\n2" 

#Fedora 时间
TODO: Linux下各种时间的同异
>http://www.linuxdiyf.com/bbs/thread-204628-1-1.html
重新安装了系统，Fedora15.
在我安装好系统后，系统的时间是错误的，而且无法修改，每次启动Fedora后都会把主板上BIOS时间修改了，我开机的时候修改BIOS的时间再进系统，问题依然存在。经过我的查阅资料，问题解决了。
首先我查阅 《鸟哥的Linux私房菜》知道有一个文件`/etc/sysconfig/clock`可以设置时间。
打开文件一看，原来仅仅是设置时区的。
`
# The time zone of the system is defined by the contents of /etc/localtime.
# This file is only for evaluation by system-config-date, do not rely on its
# contents elsewhere.
ZONE="Asia/Chongqing"
`

从上面的说明可以看到，有一个 /etc/localtime，我用vi打开这个文件，发现是乱码。我猜测可那就是这些乱码的原因了。
于是我把 /etc/localtime重命名，然后使用命令touch /etc/localtime重新建立了一个localtime空白文件。
mv /etc/localtime /etc/localtime-bak
touch /etc/localtime
复制代码
当我把空白文件建立好后，时间立即正确了。

正常情况下 /etc/localtime 也是二进制的（文本编辑器打开看是乱码~~）
更改后和标准时间相差8个小时。。。
应该是UTC那个勾，不要点上就好。不严格的说，UTC用的是格林威治时间，跟这边当然会差8小时了。

#关于fedora 17启动时显示cannot open font file true的解决办法

打开/etc/default/grub 文件
将GRUB_CMDLINE_LINUX=行中的SYSFONT=True 改为SYSFONT=latarcyrheb-sun16 ；
保存退出；
运行命令：
grub2-mkconfig -o /boot/grub2/grub.cfg
然后reboot；
问题即可解决。

本办法是搜索来的，原文http://forums.fedoraforum.org/showthread.php?t=277213，感谢原作者！
#中文编码转换 iconv utf8 <=> big/gb2312
>鸟哥的私房书
`
[root@www ~]# iconv --list
[root@www ~]# iconv -f 原本编码 -t 新编码 filename [-o newfile]
选项不参数:
--list :列出 iconv 支持持的语系数据
-f :from ,亦即来源之意,后接原本的编码格式;
-t :to ,亦即后来的新编码要是什么格式;
-o file:如果要保留原本的档案,那么使用 -o 新档名,可以建立新编码档案。
范例一:将 /tmp/vitest/vi.big5 转成 utf8 编码吧!
[root@www ~]# cd /tmp/vitest
[root@www vitest]# iconv -f big5 -t utf8 vi.big5 -o vi.utf8
[root@www vitest]# file vi*
vi.big5: ISO-8859 text, with CRLF line terminators
vi.utf8: UTF-8 Unicode text, with CRLF line terminators
#是吧!有明显不同吧! ^_^ 
这指令支持的语系非常之多,除了正体中文的 big5, utf8 编码之外,也支持简体中文的 gb2312 , 所
以对岸的朊友可以简单的将鸟站的网页数据下载后,利用这个指令来转成简体,就能够轻松的读取文件
数据啰! 不过,不要将转成简体的档案又上传成为您自己的网页啊!这明明是鸟哥写的不是吗? ^_^
不过如果是要将正体中文的 utf8 转成简体中文的 utf8 编码时,那就得费些功夫了! 丼例来说,如果
要将刚刚那个 vi.utf8 转成简体的 utf8 时,可以这样做:
[root@www vitest]# iconv -f utf8 -t big5 vi.utf8 |\
		iconv -f big5 -t gb2312 | \
		iconv -f gb2312 -t utf8 -o vi.gb.utf8
1 繁(UTF8)->繁(big5)
2 繁(big5)->简(gb2312)
3 简(gb2312)->简(UTF8)
`
#dos2unix unix2dos window/Unix-like文本文件回车换行转换
我们在第七章里面谈到 cat 这个指令时,曾经提到过 DOS 不 Linux 断行字符的不同。 而我们也可以利
用 cat -A 来观察以 DOS (Windows 系统) 建立的档案的特殊格式, 也可以取现在 DOS 使用的断行字
符为 ^M$ ,我们称为 CR 不 LF 两个符号。 而在 Linux 底下,则是仅有 LF ($) 这个断行符号。这个断
行符号对于 Linux 的影响很大喔! 为什么呢?
我们说过,在 Linux 底下的指令在开始执行时,他的判断依据是 『Enter』,而 Linux 的 Enter 为 LF
符号, 不过,由于 DOS 的断行符号是 CRLF ,也就是多了一个 ^M 的符号出来, 在这样的情况下,
如果是一个 shell script 的程序档案,呵呵~将可能造成『程序无法执行』的状态~ 因为他会误判程序
所下达的指令内容啊!这很伤脑筋吧!
那怂么办啊?很简单啊,将格式转换成为 Linux 即可啊!『废话』,这当然大家都知道,但是, 要以
vi 进入该档案,然后一个一个删除每一行的 CR 吗?当然没有这么没人性啦! 我们可以透过简单的指
令来进行格式的转换啊!

root@www ~]# dos2unix [-kn] file [newfile]
[root@www ~]# unix2dos [-kn] file [newfile]
选项不参数:
-k :保留该档案原本的 mtime 时间格式 (不更新档案上次内容经过修订的时间)
-n :保留原本的旧档,将转换后的内容输出到新档案,如: dos2unix -n old
new
范例一:将刚刚上述练习的 /tmp/vitest/man.config 修改成为 dos 断行
[root@www ~]# cd /tmp/vitest
[root@www vitest]# cp -a /etc/man.config .
[root@www vitest]# ll man.config
-rw-r--r-- 1 root root 4617 Jan 6 2007 man.config
[root@www vitest]# unix2dos -k man.config
unix2dos: converting file man.config to DOS format ...
# 屏幕会显示上述的讯息,说明断行转为 DOS 格式了!
[root@www vitest]# ll man.config
-rw-r--r-- 1 root root 4758 Jan 6 2007 man.config
# 断行字符多了 ^M ,所以容量增加了!
范例二:将上述的 man.config 转成 man.config.linux 的 Linux 断行字符
[root@www vitest]# dos2unix -k -n man.config man.config.linux
dos2unix: converting file man.config to file man.config.linux in UNIX
format ...
[root@www vitest]# ll man.config*
-rw-r--r-- 1 root root 4758 Jan 6 2007 man.config
-rw------- 1 root root 4617 Jan 6 2007 man.config.linux
因为断行字符以及 DOS 不 Linux 操作系统底下一些字符的定义不同,因此, 不建议你在 Windows 系
统当中将档案编辑好之后,才上传到 Linux 系统,会容易取生错误问题。 而且,如果你在不同的系统
之间复制一些纯文本档案时,千万记得要使用 unix2dos 戒 dos2unix 来转换一下断行格式啊!

 
