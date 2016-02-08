# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
COMPLETION_WAITING_DOTS="true"
plugins=(git osx ruby)
source /Users/zeljko/Dropbox/Apps/aliases
ZSH_THEME="macovsky-ruby"
source $ZSH/oh-my-zsh.sh
unsetopt correct

# Customize to your needs...
export NODE_PATH=/usr/local/lib/node_modules
#export CC=gcc-4.2
#export CC=/usr/bin/gcc
alias web='cd /Library/WebServer/Documents'

#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$PATH
export PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
