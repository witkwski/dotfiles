# vars
export BUNDLER_EDITOR=subl
export EDITOR=subl
export HISTSIZE=1000
export HISTFILESIZE=2000
export HISTCONTROL=ignoredups

# aliases
alias projects='cd ~/Documents/projects; pwd'
alias ...='tree -LC 2'
alias la='ls -a --color=always'

alias rd='rm -rf'

alias g='git'
alias gcb='git checkout -b'

alias rg='rails g'

alias tx='tmux new -s'
alias txls='tmux list-sessions'
alias txat='tmux attach-session -t'

alias d='dirs -v'
alias wtf='dpkg -L'
alias f='du -sh'

alias colors='colortest-16'
alias scheme='echo $bg_no_bold'

#functions
myip() {
  ip route get 8.8.8.8 | awk '{print $NF; exit}'
}

rails_ip() {
  rails s -b $(myip)
}

# load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
