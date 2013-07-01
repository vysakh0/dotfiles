########
# PATH #
########

# Re-scan $PATH for newly-installed programs.
env-update() { export PATH=$PATH; }


# Heroku standalone client
PATH="/usr/local/heroku/bin:$PATH"

# Tex
#PATH="$PATH:/usr/local/texlive/2012basic/bin/universal-darwin"

# Bundler binstubs
PATH="./bin/stubs:$PATH"

PATH=$HOME/.dotfiles/bin:$PATH
PATH=$PATH:/usr/local/share/npm/bin

#rbenv exporting
PATH=$PATH:/home/vysakh/.local/bin:/home/vysakh/.rbenv/shims:/home/vysakh/.rbenv/bin
