# vars
export BUNDLER_EDITOR=subl
export EDITOR=subl
export HISTSIZE=1000
export HISTFILESIZE=2000
export HISTCONTROL=ignoredups

# aliases
alias colors='colortest-16'
alias rd='rm -rf'
alias d='dirs -v'
alias la='ls -a --color=always'
alias g='git'
alias projects='cd ~/Documents/projects; pwd'
alias wtf='dpkg -L'
alias f='du -sh'
alias scheme='echo $bg_no_bold'
alias rg='rails g'
alias ...='tree -LC 2'

#functions
myip() {
  ip route get 8.8.8.8 | awk '{print $NF; exit}'
}

rails_ip() {
  rails s -b $(myip)
}

# load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
