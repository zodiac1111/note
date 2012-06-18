#Gnome3 中增加快捷方式
>http://tinyz.github.com/2012/04/23/custom-shortcut-for-gnome/

全局程序视图位于 /usr/share/applications 目录，单个用户则位于 ~/.local/share/applications/ 目录。Nautilus 不把他们识别为纯文本文件，可以使用终端显示或编辑它们。

**注意**: 删除一个 .desktop 文件并不卸载软件，只是删除他的桌面特性（如文件关联，快捷键等）。

***********
### .desktop 配置文件的一些参数

	Name: 程序快捷方式的名称
	Comment: 程序快捷方式的描述
	Exec: 程序可执行文件的路径
	Terminal: 程序执行的方式，true为执行在命令行中，falase则相反 
	Type: 程序类型，默认为Application
	Categories: 程序在Application面板中所属的分类 
	StartupNotify: 设置是否现实程序启动和关闭的提示，默认为true
	Icon: 程序图标的路径，如果只填写名字，
		那么gnome会在 /usr/share/icons 里面寻找这个图片(雾?)

####以增加 ReText 快捷方式为例：

	[Desktop Entry]
	Name=ReText
	Comment= Markdown Text editor
	Exec=/opt/ReText/retext.py
	Icon=/opt/ReText/icons/retext.png
	StartupNotify=true
	Terminal=false
	Type=Application
	Categories=Development;
	X-KDE-SubstituteUID=false
	MimeType=text/plain;
####实例文件
 见 ../备份图标



