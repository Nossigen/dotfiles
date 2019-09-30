#!/bin/bash

echo '# Vincent Gendron configuration' >> ~/.bashrc
echo 'if [ -f /home/vincent.gendron/dotfiles/config/bashrc ]; then' >> ~/.bashrc
echo '    . /home/vincent.gendron/dotfiles/config/bashrc' >> ~/.bashrc
echo 'fi' >> ~/.bashrc
