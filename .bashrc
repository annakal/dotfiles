# .bashrc

# --- Source global definitions ---
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# 

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# --- User specific aliases and functions --- 

# This will keep you sane when you're about to smash the keyboard again.
alias gawd="fortune"
alias tmux="tmux -2"

# --- For saving with ctrl+s in vim, so that u wont stop typingbufferstuff (kolla upp vad)
bind -r '\C-s'
stty -ixon


# Alias definitions
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Python virtualenv wrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.6
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
