#!/bin/sh
echo "--- linking..."
mkdir -p ~/.config/fish
ln -sf "`pwd`/config.fish" ~/.config/fish/config.fish
ln -sf "`pwd`/fishfile" ~/.config/fish/fishfile
ln -sf "`pwd`/conf.d/_brew.fish" ~/.config/fish/conf.d/_brew.fish
ln -sf "`pwd`/conf.d/.gitnow" ~/.gitnow
