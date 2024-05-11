#!/bin/sh

echo "### updating apt..."
sudo apt update

echo "### installing base packages..."
sudo apt install -y bat fzf ripgrep httpie wget
mkdir -p ~/.config

echo "### installing fish..."
sudo apt install -y fish
fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
rm -rf ~/.config/fish
mkdir -p ~/.config/fish

echo "### installing lazygit..."
sudo apt install -y install jesseduffield/lazygit/lazygit

echot "### installing gpg"
sudo apt install -y install gpg
rm -rf ~/.gnupg
mkdir ~/.gnupg
chmod 700 ~/.gnupg

echo "### installing neovim..."
sudo apt install -y install neovim
mkdir -p ~/.config/nvim

echo "### installing starship..."
sudo apt install -y install starship

echo "### installing tmux..."
sudo apt install -y install tmux
[ ! -d "$HOME/.tmux/plugins/tpm" ] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
