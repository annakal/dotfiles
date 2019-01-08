# .bashrc

# --- Source global definitions ---
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# 

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Alias definitions
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Python virtualenv wrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.6
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# Coloured man-pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Bash history
HISTCONTROL=ignoredups # Don't put duplicate lines in the history. See bash(1) for more options
HISTCONTROL=ignoreboth # ... and ignore same sucessive entries.
HISTCONTROL=ignorespace # commands with leading space do not get added to history

# Prompt
export PS1="[\A]\u@\h:\w\\$ \[$(tput sgr0)\]"

