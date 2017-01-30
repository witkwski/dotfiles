<p align="center">
  <img src="https://github.com/witkwski/dotfiles/raw/master/images/ico.png" alt="tools">
</p>

<h2 align="center">
  <b>Dotfiles</b>
</h2>

<p align="center">
  my minimalistic environment setup.
</p>


### includes:
- zsh
- zsh-antigen
- zsh-syntax-highlighting
- zsh-autosuggestions
- tmux
- tree


### features:
- minimalistic prompt
- current branch label set to right prompt
- autocomplete navigation
- tmux without left and right statuses
- tmux prefix set to `Ctrl+Space`


### installation:

it backups your old dotfiles into `~/.old_dots_backup` folder

```sh
$ git clone --recursive https://github.com/witkwski/dotfiles.git
$ cd dotfiles
$ ./setup

```