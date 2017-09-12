<p align="center">
  <img src="http://i.imgur.com/JRNn79m.png" alt="tools">
</p>

<h2 align="center">
  <b>anton witkowski dotfiles</b>
</h2>

<p align="center">
  my minimalistic environment setup.
</p>

this is my system tools and preferences I use on everyday basis. I dont like oh-my-zsh and I prefer much more minimalistical environment. you can see more dotfiles [here](https://dotfiles.github.io)

### includes:
- zsh
- zsh-antigen
- zsh-syntax-highlighting
- zsh-autosuggestions
- tmux
- tree


![screenshot](http://i.imgur.com/6VL5IlK.jpg)


### features:
- minimalistic prompt
- current branch label set to the right prompt
- autocomplete navigation
- tmux without left and right statuses
- tmux prefix set to `Ctrl+Space`
- loads `~/.customs` file if it exists


### installation:

it backups your old dotfiles into `~/.old_dots_backup` folder

```sh
$ git clone --recursive https://github.com/witkwski/dotfiles.git
$ cd dotfiles
$ ./setup

```
