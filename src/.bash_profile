# vars
export BUNDLER_EDITOR=subl
export EDITOR=subl
export HISTSIZE=1000
export HISTFILESIZE=2000

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

# load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
