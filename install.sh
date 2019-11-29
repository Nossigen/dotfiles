#!/bin/bash

# Get current of the script directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo '> Bashrc configuration'
echo '# Vincent Gendron configuration' >> ~/.bashrc
echo 'if [ -f /home/vincent.gendron/dotfiles/config/bashrc ]; then' >> ~/.bashrc
echo '    . /home/vincent.gendron/dotfiles/config/bashrc' >> ~/.bashrc
echo 'fi' >> ~/.bashrc

echo '> Git configuration'
rm -fi "~/.gitconfig"
cp -f "$DIR/config/git/config" ~/.gitconfig

echo '> Fish configuration'
echo exec fish >> ~/.bash_profile