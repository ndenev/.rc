# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export TERM=screen-256color

if [ -f ~/.ssh/.agent_info ]; then
    . ~/.ssh/.agent_info > /dev/null
else
    if [ -f ~/.ssh/.ssh_auth_sock ]; then rm -f ~/.ssh/.ssh_auth_sock; fi
    ssh-agent -a ~/.ssh/.ssh_auth_sock > ~/.ssh/.agent_info
    . ~/.ssh/.agent_info 
    ssh-add ~/.ssh/id_rsa
fi

. ~/.shell_prompt.sh
