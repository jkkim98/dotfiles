#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# show time, user and hostname, and working directory on the prompt
PS1='\A \u@\h \w \$ '

#
## sytem
#

# logout
alias logout='kill -9 -1'

#
## modified common commands
#

# full ls
alias ll='ls -a -l --time-style=long-iso --color=auto'

#
## edit files
#

# edit sxhkdrc
alias editsxhkdrc='vim ~/.config/sxhkd/sxhkdrc'

# edit bashrc
alias editbashrc='vim ~/.bashrc'

#
## directory shortcuts
#

# ~/projects
alias projects='cd ~/projects'
