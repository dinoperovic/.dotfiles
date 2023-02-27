#!/bin/sh
echo "--- linking..."
mkdir -p ~/.config/lvim
ln -sf "`pwd`/config.lua" ~/.config/lvim/config.lua
