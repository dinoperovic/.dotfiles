#!/bin/sh
echo "--- linking..."
rm -rf ~/.config/nvim/lua
rm ~/.config/nvim/init.lua
mkdir -p ~/.config/nvim
ln -sf "$(pwd)/lua" ~/.config/nvim/lua
ln -sf "$(pwd)/init.lua" ~/.config/nvim/init.lua
