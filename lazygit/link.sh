#!/bin/sh
echo "--- linking..."
mkdir -p ~/.config/lazygit
ln -sf "`pwd`/config.yml" ~/.config/lazygit/config.yml
