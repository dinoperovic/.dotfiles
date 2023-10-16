#!/bin/sh
echo "--- linking..."
rm -rf ~/.config/zed/settings.json
mkdir -p ~/.config/zed
ln -sf "$(pwd)/settings.json" ~/.config/zed/settings.json
