# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/Mysoft/bin

#set mysoftdir=$HOME/Mysoft/bin #加入我的软件启动目录

#export mysoftdir

#set PATH=PATH:mysoftdir
export PATH=$PATH:$HOME/Mysoft/bin
export PATH=$PATH:$HOME/Mysoft/usr/local/arm/3.4.1/bin
export PATH=$PATH:$HOME/Mysoft/arm-softfloat-linux-gnu/bin
