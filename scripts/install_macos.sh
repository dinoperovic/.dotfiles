#!/bin/sh

echo "### updating brew..."
brew update

echo "### installing base packages..."
brew install bat fzf ripgrep httpie wget
mkdir -p ~/.config

echo "### installing fish..."
brew install fish
brew install fisher
rm -rf ~/.config/fish
mkdir -p ~/.config/fish/conf.d

echo "### installing gcloud..."
brew install --cask google-cloud-sdk

echo "### installing lazygit..."
brew install jesseduffield/lazygit/lazygit

echot "### installing gpg"
brew install gpg
rm -rf ~/.gnupg
mkdir ~/.gnupg
chmod 700 ~/.gnupg

echo "### installing neovim..."
brew install neovim
mkdir -p ~/.config/nvim

echo "### installing starship..."
brew install starship

echo "### installing tmux..."
brew install tmux
[ ! -d "$HOME/.tmux/plugins/tpm" ] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "### installing zed..."
brew install --cask zed
