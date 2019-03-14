#!/bin/sh

# Config
ln -sf "`pwd`/.eslintrc.js" ~/.eslintrc.js
ln -sf "`pwd`/.flake8" ~/.flake8
ln -sf "`pwd`/.gitconfig" ~/.gitconfig
ln -sf "`pwd`/.hgrc" ~/.hgrc
ln -sf "`pwd`/.prettierrc.yml" ~/.prettierrc.yml
ln -sf "`pwd`/.pylintrc" ~/.pylintrc
ln -sf "`pwd`/.pypirc" ~/.pypirc
ln -sf "`pwd`/.sass-lint.yml" ~/.sass-lint.yml

# Fish
ln -sf "`pwd`/config.fish" ~/.config/fish/config.fish
ln -sf "`pwd`/fishfile" ~/.config/fish/fishfile

# SSH
ln -sf "`pwd`/ssh-config" ~/.ssh/config

# Sublime Text
ln -sf "`pwd`/st3-user" ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

# VSCode
ln -sf "`pwd`/vscode-settings.json" ~/Library/Application\ Support/Code/User/settings.json
