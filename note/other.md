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

真的很有意思。
