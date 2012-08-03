snipMate vim片段补全插件
下载:下载zip压缩包文件
安装:直接解压到 `~/.vim`目录下
使用:例如Insert模式下,输入`main`键入`Tab`键自动补全如下代码片段:
`
int main(int argc, const char *argv[])
{
	
	return 0;
}
`
客制化:`~/.vim/snippets`目录下为片段补全样本.以文件扩张名识别代码类型,如c语言源文件使用`c.snippets`中的规则补全,同时`_.snippets`为所有类型都使用的规则.
例如`c.snippets`中的默认规则
`
# main()					#注释
snippet main					#snippet:关键字 main:输入的字符
	int main(int argc, const char *argv[])	#补全的代码片段
	{
		${1}				#${1} 补全后光标停留的第1处,按Tab键到下一处
		return 0;
	}
`