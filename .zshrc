# Plugins
source $HOMEBREW_PREFIX/share/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

antigen apply

# Base
export PATH=/usr/local/sbin:~/.local/bin:$PATH
export XDG_CONFIG_HOME=$HOME/.config
export EDITOR=nvim
export VISUAL=nvim

# Directories
alias cd.="cd ~/.dotfiles"
alias cdp="cd ~/Dev/projects"
alias cdpl="cd ~/Dev/playground"

# Generic
alias c="clear"
alias tree="tree -C"

# Ripgrep
alias rgf="rg --files --hidden | rg"

# Vim
alias vi="nvim"
alias vim="nvim"

# Git
alias gg="lazygit"

# Python
alias py="python"
alias wp="which python"
alias dj="python manage.py"

# Docker
alias d="docker"
alias dc="docker compose"
alias dd="lazydocker"

# GPG
export GPG_TTY=$(tty)

# Openssl
export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib -L/opt/homebrew/opt/readline/lib"

eval "$(fzf --zsh)"
eval "$(starship init zsh)"
