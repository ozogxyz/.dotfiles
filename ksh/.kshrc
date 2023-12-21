# Ctrl-P is just easier, sorry Vi
set -o emacs

# Avoid certain file types in completion
FIGNORE='@(*.o|~*)'

# History
HISTFILE="$HOME/.ksh_history"
HISTSIZE=10000

# Laziness
alias l='ls -aF'
alias ll='ls -laF'
alias ..="cd .."
alias t="tree -L 2"
alias r="fc -s"
alias kr="cd ~/repos/c/kr/"
alias cfg="vim ~/.kshrc"
alias ss=". ~/.kshrc"

# Prompt
function _cd {
  typeset -n dir=HOME

  "cd" "$@"

  if [[ $PWD = $HOME* && $HOME != / ]]; then
    _pwd=\~${PWD#$HOME}
    return
  fi
  _pwd="$PWD"
}
alias cd=_cd
_cd .

PS1='$_pwd [!]\$ '

function _fzfhisto { 
   RES=$(fzf --tac --no-sort -e < $HISTFILE) 
   test -n "$RES" || exit 0 
   eval "$RES" 
} 
           
bind -m ^R=_fzfhisto^J
