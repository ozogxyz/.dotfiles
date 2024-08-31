# User configuration
# Path here?
export PATH=$PATH:~/.local/scripts/:$HOME/go/bin:$HOME/personal/nand2tetris/tools:$HOME/.cargo/bin

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='mg'
else
  export EDITOR='mg'
fi

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-22-macports.jdk/Contents/Home

# Locale
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

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

# Aliases
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

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/motorbreath/.opam/opam-init/init.zsh' ]] || source '/Users/motorbreath/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

# Herd injected NVM configuration
export NVM_DIR="/Users/motorbreath/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# Herd injected PHP binary.
export PATH="/Users/motorbreath/Library/Application Support/Herd/bin/":$PATH

# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/motorbreath/Library/Application Support/Herd/config/php/83/"

# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/motorbreath/Library/Application Support/Herd/config/php/84/"
