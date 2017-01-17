#!/bin/bash

# TODO: get rid of hardcoded filenames

# backup
mkdir ~/old_dots_backup
cp ~/.bashrc       ~/old_dots_backup
cp ~/.bash_profile ~/old_dots_backup
cp ~/.tmux.conf    ~/old_dots_backup
cp ~/.zshrc        ~/old_dots_backup

# symlinks
ln -fs "$(pwd)/.bash_profile" ~
ln -fs "$(pwd)/.bashrc" ~
ln -fs "$(pwd)/.tmux.conf" ~
ln -fs "$(pwd)/.zshrc" ~
