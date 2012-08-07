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
