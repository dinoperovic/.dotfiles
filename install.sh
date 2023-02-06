#!/bin/sh

for module in git gpg fish nvim pip zsh
do
  echo "Installing $module..."
  sh -c "cd $module && ./install.sh"
done

echo "Done!"
