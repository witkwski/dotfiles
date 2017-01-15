#!/bin/sh

# TODOS:
# colors and prompts
# hardcoded file names

# authenticate user
sudo -v

# backup
mkdir ~/old_dots_backup
cp ~/.bashrc       ~/old_dots_backup
cp ~/.bash_profile ~/old_dots_backup
cp ~/.tmux.conf    ~/old_dots_backup
cp ~/.zshrc        ~/old_dots_backup

# packages
sudo apt-get update
sudo apt-get install zsh
sudo apt-get install zsh-antigen
sudo apt-get install tmux
sudo apt-get install colortest

# change shell to zsh
sudo chsh -s /bin/zsh

# symlink dots
./symlink-setup.sh
