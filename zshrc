ZSH=$HOME/.oh-my-zsh
ZSH_THEME="kolo"

#if [[ -n $TMUX ]]; then
# Let's make sure we're in tmux boots before loading anything. Without this if,
# everything loads in the "real", non-tmux terminal.
plugins=(git git-flow command-not-found rails4 ubuntu zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

#BASE="$HOME/dotfiles/zsh"
#source $BASE/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH 
export TERM=xterm-256color
eval $(dircolors ~/.dir_colours)
~/./days
#fi
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
