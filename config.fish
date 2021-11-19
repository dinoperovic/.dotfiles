# Generic
set PATH /usr/local/sbin $PATH

# Python & Django
alias py "python"
alias wp "which python"
alias dj "python manage.py"
alias dja "django-admin"

# Poetry
set PATH ~/.poetry/bin $PATH
alias p "poetry"
alias pdj "poetry run python manage.py"

# Git
alias g "git"
alias gd "git diff"
alias gl "git pull"
alias gm "git merge"
alias gb "git branch"
alias gp "git push"
alias gco "git checkout"
alias gst "git status"

# Docker
alias d "docker"
alias dc "docker compose"

# React Native
alias rn "react-native"

# Flutter
set PATH ~/Dev/flutter/bin $PATH

# Misc
alias tree "tree -C"
alias hosts "sudo vi /etc/hosts"
alias clearport "sudo lsof -t -i tcp:8000 | xargs kill -9"

# Dev directories & aliases
set -x DEV $HOME/Dev
set -x PROJECTS $DEV/projects
set -x ASSETS $DEV/assets
set -x BACKUP $DEV/backup
set -x PUBLIC $DEV/public
set -x APPS $DEV/apps
set -x PLAYGROUND $DEV/playground
set -x XCODE $DEV/xcode
set -x GO $DEV/go
alias cdd "cd $DEV"
alias cdp "cd $PROJECTS"
alias cdap "cd $APPS"
alias cdpu "cd $PUBLIC"
alias cda "cd $ASSETS"
alias cdb "cd $BACKUP"
alias cdpl "cd $PLAYGROUND"
alias cdx "cd $XCODE"
alias cdgo "cd $GO"

# Go
set -x GOPATH $GO
set PATH $GOPATH/bin $PATH

# Nix
set PATH ~/.nix-profile/bin $PATH

# Set language
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

# Openssl
set -x LDFLAGS -L/usr/local/opt/openssl/lib

# Google Cloud
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
