# ZSH config
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="ys"
plugins=(aws brew git git-flow httpie knife node npm postgres redis-cli sbt scala spring sudo supervisor terraform web-search)

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Set projects directory
export PROJECTS="$HOME/Projects"

# Aliases
alias reload!="source $HOME/.zshrc"
alias zshconfig="$EDITOR ~/.zshrc"

# Config
fpath=(~/.zsh/functions $fpath)
autoload -U ~/.zsh/functions/*(:t)

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char
