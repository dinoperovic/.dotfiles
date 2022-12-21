#!/bin/sh

# Config
echo "Linking config..."
ln -sf "`pwd`/.flake8" ~/.flake8
ln -sf "`pwd`/.gitconfig" ~/.gitconfig
ln -sf "`pwd`/.hgrc" ~/.hgrc
ln -sf "`pwd`/.pypirc" ~/.pypirc
ln -sf "`pwd`/.zshrc" ~/.zshrc
ln -sf "`pwd`/.hyper.js" ~/.hyper.js

# Fish
echo "Linking Fish..."
mkdir -p ~/.config/fish
ln -sf "`pwd`/fish/config.fish" ~/.config/fish/config.fish
ln -sf "`pwd`/fish/fishfile" ~/.config/fish/fishfile
ln -sf "`pwd`/fish/conf.d/_brew.fish" ~/.config/fish/conf.d/_brew.fish

# Nvim
echo "Linking Nvim..."
mkdir -p ~/.config/nvim
ln -sf "`pwd`/nvim/init.lua" ~/.config/nvim/init.lua

# Gnu GPG
echo "Linking GPG..."
mkdir -p ~/.gnupg
ln -sf "`pwd`/.gnupg/gpg-agent.conf" ~/.gnupg/gpg-agent.conf

echo "Done!"
