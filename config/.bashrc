# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
set mysoftdir=~/Mysoft/bin
export mysoftdir
set PATH=PATH:mysoftdir
export PATH

set cross=~/Mysoft/FriendlyARM/toolschain/4.4.3/bin
export cross
set PATH=PATH:cross
export PATH
# User specific aliases and functions

