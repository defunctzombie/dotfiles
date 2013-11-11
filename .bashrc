# bash command aliases
[[ -r ~/.bash_aliases ]] && . ~/.bash_aliases

# load brew installed bash completions
brew_prefix=$(brew --prefix)
[[ -r $brew_prefix/etc/bash_completion ]] && . $brew_prefix/etc/bash_completion

## nvm load and optional completion
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

export EDITOR=vim
export PATH=$HOME/bin:/usr/local/bin:$PATH

# set higher ulimit
# we have modern computers
ulimit -n 10000

## setup bash prompt

function EXT_COLOR () { echo -ne "\[\033[38;5;$1m\]"; }
c_black='\[\e[30m\]'
c_red='\[\e[31m\]'
c_green='\[\e[32m\]'
c_yellow='\[\e[33m\]'
c_blue='\[\e[34m\]'
c_magenta='\[\e[35m\]'
c_cyan='\[\e[36m\]'
c_white='\[\e[37m\]'
c_default='\[\e[0m\]'
c_orange=$(EXT_COLOR 172)

# \u - user
# \h - host
# \w - cwd
# \W - current dir
source ~/.git-prompt.sh
export PS1="💀 $c_default($c_cyan\W$c_default)$c_green\$(__git_ps1 \"(%s)\")$c_orange$ $c_default"

