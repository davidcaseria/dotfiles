# Machine name
function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || echo $HOST
}

# Directory info
local current_dir='${PWD/#$HOME/~}'

# Git info
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%} ("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Prompt format: \n # USER@MACHINE: DIRECTORY (git:BRANCH STATE)\n $ 
PROMPT="
%{$terminfo[bold]$fg[blue]%}%{$reset_color%}\
%{$fg[cyan]%}%n\
%{$fg[white]%}@\
%{$reset_color%}$(box_name)\
%{$fg[white]%}: \
%{$fg[green]%}${current_dir}%{$reset_color%}\
${hg_info}\
${git_info} \
%{$reset_color%}
%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"
