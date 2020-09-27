#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Print sxhkd keyboard combos
#alias combo='cat ~/.config/sxhkd/sxhkdrc | awk '\''/^[a-z]/ && last {print $0,"\t",last} {last=""} /^#/{last=$0}'\'' | column -t -s $'\''\t'\'' | fzf'

#
# MY aliases for common utilities
#

# my ls
alias ll='ls -a -l --time-style=long-iso --color=auto'

#
# MY aliases for other utilities
#

# my file explorer
alias myfilex='ranger'

# edit sxhkdrc
alias editsxhkdrc='vim ~/.config/sxhkd/sxhkdrc'

# edit bashrc
alias editbashrc='vim ~/.bashrc'

# logout
alias logout='kill -9 -1'

# directory shortcuts
alias projects='cd ~/projects'
