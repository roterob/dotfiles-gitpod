#!/bin/bash
  
# git
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.ll "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# bash
PATH=$PATH:~/fzf-0.33.0/bin/
history -s pnpm graphql-codegen
history -s rails autosicovery:generate_graphql_schema
history -s packwerk update-deprecations
history -s git add '**/finance/*'
history -s bundle exec rbprettier --write '**/finance/**/*.rb'
source "/home/gitpod/fzf-0.33.0/shell/key-bindings.bash"

alias git_current_branch="git symbolic-ref --short HEAD"
alias front="factorial open frontend"
alias e2e="npm run cypress:gitpod"
alias amend!="git commit --amend --no-edit"
alias undo="git reset HEAD~1 --soft"
