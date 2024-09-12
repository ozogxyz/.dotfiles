# User configuration
# Locale
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Path here?
export PATH=$PATH:~/.local/scripts/:$HOME/go/bin:$HOME/personal/nand2tetris/tools:$HOME/.cargo/bin

# Java stuff
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-21-macports.jdk/Contents/Home

# Preferred editor for local and remote sessions
export ALTERNATE_EDITOR=mg
if [[ -n $SSH_CONNECTION ]]; then
	export VISUAL=ALTERNATE_EDITOR
	export EDITOR=ALTERNATE_EDITOR
else
	export EDITOR="emacsclient -t"	# $EDITOR opens in terminal
	export VISUAL="emacsclient -r"	# $VISUAL opens in GUI mode
fi

# FZF
source /opt/local/share/fzf/shell/key-bindings.zsh
source /opt/local/share/fzf/shell/completion.zsh
bindkey -s ^f "tmux-sessionizer\n"
export FZF_DEFAULT_OPTS="--height=30%  --info=inline"

# Options
export HISTORY_IGNORE="(ll*|ls*|bat*|cat*|exit|aws*|*SECRET*|h|exit)"
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Aliases
alias ev='emacsclient -r'
alias em='emacsclient -t'
alias cfg='$EDITOR $HOME/.zshrc'
alias h='cat $HISTFILE'
alias ll='ls -lAG'
alias l='ls -lG'
alias myip="curl http://ipecho.net/plain; echo"
alias ss='source $HOME/.zshrc'
alias tt='tree -LF 2 --dirsfirst -I logs'
alias t='tree -aC -I '.git' --dirsfirst "$@" | less -FRNX;'
alias trail='<<<${(F)path}'

