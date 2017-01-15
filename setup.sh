#!/bin/sh

# TODOS:
# colors and prompts
# hardcoded file names

# backup
mkdir ~/old_dots_backup
cp ~/.bashrc       ~/old_dots_backup
cp ~/.bash_profile ~/old_dots_backup
cp ~/.tmux.conf    ~/old_dots_backup
cp ~/.zshrc        ~/old_dots_backup

sudo -v

# ZSH
sudo apt-get update
sudo apt-get install zsh
sudo apt-get install zsh-antigen
chsh -s /bin/zsh

./symlink-setup.sh
