# add the line
# . path/to/here/bash_aliases
# to .bashrc

alias logout='kill -9 -1'

alias ll='ls -al --time-style=long-iso --color=auto'

alias p='cd ~/projects'
alias po='cd ~/projects-other'
alias pg='cd ~/playground'

alias lfeverything='find . -type f -print0 | xargs -0 dos2unix'

# git

alias gitlogin='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_ed25519'

alias gs='git status'
alias ga='git add'
alias gds='git diff --staged'
alias gc='git commit'
