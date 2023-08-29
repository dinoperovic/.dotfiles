# Base
set PATH /usr/local/sbin ~/.local/bin $PATH
set -x EDITOR nvim
set -x VISUAL nvim

# Directories
alias cd. "cd ~/.dotfiles"
alias cdp "cd ~/Dev/Projects"
alias cdpl "cd ~/Dev/Playground"

# Generic
alias c clear
alias tree "tree -C"
alias cat bat

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

# Poetry
alias p poetry
alias pdj "poetry run python manage.py"
alias pdja "poetry run django-admin"

# Node
set --universal nvm_default_version v18.17.0

# Rust
set PATH ~/.cargo/bin $PATH

# Go
set -x GOPATH ~/.go
set PATH $GOPATH/bin $PATH

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

# Node
set --universal nvm_default_version v18.17.0

# Rust
set PATH ~/.cargo/bin $PATH

# Go
set -x GOPATH ~/dev/.go
set PATH $GOPATH/bin $PATH

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

# Enable VI (hybrid) key bindings
set fish_key_bindings fish_hybrid_key_bindings

# Starship prompt
starship init fish | source
