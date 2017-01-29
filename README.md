# dotfiles

my minimalistic dotfiles. without OSX support yet.


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

### TODOS:
- get rid of `apt` package manager
- make installation prettier and more interactive
- add my color scheme
