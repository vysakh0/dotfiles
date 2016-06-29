source ~/.zplug/zplug

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"

zplug "junegunn/fzf-bin", \
    as:command, \
    from:gh-r, \
    file:fzf

# Support oh-my-zsh plugins and the like
zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/command-not-found",   from:oh-my-zsh
zplug "plugins/extract",   from:oh-my-zsh
zplug "themes/robbyrussell", from:oh-my-zsh

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
