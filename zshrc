# Path to my oh-my-zsh installation.
export ZSH=~/dotfiles/oh-my-zsh

# My theme
ZSH_THEME="gnzh"

# When I want, if I want
DISABLE_AUTO_UPDATE="true"

# Please correct me
ENABLE_CORRECTION="true"

# zsh plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh
eval "$(thefuck --alias)"

