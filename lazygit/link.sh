#!/bin/sh
echo "--- linking..."
mkdir -p ~/.config/lazygit
ln -sf "$(pwd)/config.yml" ~/Library/lazygit/config.yml
