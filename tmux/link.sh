#!/bin/sh
echo "--- linking..."
mkdir -p ~/.tmux/plugins
[ ! -d "$HOME/.tmux/plugins/tpm" ] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -sf "`pwd`/.tmux.conf" ~/.tmux.conf
