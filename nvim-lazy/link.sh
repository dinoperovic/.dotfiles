#!/bin/sh
echo "--- linking..."
rm -rf ~/.config/nvim/lua
rm ~/.config/nvim/init.lua
rm ~/.config/nvim/lazyvim.json
mkdir -p ~/.config/nvim
ln -sf "$(pwd)/lua" ~/.config/nvim/lua
ln -sf "$(pwd)/init.lua" ~/.config/nvim/init.lua
ln -sf "$(pwd)/lazyvim.json" ~/.config/nvim/lazyvim.json
