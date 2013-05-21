# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# 自动补全 auto co
if [ -f /etc/bash_completion ]; then 
. /etc/bash_completion 
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# 自定义 bin目录
#export PATH=$PATH:/home/zodiac1111/Mysoft/usr/bin
export PATH=$PATH:/home/zodiac1111/gitbin
# User specific aliases and functions
#export HL3104_HOME='/home/zodiac1111/hl3104/trunk/hl3104-v2.3'

export PATH=$PATH:/sbin
# 项目导出2.3版本
# 编译器路径
export PATH=$PATH:/home/zodiac1111/Mysoft/usr/bin
# 项目主目录
export HL3104_HOME='/home/zodiac1111/hl3104/trunk/hl3104-v2.3'

# 项目导出1.5版本(待验证)
