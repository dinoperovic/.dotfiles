#!/bin/sh

echo "################################################################################"
echo "### Installing homebrew..."
echo "################################################################################"

yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d /opt/homebrew/ && eval "$(/opt/homebrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew update

echo "### installing common packages..."
brew install bat fzf ripgrep httpie wget stow keychain zoxide git gh
mkdir -p ~/.config

echot "### installing gpg"
brew list gpg || brew install gpg
mkdir -p ~/.gnupg
chmod 700 ~/.gnupg

echo "### installing fish..."
brew list fish || brew install fish
rm -rf ~/.config/fish
mkdir -p ~/.config/fish/conf.d

echo "### installing starship..."
brew list starship || brew install starship

echo "### installing tmux..."
brew list tmux || brew install tmux
[ ! -d "$HOME/.tmux/plugins/tpm" ] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "################################################################################"
echo "### Installing terminal apps..."
echo "################################################################################"

echo "### installing lazygit..."
brew list lazygit || brew install jesseduffield/lazygit/lazygit

echo "### installing lazydocker..."
brew list lazydocker || brew install jesseduffield/lazydocker/lazydocker

echo "### installing neovim..."
brew list neovim || brew install neovim
mkdir -p ~/.config/nvim

echo "################################################################################"
echo "### Installing languages..."
echo "################################################################################"

echo "### installing pyenv..."
brew list pyenv || brew install pyenv

echo "### installing deno..."
brew list deno || brew install deno

echo "### installing go..."
brew list go || brew install go

echo "################################################################################"
echo "### Installing casks..."
echo "################################################################################"

echo "### installing kitty..."
brew list kitty || brew install --cask kitty

echo "### installing gcloud..."
brew list google-cloud-sdk || brew install --cask google-cloud-sdk
