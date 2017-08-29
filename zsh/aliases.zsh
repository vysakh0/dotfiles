# expand aliases similar to vim

typeset -a ealiases
ealiases=()

function ealias()
{
alias $1
ealiases+=(${1%%\=*})
}

function expand-ealias()
{
if [[ $LBUFFER =~ "(^|[;|&])\s*(${(j:|:)ealiases})\$" ]]; then
    zle _expand_alias
    zle expand-word
fi
zle magic-space
}

zle -N expand-ealias

bindkey -M viins ' '    expand-ealias
bindkey -M viins '^ '   magic-space     # control-space to bypass completion
bindkey -M isearch " "  magic-space # normal space during searches

#rails_zen

alias rzmg="rails_zen model g "
alias rzma="rails_zen model act "

alias t="tmux"

# aliases
alias vz="nvim ~/.zshrc"
alias az="nvim ~/dotfiles/zsh/aliases.zsh"
alias sz="source ~/.zshrc"

alias cp="cp -iv"
alias rm="rm -iv"
alias mv="mv -iv"

#debian/ubuntu related system liases
alias halt='sudo shutdown -h now'
alias reboot='sudo reboot'
alias api='sudo apt-get install'
alias aps='sudo apt-cache search'

ealias y='vim ~/.zshrc'
# open file using the software
alias -s html=vim
alias -s rb=vim
alias -s py=vim
alias -s erb=vim
alias -s pdf=evince
alias -s com=chromium-browser

# Vim aliases
ealias v="nvim "
ealias vim="nvim"
ealias nv="nvim "
ealias vi="nvim "
# Vim-style line editing
bindkey -v
# I want my bck-i-search
bindkey -M viins "^r" history-incremental-search-backward
bindkey -M viins "<up>" history-incremental-search-backward
bindkey -M vicmd "f" history-incremental-search-backward
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

#git alias
alias gpo="git push origin"
alias gpl="git pull origin"
alias gpom="git push origin master"
alias gplm="git pull --rebase origin master"
#node stuf
alias ni="npm install"
alias nis="npm install --save-dev"
alias boi="bower install"
alias bois="bower install --save"

alias tagit='ctags -R --exclude=.git --exclude=log *'

function b {
  if [[ $# == 0 ]]
  then
    bi && binstubs
  else
    bundle "$@"
  fi
}

alias ngr="~/Downloads/ngrok/ngrok"
