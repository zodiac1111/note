#!/bin/sh
#正则表达式应用
#正则查找 find 执行 格式化c/c++头文件 源文件。
cd `pwd`
#-regex 指定使用正则表达式  -regextype "posix-egrep" 指定正则类型。
# find 中使用正则匹配的是全路径。
find . -regextype "posix-egrep" -regex '.*\.(h|cpp)' \
	-exec astyle --style=linux --indent=tab --delete-empty-lines \
	  {} \;

