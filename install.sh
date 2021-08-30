#!/bin/bash

# Get current of the script directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo '> Bashrc configuration'
echo '# Vincent Gendron configuration' >> ~/.bashrc
echo 'if [ -f ~/dotfiles/config/bashrc ]; then' >> ~/.bashrc
echo '    . ~/dotfiles/config/bashrc' >> ~/.bashrc
echo 'fi' >> ~/.bashrc

echo '> Git configuration'
rm -fi "~/.gitconfig"
cp -f "$DIR/config/git/config" ~/.gitconfig

echo '> Fish configuration'
cp -f "$DIR/config/fish" ~/.config/fish/config.fish
echo exec fish >> ~/.bash_profile
