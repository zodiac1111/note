# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/Mysoft/bin:$HOME/gitbin

#set mysoftdir=$HOME/Mysoft/bin #加入我的软件启动目录

#export mysoftdir

#set PATH=PATH:mysoftdir

export PATH
echo "aaa"
cd ~/Dropbox/wiki && gollum &
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
