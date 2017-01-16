#!/bin/bash

# TODOS:
# colors and prompts
# hardcoded file names

print_header() {
  printf '%*s\n' $(tput cols) '' | tr ' ' _
  printf "\n$1\n"
  printf '%*s\n' $(tput cols) '' | tr ' ' _
}

do_install() {
  sudo apt-get install $1
}

declare -a packages=('zsh' 'zsh-antigen' 'tmux' 'colortest')

# authenticate user
sudo -v

# backup
print_header 'cloning existed dots into ~/old_dots_backup'
mkdir ~/old_dots_backup
cp ~/.bashrc       ~/old_dots_backup
cp ~/.bash_profile ~/old_dots_backup
cp ~/.tmux.conf    ~/old_dots_backup
cp ~/.zshrc        ~/old_dots_backup

# packages
print_header 'installing packages'
sudo apt-get update

for package in "${packages[@]}"
do
  do_install $package
done

# change shell to zsh
print_header 'changing shell'
sudo chsh -s /bin/zsh

# symlink dots
print_header 'building symlinks'
./symlink-setup.sh
