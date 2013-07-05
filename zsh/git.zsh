#######
# Git #
#######

# No arguments: run `git status`
# With arguments: acts like `git`
function g {
  if [[ $# > 0 ]]; then
    git $@
  else
    git st
  fi
}

# Complete `g` like `git`
#compdef g=git
#compdef _git gc=git-checkout

alias gcl="git clone"
alias gg="git grep"
alias amend="git commit --amend -Chead"
alias amend-new="git commit --amend"

alias gai="git add --interactive"

alias gcb="git checkout -b"
alias gct="git commit"
alias gcm="git commit -m"

#git flow related aliases
alias gf="git flow"

# https://gist.github.com/3960799
function git-add-prs {
  git config --add remote.origin.fetch '+refs/heads/*:refs/remotes/origin/*'
  git config --add remote.origin.fetch '+refs/pull/*/head:refs/remotes/origin/pr/*'
  git config  --add remote.origin.url "git@github.com:thoughtbot/`basename $PWD`.git"
  git fetch
  echo "git checkout -t origin/pr/NUMBER"
}
