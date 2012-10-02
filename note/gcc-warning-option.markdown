>所有的警告都是错误.
gcc/g++ 编译警告选项:

	-O -Wall -Werror -Wfloat-equal -Wshadow -Wconversion -Winline

## -Wall
我们平时可能大多数情况只使用-Wall编译警告选项，实际上-Wall选项是一系列警告编译选项的集合。
## -Werror
所有警告强制升级为错误提示
## -pedantic
## -ansi
## -Wcomment (-Wall)

## -Wshadow
当局部变量遮蔽(shadow)了参数、全局变量或者是其他局部变量时，该警告选项会给我们以警告信息。例如:
```
// test_shadow.c
int g;
int main(int argc,char **argv)
{
        short   i;
        double  g;
	retrun 0;
}
```
##inline
-Winline 让 gcc 对标志成 inline 但不能被替换的函数给出警告信息以及不能替换的原因。如下面例子，它使用了可变长度数据类型变量作为参数：
```
inline int func(int *a)
{
    int c = 4;
    char p[c]; /* 可变长度数组 */
    (*a)++;
}
/*
 * 测试函数： 使用 gcc -Winline ... 来提示信息
 */
int main(void)
{
    int d = 1;
    func(&d);
    return 0;
}
```
## -Wpacked -Wpadded 
检测结构体内存对齐/手动packed提示效率问题,自动padded也有提示.

## -Wunreachable-code
不可到达的代码
## -Woverloaded-virtual

## -Wundef


#参考资料:
1. <http://hi.baidu.com/asgznnuavmbsuzq/item/e6da157aaead3714d1dcb357>
2. <http://www.blogjava.net/ivanwan/archive/2005/08/04/9338.html>
3. <http://fengyongcheng1985.blog.163.com/blog/static/115925435201191722426925/>
4. <http://3y.uu456.com/bp-2b96985077232f60dccca105-3.html>
