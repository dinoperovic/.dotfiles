#!/bin/sh
echo "Installing Python dependencies..."
pip install pynvim python-lsp-server[all]

echo "Installing Node.js dependencies..."
npm install -g pyright

# Config
echo "Linking config..."
ln -sf "`pwd`/.flake8" ~/.flake8
ln -sf "`pwd`/.gitconfig" ~/.gitconfig
ln -sf "`pwd`/.hgrc" ~/.hgrc
ln -sf "`pwd`/.pypirc" ~/.pypirc
ln -sf "`pwd`/.zshrc" ~/.zshrc
ln -sf "`pwd`/.hyper.js" ~/.hyper.js

# Nvim
echo "Linking Neovim..."
mkdir -p ~/.config/nvim
rm -rf ~/.config/nvim/lua
ln -sf "`pwd`/nvim/lua" ~/.config/nvim/
ln -sf "`pwd`/nvim/init.lua" ~/.config/nvim/init.lua

# Fish
echo "Linking Fish..."
mkdir -p ~/.config/fish
ln -sf "`pwd`/config.fish" ~/.config/fish/config.fish
ln -sf "`pwd`/fishfile" ~/.config/fish/fishfile

echo "Done!"
