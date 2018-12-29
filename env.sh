#!/bin/zsh

# Add commonly used folders to $PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Node
source ~/.nvm/nvm.sh

# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=vim

# Aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
alias envsh='vim ~/env.sh'
alias zshrc='vim ~/.zshrc'
alias szshrc='source ~/.zshrc'
alias lsh='ls -ld .?*'
alias vimUpdatePlugins='cd ~/.vim_runtime && git pull --rebase'
alias vimrc='vim ~/.vim_runtime/my_configs.vim'
alias n='cd /Users/fabijanbajo/Dropbox/notes; vim .'

# Functions
gacp () {
  gaa && gcmsg $1 && gp
}
