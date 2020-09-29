#
# ~/.bashrc
#

# to show branch name of a git repo in PS1
# copied file from /usr/share/bin
# configuration instruction found in script comments
source ~/scripts/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE='non empty value'
GIT_PS1_SHOWSTASHSTATE='non empty value'
GIT_PS1_SHOWUNTRACKEDFILES='non empty value'
GIT_PS1_SHOWUPSTREAM='auto'
GIT_PS1_SHOWCOLORHINTS='non empty value'
GIT_PS1_STATESEPARATOR=' '
GIT_PS1_SHOWUPSTREAM='verbose name git'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# show time, user and hostname, and working directory on the prompt
PROMPT_COMMAND='__git_ps1 "\A \u@\h:\w" "\\\$ "'

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
