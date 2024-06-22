# Path
export PATH=$PATH:~/.local/scripts/
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-22-macports.jdk/Contents/Home

export ZDOTDIR="$HOME"
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Prompt
PS1="%1d $ "
RPS1="%t-%D "

# FZF
source /opt/local/share/fzf/shell/key-bindings.zsh
source /opt/local/share/fzf/shell/completion.zsh
bindkey -s ^f "tmux-sessionizer\n"
export FZF_DEFAULT_OPTS="--height=30%  --info=inline"

# Options
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
setopt AUTO_CD
setopt NO_CASE_GLOB
setopt ALWAYS_TO_END

# Google Cloud
export CLOUDSDK_PYTHON=/opt/local/bin/python3

# Auto-completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

# Aliases
alias vim=nvim
alias vcfg='nvim ~/.dotfiles/nvim/.config/nvim/init.lua'
alias cfg='vim $ZDOTDIR/.zshrc'
alias h='cat $HISTFILE'
alias ll='ls -lA'
alias myip="curl http://ipecho.net/plain; echo"
alias ss='source $ZDOTDIR/.zshrc'
alias tt='tree -LF 2 --dirsfirst -I logs'
alias t='tree -aC -I '.git' --dirsfirst "$@" | less -FRNX;'
alias trail='<<<${(F)path}'
alias gcurl='curl -H "Authorization: Bearer $(gcloud auth print-access-token --impersonate-service-account=${SERVICE_ACCOUNT_EMAIL})" -H "Content-Type: application/json"'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/motorbreath/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/motorbreath/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/motorbreath/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/motorbreath/google-cloud-sdk/completion.zsh.inc'; fi
