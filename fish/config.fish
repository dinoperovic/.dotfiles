# Generic
set PATH /usr/local/sbin ~/.local/bin $PATH
set -x EDITOR code

# Vim
alias vi "nvim"
alias vim "nvim"

# Python & Django
alias py "python"
alias wp "which python"
alias dj "python manage.py"
alias dja "django-admin"

# Poetry
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

# Docker & Kubernetes
alias d "docker"
alias dc "docker compose"
alias k "kubectl"

# Terraform
alias tf "terraform"

# React Native
alias rn "react-native"

# Flutter
set PATH ~/Dev/flutter/bin $PATH

# Node
set --universal nvm_default_version v16.15.0

# Misc
alias tree "tree -C"
alias hosts "sudo vi /etc/hosts"

# Dev directories & aliases
set -x DEV $HOME/Dev
set -x PROJECTS $DEV/projects
set -x ASSETS $DEV/assets
set -x BACKUP $DEV/backup
set -x PUBLIC $DEV/public
set -x APPS $DEV/apps
set -x PLAYGROUND $DEV/playground
set -x XCODE $DEV/xcode
alias cdd "cd $DEV"
alias cdp "cd $PROJECTS"
alias cdap "cd $APPS"
alias cdpu "cd $PUBLIC"
alias cda "cd $ASSETS"
alias cdb "cd $BACKUP"
alias cdpl "cd $PLAYGROUND"
alias cdx "cd $XCODE"

# Set language
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

# Openssl
set -x LDFLAGS '-L/opt/homebrew/opt/openssl@1.1/lib -L/opt/homebrew/opt/readline/lib'

# GPG
set -gx GPG_TTY (tty)

# Google Cloud
source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

