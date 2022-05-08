# add the line
# . path/to/here/bash_aliases
# to .bashrc

alias logout='kill -9 -1'

alias ll='ls -al --time-style=long-iso --color=auto'

alias projects='cd ~/projects'

alias lfeverything='find . -type f -print0 | xargs -0 dos2unix'

# git

alias gitlogin='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_ed25519'

alias gaa='git add .'
alias gds='git diff --staged'
alias gc='git commit'