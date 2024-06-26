#!/bin/sh

echo "### installing homebrew..."
yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d /opt/homebrew/ && eval "$(/opt/homebrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew update

echo "### installing common packages..."
brew install bat fzf ripgrep httpie wget stow keychain zoxide eza git gh
mkdir -p ~/.config

echo "### installing fish..."
brew list fish || brew install fish

rm -rf ~/.config/fish
mkdir -p ~/.config/fish/conf.d

echo "### installing antigen..."
brew install antigen

echo "### installing lazygit..."
brew list lazygit || brew install jesseduffield/lazygit/lazygit

echo "### installing lazydocker..."
brew list lazydocker || brew install jesseduffield/lazydocker/lazydocker

echot "### installing gpg"
brew list gpg || brew install gpg
mkdir -p ~/.gnupg
chmod 700 ~/.gnupg

echo "### installing neovim..."
brew list neovim || brew install neovim
mkdir -p ~/.config/nvim

echo "### installing pyenv..."
brew list pyenv || brew install pyenv

echo "### installing go..."
brew list go || brew install go

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

echo "### installing kitty..."
brew list kitty || brew install --cask kitty
