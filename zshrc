ZSH=$HOME/.oh-my-zsh
ZSH_THEME="kolo"

#if [[ -n $TMUX ]]; then
# Let's make sure we're in tmux boots before loading anything. Without this if,
# everything loads in the "real", non-tmux terminal.
plugins=(git)

source $ZSH/oh-my-zsh.sh

BASE="$HOME/dotfiles/zsh"

CORE=(
key_bindings
# "tmux" needs to be before "navigation" because of current-tmux-session
#tmux
#navigation
#colors
editor
aliases
path
options
completion
#vcs
#prompt
ruby
rbenv
)

############################
#         EXTRAS           #
# (non-core functionality) #
############################
EXTRA=(
git
rails
#hitch
postgres
# arduino
)

for core in $CORE
do
    source $BASE/$core.zsh
done

for extra in $EXTRA
do
    source $BASE/$extra.zsh
done

source $BASE/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH 
export TERM=xterm-256color
eval $(dircolors ~/.dir_colours)
~/./days
#fi

