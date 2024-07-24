# Path
export PATH=$PATH:~/.local/scripts/:$HOME/go/bin

# Herd injected NVM configuration
export NVM_DIR="/Users/motorbreath/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/motorbreath/Library/Application Support/Herd/config/php/83/"

# Herd injected PHP binary.
export PATH="/Users/motorbreath/Library/Application Support/Herd/bin/":$PATH

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-22-macports.jdk/Contents/Home

# Config
export ZDOTDIR="$HOME"
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Prompt
PS1="%1d $ "

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
setopt NO_CASE_GLOB
setopt ALWAYS_TO_END

# Auto-completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

# Aliases
alias vim=nvim
alias vcfg='nvim ~/.dotfiles/nvim/.config/nvim/init.lua'
alias cfg='vim $ZDOTDIR/.zshrc'
alias h='cat $HISTFILE'
alias ll='ls -lAG'
alias l='ls -lG'
alias myip="curl http://ipecho.net/plain; echo"
alias ss='source $ZDOTDIR/.zshrc'
alias tt='tree -LF 2 --dirsfirst -I logs'
alias t='tree -aC -I '.git' --dirsfirst "$@" | less -FRNX;'
alias trail='<<<${(F)path}'
