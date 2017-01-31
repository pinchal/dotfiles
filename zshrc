export TERM="xterm-256color"

# Antigen rocks
source /usr/share/zsh-antigen/antigen.zsh


antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle arzzen/calc.plugin.zsh
antigen bundle Tarrasch/zsh-command-not-found
antigen bundle hcgraf/zsh-sudo

antigen theme bhilburn/powerlevel9k powerlevel9k

# Configuration du theme powerlevel9k
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭─ "
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="╰─➤ "

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs)
