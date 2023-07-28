#!/bin/sh
echo "--- linking..."
rm -rf ~/.config/kitty/lib
rm -rf ~/.config/kitty/kitty.conf
mkdir -p ~/.config/kitty
ln -sf "$(pwd)/lib" ~/.config/kitty/lib
ln -sf "$(pwd)/kitty.conf" ~/.config/kitty/kitty.conf
