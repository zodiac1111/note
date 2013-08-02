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


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export CHROME_DEVEL_SANDBOX="/home/zodiac1111/Mysoft/chrome-linux/chrome_sandbox"
