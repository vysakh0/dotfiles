alias z="vim ~/.zshrc"
alias sz="source ~/.zshrc"
alias vv="vim ~/.vimrc"
alias sv="source ~/.vimrc"

# alias to open the dotfiles directory
alias dv="cd ~/dotfiles; vim +NERDTree"
alias cp="cp -iv"
alias rm="rm -iv"
alias mv="mv -iv"
alias ls="ls --color=always"

#debian/ubuntu related system liases
alias halt='sudo shutdown -h now'
alias reboot='sudo reboot'
alias ag='sudo apt-get'
alias api='sudo apt-get install'
alias aps='sudo apt-cache search'

# open file using the software
alias -s html=vim
alias -s rb=vim
alias -s py=vim
alias -s erb=vim
alias -s com=chromium-browser

# Vim aliases
alias v="vim -p"
alias vi="vim -p"
# Vim-style line editing
bindkey -v
# I want my bck-i-search
bindkey -M viins "^r" history-incremental-search-backward
bindkey -M vicmd "f" history-incremental-search-backward

#git alias
alias gcm="git commit -m"
alias gpo="git push origin"
alias gpl="git pull origin"
alias gpod="git push origin develop"
alias gpld="git pull origin develop"

#git flow related aliases
alias gf="git flow"
alias gff="git flow feature"

#Ruby stuff :D
RUBYOPT=rubygems

# Bundler
alias be="bundle exec"
alias bi="bundle check || bundle install"
alias binstubs="bundle --binstubs=./bin/stubs"

# ctags
alias tagit='ctags -R -f ./.git/tags .'

function b {
  if [[ $# == 0 ]]
  then
    bi && binstubs
  else
    bundle "$@"
  fi
}
