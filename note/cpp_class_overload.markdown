
# 运算符重载
函数重载 参数列表必须不同<br>
运算符重载,所有运算符都能.<br>
C++一种面向对象的语言/面向应用.(放大软件的规模)

**问题由来:例如两个类的相加,怎么实现?**

例:人民币类 元/角

	RMB m1,m2,m3;
	m3=m1+m2;//两个对象相加
	m3.display();
	m3++;//单目运算.
****
站在编译器角度,把'+'视为一个特殊的函数.类似lisp中(+ 1 2).即运算符是一类特殊的函数,所以可以**函数的重载**<br>
声明中:

	RMB operator +(RMB& ,RMB& ); //双目运算基本返回给别的值,对象调用拷贝构造函数
	RMB& operator ++(RMB& ) //单目运算结果返回本身
RMB:返回值<br>
operator + :特殊的函数名 <br>
(RMB& ,RMB&) :参数列表<br>

一般定义为类的成员函数,即例如加法一定是**当前对象**本身 加上另外一个对象.

	RMB RMB::operator + (RMB& s) //双目加法 一个参数是对象本身.
	RMB RMB::operator ++() //自加 
注意:运算符结合性.

单目运算结合性? ++() ++(int)?

赋值 =重载:

	//代码
	name & operator = (name &s)
	{
		//在返回前做自己需要的操作,即重载=.
		delname();
		copyname();
		//返回
	return *this;
	}
----
**重载操作符必须具有一个类类型操作数** 
除了函数调用操作符之外，重载操作符的形参数目（包括成员函数的隐式 this 指针）与操作符的操作数数目相同。函数调用操作符可以接受任意数目的操作数。 
1.  可重载的操作符(42个)

	+ - * / % ^ & | ~ ! , = < > <= >= ++ --
 	<< >> == != && || += -= /= %= ^= &= |= 
	*= <<= >>= [] () -> ->* new new [] delete delete [] 
2. 不能重载(4个)

	::    .*   .    ?: 
通过连接其他合法符号可以创建新的操作符。例如，定义一个 operator** 以提供求幂运算是合法的。

### 优先级和结合性是固定的
### 不再具备短路求值特性
### 不要重载具有内置含义的操作符
 重载逗号、取地址、逻辑与、逻辑或等等操作符通常不是好做法。这些操作符具有有用的内置含义，如果我们定义了自己的版本，就不能再使用这些内置含义。 
#### 选择成员或非成员实现
为类设计重载操作符的时候，必须选择是将操作符设置为类成员还是普通非成员函数。在某些情况下，程序员没有选择，操作符必须是成员；在另一些情况下，有些经验原则可指导我们做出决定。下面是一些指导原则，有助于决定将操作符设置为类成员还是普通非成员函数：

* 赋值（=）、下标（[]）、调用（()）和成员访问箭头（->）等操作符必须定义为成员，将这些操作符定义为非成员函数将在编译时标记为错误。 
* 像赋值一样，复合赋值操作符通常应定义为类的成员，与赋值不同的是，不一定非得这样做，如果定义非成员复合赋值操作符，不会出现编译错误。 
* 改变对象状态或与给定类型紧密联系的其他一些操作符，如自增、自减和解引用，通常就定义为类成员。 
* 对称的操作符，如算术操作符、相等操作符、关系操作符和位操作符，最好定义为普通非成员函数。 
* 作为类成员的重载函数，其形参看起来比操作数数目少 1。作为成员函数的操作符有一个隐含的 this 形参，限定为第一个操作数。











