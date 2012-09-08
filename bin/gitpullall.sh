#!/bin/sh
set -x
notepath=~/note
dotvimpath=~/.vim

cd ${notepath}
git pull origin master

cd ${dotvimpath}
git pull origin master
