## Path to Installations ##
export ZSH="/Users/milind/.oh-my-zsh"
# export STARSHIP_CONFIG="~/.config/starship.toml"

## Theme ## Last line is new theme, not using zsh ($eval starship init zsh)
# ZSH_THEME="common"
# ZSH_THEME="spaceship"

## Disable auto-setting terminal title. ##
  DISABLE_AUTO_TITLE="true"
  function precmd () {
  window_title="\033]0;${PWD##*/}\007"
  echo -ne "$window_title"

  function title(){
  TITLE="\[\e]2;$*\a\]"
  echo -e ${TITLE}
}
}


## Plugins ##
plugins=(git zsh-syntax-highlighting)


## Ruby ##
# eval "$(rbenv init -)"
# export PATH="/usr/local/opt/ruby/bin:$PATH"
# export PATH="$PATH:$HOME/.rvm/bin"

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 


## Flutter Path ##
export PATH="$PATH:/Users/milind/flutter/bin"

## Aliases ##
alias ls='/usr/local/bin/exa'
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'
alias rune-update='sh $HOME/GitHub/hotg-ai/install_rune.sh'

source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"



unsetopt AUTO_CD # Stop from Automatically Changing into directory without cd command
PATH=$(pyenv root)/shims:$PATH
PATH=/Users/milind/.local/bin:$PATH
