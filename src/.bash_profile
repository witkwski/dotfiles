# vars
export BUNDLER_EDITOR=subl
export EDITOR=subl
export HISTFILE=~/.zsh_history
export SAVEHIST=100
export HISTSIZE=1000
export HISTFILESIZE=2000
export HISTCONTROL=ignoredups

# aliases
alias projects='cd ~/Documents/projects; pwd'
alias ...='tree -LC 2'
alias la='ls -a --color=always'

alias rd='rm -rf'

# git
alias g='git'
alias gcb='git checkout -b'

# rails
alias rg='rails g'

# tmux
alias tx='tmux new -s'
alias txls='tmux list-sessions'
alias txat='tmux attach-session -t'

# travelling
alias d='dirs -v'
alias wtf='dpkg -L'

# other
alias colors='colortest-16'
alias scheme='echo $bg_no_bold'

# mem
alias fit='du -sh'
alias lss='ls -la --block-size=M'
alias used='du -chd 1 | sort -h | head -10'

#functions
myip() {
  ifconfig -a | awk '/(cast)/ { print $2 }' | cut -d ':' -f2 | head -1
}

rails_ip() {
  rails s -b $(myip)
}

# load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
