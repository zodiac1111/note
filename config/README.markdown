### hosts
hosts文件应该是一个链接到这里的软连接(需要root权限)

	[sudo] ln -s ~zodiac1111/note/config/hosts /etc/hosts
	从该项目文件	连接到	系统目录的hosts文件

其他配置文件都通过符号链接为系统的文件.

* vim: vimrc gvimrc
* bash: bashrc
* git: .gitconfig

### bash配置文件

ln -s ~/note/config/.bashrc ~/.bashrc
ln -s ~/note/config/.bash_profile ~/.bash_profile

