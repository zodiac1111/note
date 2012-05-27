#!/bin/sh
#backup some backup file (like vim bash) to loacl floder
cfgpath=~/note/conffile_backup
cp ~/.vimrc 		~/note/conffile_backup
cp ~/.gvimrc 		~/note/conffile_backup
cp ~/.bashrc		~/note/conffile_backup
cp ~/.bash_profile 	~/note/conffile_backup
cp /etc/hosts		$cfgpath
cp ~/Mysoft/bin ~/note/conffile_backup/ -R
#cd ~/note
#~/Mysoft/bin/gitupdate.sh '文件备份'

