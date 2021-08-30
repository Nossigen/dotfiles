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
cp "~/config/git/config" ~/.gitconfig

echo '> Fish configuration'
cp "$DIR/config/fish" ~/.config/fish/config.fish
echo exec fish >> ~/.bash_profile

echo '> Tmux configuration'
cp -rf ~/config/tmux ~/.config/tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
