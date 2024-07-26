# Aliases
alias vim=nvim
alias openbsd='ssh root@136.244.80.35'
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
