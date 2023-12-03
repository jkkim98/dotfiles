#        .o8                          oooo
#       "888                          `888
#        888oooo.   .oooo.    .oooo.o  888 .oo.   oooo d8b  .ooooo.
#        d88' `88b `P  )88b  d88(  "8  888P"Y88b  `888""8P d88' `"Y8
#        888   888  .oP"888  `"Y88b.   888   888   888     888
#   .o.  888   888 d8(  888  o.  )88b  888   888   888     888   .o8
#   Y8P  `Y8bod8P' `Y888""8o 8""888P' o888o o888o d888b    `Y8bod8P'

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$PATH:/home/jk/.dotnet/tools"

PATH="$HOME/.local/bin:$PATH"
PATH="$PATH:/usr/local/go/bin"
PATH="$PATH:$HOME/go/bin"

#https://gist.github.com/vratiu/9780109
NoColor="\[\033[0m\]"
Black="\[\033[0;30m\]"
Red="\[\033[0;31m\]"
Green="\[\033[0;32m\]"
Yellow="\[\033[0;33m\]"
Blue="\[\033[0;34m\]"
Purple="\[\033[0;35m\]"
Cyan="\[\033[0;36m\]"
White="\[\033[0;37m\]"

Host="\h"
User="\u"
Date="\d"
Time24="\t"
Time24A="\A"
Time12h="\T"
Time12a="\@"
Path="\w"
WorkDir="\W"
NewLine="\n"
Jobs="\j"

. ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=yeah
GIT_PS1_SHOWSTASHSTATE=yeah
GIT_PS1_SHOWUNTRACKEDFILES=yeah
GIT_PS1_SHOWUPSTREAM=auto

PS1="$Blue$Time24A $Cyan$User@$Host $Green$Path$Yellow"'$(__git_ps1 " (%s)")'" $White(\j)\$$NoColor " 
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

sudo service docker start
