ZSH=$HOME/.oh-my-zsh
ZSH_THEME="kolo"

#if [[ -n $TMUX ]]; then
# Let's make sure we're in tmux boots before loading anything. Without this if,
# everything loads in the "real", non-tmux terminal.
plugins=(git git-flow command-not-found rails4 zsh-syntax-highlighting vundle extract)

source $ZSH/oh-my-zsh.sh

PATH=$PATH:/home/vysakh/.local/bin:/home/vysakh/.rbenv/shims:/home/vysakh/.rbenv/bin
export PATH
export TERM=xterm-256color
eval $(dircolors ~/.dir_colours)
#~/./days
#fi
BASE="$HOME/dotfiles/zsh"
source $BASE/aliases.zsh
#DISABLE_CORRECTION=”true”
unsetopt correct_all

export EDITOR='vim'
#open tmux with utf-8 support instead of relying on local, got from dhruvsagar post
alias tmux="tmux -u"
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
