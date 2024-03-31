# Base
set PATH /usr/local/sbin ~/.local/bin $PATH
set XDG_CONFIG_HOME $HOME/.config
set -x EDITOR nvim
set -x VISUAL nvim

# Directories
abbr cd. "cd ~/.dotfiles"
abbr cdp "cd ~/Dev/projects"
abbr cdpl "cd ~/Dev/playground"

# Generic
abbr c clear
alias tree "tree -C"

# Ripgrep
abbr rgf "rg --files --hidden | rg"

# Vim
alias vi nvim
alias vim nvim

# pyenv
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
status --is-interactive; and . (pyenv init -|psub)

# Python & Django
abbr py python
abbr wp "which python"
abbr dj "python manage.py"
abbr dja django-admin

# Node
set --universal nvm_default_version v21.6.0

# Rust
set PATH ~/.cargo/bin $PATH

# Go
set -x GOPATH ~/.go
set PATH $GOPATH/bin $PATH

# Mojo
set -x MODULAR_HOME ~/.modular
set PATH $MODULAR_HOME/pkg/packages.modular.com_mojo/bin $PATH

# Git
abbr g git
abbr ga "git add"
abbr gb "git branch"
abbr gc "git commit"
abbr gco "git checkout"
abbr gd "git diff"
abbr gf "git fetch"
abbr gl "git pull"
abbr gm "git merge"
abbr gp "git push"
abbr gr "git rebase"
abbr gst "git status"
abbr gg lazygit

# Docker & Kubernetes
abbr d docker
abbr dc "docker compose"
abbr k kubectl
abbr dd lazydocker

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
