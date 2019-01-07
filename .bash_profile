# .bash_profile

		# If there is a bashrc, run it
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

# User specific environment and startup programs
PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH

# To save with ctrl-s in vim
#case "$-" in
#	*i*) echo Not interactive ;;
#	*)	stty -ixon 
#		bind -r '\C-s' ;;
#esac
# hey
stty -ixon
bind -r '\C-s'
