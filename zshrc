# Preferred editor for local and remote sessions
export EDITOR='vim'

# Set projects directory
export PROJECTS="$HOME/Projects"

# ZSH config
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$PROJECTS/dotfiles/zsh/custom
export ZSH_THEME="david"
plugins=(aws docker git httpie node npm pip postgres python redis-cli sbt scala sudo)

# User configuration
export PATH=$HOME/.aliases:$HOME/bin:/usr/local/bin:$PATH
command -v docker-machine >/dev/null 2>&1 && { eval "$(docker-machine env boot2docker)" }
command -v rbenv >/dev/null 2>&1 && { eval "$(rbenv init -)" }
command -v yarn >/dev/null 2>&1 && { export PATH="$PATH:`yarn global bin`" }
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
source $ZSH/oh-my-zsh.sh
if [ -f $PROJECTS/aws-accounts/iam/utils.sh ]; then source $PROJECTS/aws-accounts/iam/utils.sh; fi

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
