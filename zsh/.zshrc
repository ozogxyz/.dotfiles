######################### ZSH OPTIONS ############################
export ZDOTDIR="$HOME"

# History 
export HISTFILE="$ZDOTDIR/.tmp/.zsh_history"
export HISTORY_IGNORE="(ll*|ls*|bat*|cat*|exit|aws*|*SECRET*|h|exit)"
export HISTSIZE=10000
export SAVEHIST=1000
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_BEEP
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Others
setopt AUTO_CD
setopt NO_CASE_GLOB
setopt ALWAYS_TO_END

####################### AUTO COMPLETION #######################
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

####################### ALIASES ##############################
alias cfg='vim $ZDOTDIR/.zshrc'
alias h='cat $HISTFILE'
#alias ll='ls -AFhLlno'
alias ll='ls -lA'
alias myip="curl http://ipecho.net/plain; echo"
alias ss='source $ZDOTDIR/.zshrc'
alias tt='tree -LF 2 --dirsfirst -I logs'
#alias t='tree -LF 2 --dirsfirst --gitignore -I logs'
alias t='tree -aC -I '.git' --dirsfirst "$@" | less -FRNX;'
alias trail='<<<${(F)path}'

###################### FZF ################################
source /opt/local/share/fzf/shell/key-bindings.zsh
source /opt/local/share/fzf/shell/completion.zsh
bindkey -s ^f "tmux-sessionizer\n"
export FZF_DEFAULT_OPTS="--height=30%  --info=inline"

#################### PROMPT ################################
#precmd_vcs_info() { vcs_info }
#precmd_functions+=( precmd_vcs_info )
#
## Autoload zsh add-zsh-hook and vcs_info functions (-U autoload w/o substition, -z use zsh style)
#autoload -Uz add-zsh-hook vcs_info
#
## Enable substitution in the prompt.
#setopt prompt_subst
#
## Run vcs_info just before a prompt is displayed (precmd)
#add-zsh-hook precmd vcs_info
#
## add ${vcs_info_msg_0} to the prompt e.g. here we add the Git information in red
#PROMPT='%1~ %F{red}${vcs_info_msg_0_}%f %# '
#
## Enable checking for (un)staged changes, enabling use of %u and %c
#zstyle ':vcs_info:*' check-for-changes true
#
### Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
#zstyle ':vcs_info:*' unstagedstr ' *'
#zstyle ':vcs_info:*' stagedstr ' +'
#
### Set the format of the Git information for vcs_info
#zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
#zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

################ PATH #######################
export PATH=/opt/local/bin:/opt/local/sbin:/opt/homebrew/bin/:/opt/homebrew/sbin:~/.local/scripts:$PATH

# Below does not work for tmux-sessionizer script for some reason
#typeset -U path
#path=(
#    "/opt/local/bin"
#    "/opt/local/sbin"
#    "/opt/homebrew/bin"
#    "/opt/homebrew/sbin"
#    "~/.local/bin"
#    "~/.local/scripts"
#    $path
#)


