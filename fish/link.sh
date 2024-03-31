#!/bin/sh
echo "--- linking..."
rm -rf ~/.config/fish
ln -sf "$(pwd)/" ~/.config
