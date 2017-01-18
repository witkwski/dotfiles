autoload -Uz colors && colors
# TODO: hardcoded antigen path
source /usr/share/zsh-antigen/antigen.zsh
source ~/.bash_profile

# bundle plugins
declare -a plugins=(
  'zsh-users/zsh-syntax-highlighting'
  'tarruda/zsh-autosuggestions'
)

bundle_zsh_plugin() {
  antigen bundle $1
}

for plugin in "${plugins[@]}"
do
  antigen bundle $plugin
done

# set prompts
git_prompt() {
  temp=`git symbolic-ref HEAD 2>/dev/null --short | cut -d / -f 2`
  if [ "$temp" != "" ]; then echo "$temp"; fi
}

setopt prompt_subst

export PROMPT=" %{$fg_no_bold[cyan]%}% > %{$reset_color%}% "
export RPROMPT='%{$fg_no_bold[green]%}% $(git_prompt) %{$reset_color%}%'

# autocompletion menu
setopt menucomplete
zstyle ':completion:*' menu select=1 _complete _ignored _approximate
