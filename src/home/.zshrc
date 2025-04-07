# bundle antigen plugins
autoload -Uz colors && colors
autoload -Uz history-beginning-search-menu

ANTIGEN_PATH=$(dirname $(dirname $(readlink ~/.zshrc)))/../lib/antigen/antigen.zsh
source $ANTIGEN_PATH

declare -a plugins=(
  'zsh-users/zsh-syntax-highlighting'
  'tarruda/zsh-autosuggestions'
)

for plugin in "${plugins[@]}"
do
  antigen bundle $plugin
done

antigen apply

# set prompts
git_prompt() {
  temp=`git symbolic-ref HEAD 2>/dev/null --short | cut -d / -f 2`
  if [ "$temp" != "" ]; then echo "$temp"; fi
}

setopt prompt_subst

export PROMPT=" %{$fg_no_bold[cyan]%}% > %{$reset_color%}% "
export RPROMPT='%{$fg_no_bold[green]%}% $(git_prompt)%{$reset_color%}%'

# autocompletion menu
setopt menucomplete
zstyle ':completion:*' menu select=1 _complete _ignored _approximate
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # case insensitive
zstyle ':completion:*' insert-tab pending

# history
setopt EXTENDED_HISTORY # add timestamps
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY # share history between sessions
setopt APPEND_HISTORY
export HISTFILE=~/.zsh_history
export SAVEHIST=100
export HISTSIZE=1000

# colors
export CLICOLOR=1 # enable colors in terminal
export LS_COLORS='fi=0:di=1;37:ln=37:ex=36:or=31:mi=31:bd=0:cd=0' # set colors for filesl

# other
export GPG_TTY=$(tty) # fix pass input
export TOOLCHAINS=swift

# customs and bash stuff
declare -a files=(
  '.bash_profile'
  '.dotfiles_custom'
)

for file in "${files[@]}"
do
  [ -f "$HOME/$file" ] && source "$HOME/$file"
done
