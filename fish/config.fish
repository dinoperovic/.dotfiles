# Base
set PATH /usr/local/sbin ~/.local/bin $PATH
set -x EDITOR nvim
set -x VISUAL nvim

# Generic
alias c clear

# Ripgrep
alias rgf "rg --files --hidden | rg"

# Vim
alias vi nvim
alias vim nvim

# Python & Django
alias py python
alias wp "which python"
alias dj "python manage.py"
alias dja django-admin

# Node
set --universal nvm_default_version v18.17.0

# Rust
set PATH ~/.cargo/bin $PATH

# Go
set -x GOPATH ~/dev/.go
set PATH $GOPATH/bin $PATH

# Poetry
alias p poetry
alias pdj "poetry run python manage.py"
alias pdja "poetry run django-admin"

# Git
alias g git
alias ga "git add"
alias gc "git commit"
alias gd "git diff"
alias gl "git pull"
alias gm "git merge"
alias gr "git rebase"
alias gb "git branch"
alias gp "git push"
alias gco "git checkout"
alias gst "git status"
alias gg lazygit

# Docker & Kubernetes
alias d docker
alias dc "docker compose"
alias k kubectl
alias dd lazydocker

# Terraform
alias tf terraform

# React Native
alias rn react-native

# Flutter
set PATH ~/Dev/flutter/bin $PATH

# Misc
alias tree "tree -C"
alias hosts "sudo vi /etc/hosts"
alias cat bat

# Set language
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

# Openssl
set -x LDFLAGS '-L/opt/homebrew/opt/openssl@1.1/lib -L/opt/homebrew/opt/readline/lib'

# GPG
set -gx GPG_TTY (tty)

# Google Cloud
source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

# tmux
set -Ux fish_tmux_default_session_name dino

# Starship prompt
starship init fish | source
