#!/bin/sh

for module in git gpg fish lvim pip zsh starship alacritty tmux lazygit
do
  echo "Installing $module..."
  sh -c "cd $module && ./install.sh"
done

echo "Done!"
