#!/bin/sh

mkdir -p ~/.gnupg
ln -sf "`pwd`/gpg-agent.conf" ~/.gnupg/gpg-agent.conf
