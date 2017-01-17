#!/bin/bash

backup_folder='old_dots_backup'

declare -a files=(
  '.bashrc '
  '.bash_profile'
  '.tmux.conf'
  '.zshrc '
)

backup_file() {
  if [ -f "~/$1" ]
  then
    cp "$HOME/$1" "$HOME/$backup_folder"
  fi
}

build_symlink() {
 ln -fs "$(pwd)/src/$1" "$HOME"
}

# backup and symlinking
if [ ! -d "$HOME/$backup_folder" ]; then
  mkdir ~/old_dots_backup
fi

for file in "${files[@]}"
do
  backup_file $file
  build_symlink $file
done
