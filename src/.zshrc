source /usr/share/zsh-antigen/antigen.zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle tarruda/zsh-autosuggestions

autoload -Uz colors && colors
source ~/.bash_profile

# set prompt
export PROMPT=" %{$fg_no_bold[cyan]%}% > %{$reset_color%}% "

# set git branch prompt
git_prompt() {
  temp=`git symbolic-ref HEAD 2>/dev/null --short | cut -d / -f 2`
  if [ "$temp" != "" ]; then echo "$temp"; fi
}
setopt prompt_subst
export RPROMPT='%{$fg_no_bold[green]%}% $(git_prompt) %{$reset_color%}%'

# autocomletion menu
setopt menucomplete
zstyle ':completion:*' menu select=1 _complete _ignored _approximate
