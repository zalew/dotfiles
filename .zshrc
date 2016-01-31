setopt share_history
setopt APPEND_HISTORY

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="zalew"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mercurial python django ruby debian virtualenvwrapper)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

#virtual env
export WORKON_HOME=$HOME/.virtualenvs
#source /usr/local/bin/virtualenvwrapper.sh
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

if [ -f ~/.git-completion.sh ]; then
	source ~/.git-completion.sh
fi

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
if [ -f ~/.private_aliases ]; then
    . ~/.private_aliases
fi
#if [ -e /usr/share/terminfo/x/xterm-256color ]; then
if [ -e /lib/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi

eval `dircolors ~/.dircolors`

export PATH="$PATH":~/npm/bin
export NODE_PATH=$NODE_PATH:/home/zalew/npm/lib/node_modules

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#source /home/zalew/.rvm/scripts/rvm