PATH=/opt/local/bin:/opt/local/sbin:/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
MANPATH=/opt/local/share/man:$MANPATH

if [ -f $HOME/.kshrc -a -r $HOME/.kshrc ]; then
	ENV=$HOME/.kshrc
	export ENV
fi

. "$HOME/.cargo/env"
