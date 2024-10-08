# Base
set PATH /usr/local/sbin ~/.local/bin $PATH
set -x XDG_CONFIG_HOME $HOME/.config
set -x EDITOR nvim
set -x VISUAL nvim

# Directories
abbr cd. "cd ~/.dotfiles"
abbr cdp "cd ~/Dev/projects"
abbr cdpl "cd ~/Dev/playground"

# eza
set -Ux EZA_STANDARD_OPTIONS --long --all --binary --icons --group --group-directories-first

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

# Rust
set PATH ~/.cargo/bin $PATH

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
abbr gre "git restore"
abbr gst "git status"
abbr gg lazygit

# Docker
abbr d docker
abbr dc "docker compose"
abbr dd lazydocker

# Openssl
set -x LDFLAGS '-L/opt/homebrew/opt/openssl@1.1/lib -L/opt/homebrew/opt/readline/lib'

# GPG
set -gx GPG_TTY (tty)

# Set language
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

# Google Cloud
test -d "$(brew --prefix)/share/google-cloud-sdk" && source "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"

# tmux
set -Ux fish_tmux_autostart false
set -Ux fish_tmux_default_session_name dino

# Enable VI (hybrid) key bindings
set fish_key_bindings fish_hybrid_key_bindings

# Add SSH key
eval "$(keychain --eval --quick --quiet --noask dino)"

# Starship prompt
starship init fish | source

# Set theme
fish_config theme choose "Rosé Pine Moon"
