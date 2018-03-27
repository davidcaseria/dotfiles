# Preferred editor for local and remote sessions
export EDITOR='vim'

# Set projects directory
export PROJECTS=$HOME/Projects
export GOPATH=$PROJECTS/go

# ZSH config
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$PROJECTS/dotfiles/zsh/custom
export ZSH_THEME="david"
plugins=(aws docker git)

# User configuration
export PATH=$HOME/.aliases:$HOME/bin:/usr/local/bin:$PATH:$(go env GOPATH)/bin
source $ZSH/oh-my-zsh.sh

# Completion functions
fpath=(~/.zsh/functions $fpath)
autoload -U ~/.zsh/functions/*(:t)
autoload -Uz compinit
compinit

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char
