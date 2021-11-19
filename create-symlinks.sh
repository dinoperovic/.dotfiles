#!/bin/sh

# Config
ln -sf "`pwd`/.flake8" ~/.flake8
ln -sf "`pwd`/.gitconfig" ~/.gitconfig
ln -sf "`pwd`/.hgrc" ~/.hgrc
ln -sf "`pwd`/.pypirc" ~/.pypirc
ln -sf "`pwd`/.zshrc" ~/.zshrc
ln -sf "`pwd`/.hyper.js" ~/.hyper.js

# Starship
ln -sf "`pwd`/starship.toml" ~/.config/starship.toml

# Fish
ln -sf "`pwd`/config.fish" ~/.config/fish/config.fish
ln -sf "`pwd`/fishfile" ~/.config/fish/fishfile
