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
alias st="~/./start-mod.sh"
alias vz="vim ~/.zshrc"
alias az="vim ~/dotfiles/zsh/aliases.zsh"
alias sz="source ~/.zshrc"
alias vv="vim ~/.vimrc"

# alias to open the dotfiles directory
alias dv="cd ~/dotfiles; vim +NERDTree"
alias cp="cp -iv"
alias rm="rm -iv"
alias mv="mv -iv"
alias ls="ls --color=always"

#debian/ubuntu related system liases
alias halt='sudo shutdown -h now'
alias reboot='sudo reboot'
alias api='sudo apt-get install'
alias aps='sudo apt-cache search'

# open file using the software
alias -s html=vim
alias -s rb=vim
alias -s py=vim
alias -s erb=vim
alias -s pdf=evince
alias -s com=chromium-browser

# Vim aliases
ealias v="vim "
ealias vi="vim "
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
alias gpod="git push origin develop"
alias gpld="git pull --rebase origin develop"

#git flow related aliases
#alias gf="git flow"
#alias gff="git flow feature"

#Ruby stuff :D
RUBYOPT=rubygems

# Bundler
ealias be="bundle exec"
ealias b="bundle"
ealias bi="bundle check || bundle install"
ealias binstubs="bundle --binstubs=./bin/stubs"

#rails
ealias rgc="rails g controller"
ealias rgsc="rails g scaffold_controller"
ealias rgm="rails g model"
ealias rc="rails console"
ealias rn="rails new "
ealias cy="cap deploy"
ealias rdbm='rake db:migrate'

# ember stuff
alias ems="ember server"
alias emt="ember test --server"
alias egc="ember generate component"
alias egr="ember generate route"
alias egt="ember generate template"
alias egm="ember generate model"
alias egx="ember generate mixin"
alias egi="ember generate initializer"
alias egv="ember generate view"
alias egs="ember generate resource" # think scaffold?
alias ega="ember generate acceptance-test" # think scaffold?

#node stuf
alias ni="npm install"
alias nis="npm install --save-dev"
alias boi="bower install"
alias bis="bower install --save"

# elixir stuff
alias min="mix new"
alias mit="mix test"
alias mil="mix local"

# elixir stuff
alias mec="mix ecto.migrate"
alias mer="mix ecto.rollback"
alias mps="mix phoenix.server"
alias mpn="mix phoenix.new"
alias mpj="mix phoenix.gen.json"
alias mph="mix phoenix.gen.html"
alias mpm="mix phoenix.gen.model"
alias mpr="mix phoenix.routes"

# ctags
alias tagit='ctags -R --exclude=.git --exclude=log *'

# asciidoctor
alias asp="ruby ~/ascii/asciidoctor-pdf/bin/asciidoctor-pdf"
alias ase="ruby ~/ascii/asciidoctor-epub3/bin/asciidoctor-epub3 -D output"

function b {
  if [[ $# == 0 ]]
  then
    bi && binstubs
  else
    bundle "$@"
  fi
}

