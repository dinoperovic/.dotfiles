# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"
# Generic
export PATH=/usr/local/sbin:$PATH

# Python & Django
alias py="python"
alias wp="which python"
alias dj="python manage.py"
alias dja="django-admin"

# Poetry
export PATH=~/.poetry/bin:$PATH
alias p="poetry"
alias pdj="poetry run python manage.py"

# Git
alias g="git"
alias gd="git diff"
alias gl="git pull"
alias gm="git merge"
alias gb="git branch"
alias gp="git push"
alias gco="git checkout"
alias gst="git status"

# Docker
alias d="docker"
alias dc="docker compose"

# React Native
alias rn="react-native"

# Flutter
export PATH=~/Dev/flutter/bin:$PATH

# Misc
alias ll="ls -la"
alias tree="tree -C"
alias hosts="sudo vi /etc/hosts"
alias clearport="sudo lsof -t -i tcp:8000 | xargs kill -9"

# Dev directories & aliases
export DEV=$HOME/Dev
export PROJECTS=$DEV/projects
export ASSETS=$DEV/assets
export BACKUP=$DEV/backup
export PUBLIC=$DEV/public
export APPS=$DEV/apps
export PLAYGROUND=$DEV/playground
export XCODE=$DEV/xcode
export GO=$DEV/go
alias cdd="cd $DEV"
alias cdp="cd $PROJECTS"
alias cdap="cd $APPS"
alias cdpu="cd $PUBLIC"
alias cda="cd $ASSETS"
alias cdb="cd $BACKUP"
alias cdpl="cd $PLAYGROUND"
alias cdx="cd $XCODE"
alias cdgo="cd $GO"

# Go
export GOPATH=$GO
export PATH=$GOPATH/bin:$PATH

# Nix
export PATH=~/.nix-profile/bin:$PATH

# export language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Openssl
export LDFLAGS=-L/usr/local/opt/openssl/lib

# Google Cloud
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"
