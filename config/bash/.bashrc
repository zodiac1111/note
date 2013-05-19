# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
set mysoftdir=~/Mysoft/bin
export mysoftdir
set PATH=PATH:mysoftdir
export PATH

#set cross=~/Mysoft/FriendlyARM/toolschain/4.4.3/bin
#export cross
#set PATH=PATH:cross
export PATH=$PATH:/home/zodiac1111/Mysoft/FriendlyARM/toolschain/4.4.3/bin
# User specific aliases and functions
export HL3104_HOME='/home/zodiac1111/hl3104/trunk/hl3104-v2.3'
