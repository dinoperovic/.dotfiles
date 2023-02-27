#!/bin/sh
echo "--- linking..."
mkdir -p ~/.gnupg
chmod 700 ~/.gnupg
ln -sf "`pwd`/gpg-agent.conf" ~/.gnupg/gpg-agent.conf
