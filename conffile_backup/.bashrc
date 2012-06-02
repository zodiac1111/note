# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
set mysoftdir=~/mysoft/bin
export mysoftdir
set PATH=PATH:mysoftdir
export PATH
# User specific aliases and functions
