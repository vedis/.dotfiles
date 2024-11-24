# aliases
alias l="ls -l --color"
alias ll="ls -la --color"

export PATH="$PATH:/opt/nvim-linux64/bin"
alias nv="nvim"

# git
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats 'on %b'

setopt PROMPT_SUBST

# prompt theme
# taken from https://wiki.archlinux.org/title/Zsh
NEWLINE=$'\n> '
PROMPT='%F{2}%n%f@%F{5}%m%f %F{4}%B%~%b%f %# ${NEWLINE}'
RPROMPT='$vcs_info_msg_0_ [%F{3}%?%f]'


# helpers
#
# case insensitive autocomplete
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit


# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# golang
export PATH=$PATH:/usr/local/go/bin



