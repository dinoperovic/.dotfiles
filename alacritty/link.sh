#!/bin/sh
echo "--- linking..."
mkdir -p ~/.config/alacritty
ln -sf "`pwd`/alacritty.yml" ~/.config/alacritty/alacritty.yml
