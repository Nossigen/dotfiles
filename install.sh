#!/bin/bash

echo '> Bashrc configuration'
echo '# Vincent Gendron configuration' >> ~/.bashrc
echo 'if [ -f ~/dotfiles/config/bashrc ]; then' >> ~/.bashrc
echo '    . ~/dotfiles/config/bashrc' >> ~/.bashrc
echo 'fi' >> ~/.bashrc

echo '> Git configuration'
if [ -f ~/.gitconfig ]; then
  rm "~/.gitconfig"
fi
cp ~/dotfiles/config/git/config ~/.gitconfig

echo '> Fish configuration'
cp ~/dotfiles/config/fish" ~/.config/fish/config.fish
echo exec fish >> ~/.bash_profile

echo '> Tmux configuration'
cp -rf ~/dotfiles/config/tmux ~/.config/tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
