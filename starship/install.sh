#!/bin/sh
curl -sS https://starship.rs/install.sh | sh
ln -sf "`pwd`/starship.toml" ~/.config/starship.toml
