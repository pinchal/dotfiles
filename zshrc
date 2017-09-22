export TERM="xterm-256color"

# Antigen rocks
source /usr/share/zsh-antigen/antigen.zsh


antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle arzzen/calc.plugin.zsh
antigen bundle Tarrasch/zsh-command-not-found
antigen bundle hcgraf/zsh-sudo

# nécessaire pour spaceship
antigen use oh-my-zsh

# theme super cool, custom : https://github.com/denysdovhan/spaceship-zsh-theme
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
SPACESHIP_BATTERY_SHOW=false

antigen apply

eval "$(thefuck --alias)"
