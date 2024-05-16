#!/bin/sh

echo "### installing homebrew..."
yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d /opt/homebrew/ && eval $(/opt/homebrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
brew update

echo "### installing common packages..."
brew install bat fzf ripgrep httpie wget stow
mkdir -p ~/.config

echo "### installing fish..."
brew list fish || brew install fish
brew list fisher || brew install fisher
rm -rf ~/.config/fish
mkdir -p ~/.config/fish/conf.d

echo "### installing antigen..."
brew install antigen

echo "### installing lazygit..."
brew list lazygit || brew install jesseduffield/lazygit/lazygit

echot "### installing gpg"
brew list gpg || brew install gpg
mkdir -p ~/.gnupg
chmod 700 ~/.gnupg

echo "### installing neovim..."
brew list neovim || brew install neovim
mkdir -p ~/.config/nvim

echo "### installing pyenv..."
brew list pyenv || brew install pyenv

echo "### installing starship..."
brew list starship || brew install starship

echo "### installing tmux..."
brew list tmux || brew install tmux
[ ! -d "$HOME/.tmux/plugins/tpm" ] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "### installing gcloud..."
brew list google-cloud-sdk || brew install --cask google-cloud-sdk

echo "### installing zed..."
brew list zed || brew install --cask zed
rm -rf ~/.config/zed
mkdir ~/.config/zed
