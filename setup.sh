#!/bin/bash

# git
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

# bash
alias git_current_branch="git symbolic-ref --short HEAD"