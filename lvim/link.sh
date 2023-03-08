#!/bin/sh
echo "--- linking..."
mkdir -p ~/.config/lvim/lua
ln -sf "`pwd`/lua/user" ~/.config/lvim/lua/user
ln -sf "`pwd`/config.lua" ~/.config/lvim/config.lua
