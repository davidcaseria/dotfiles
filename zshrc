# ZSH config
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="geoffgarside"
plugins=(git)

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Set projects director
export PROJECTS="$HOME/Projects"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Aliases
alias reload!="source $HOME/.zshrc"
alias zshconfig="$EDITOR ~/.zshrc"

# Config
fpath=(~/.zsh/functions $fpath)
autoload -Uz ~/.zsh/functions/*(:t)

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char
