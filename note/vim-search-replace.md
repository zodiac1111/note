#vim查找替换
>http://www.chinavim.org/vivim-%E6%9F%A5%E6%89%BE%E6%9B%BF%E6%8D%A2%E5%A4%A7%E5%85%A8.html

* 可以使用 # 作为分隔符，此时中间出现的 / 不会作为分隔符

 :替换当前行第一个 vivian/ 为 sky/

* <code>:n,$s/vivian/sky/</code> 替换第 n 行开始到最后一行中每一行的**第一个** vivian 为 sky

* <code>:n,$s/vivian/sky/g</code> 替换第 n 行开始到最后一行中每一行**所有** vivian 为 sky

(n 为数字，若 n 为 .<句号>，表示从当前行开始到最后一行)
