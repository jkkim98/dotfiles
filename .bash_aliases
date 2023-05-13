unalias -a

alias a='alias'
alias c='clear'
alias e='explorer'
# A: include entires starting with . except . and ..
# b: C-style escape, allows you to copy and use the name elsewhere
# F: append file indicators
# G: don't print group name
# 1 (one): long listing format
# v: natural sort of numbers
# T 0: don't use tab for alignment
alias l='ls -AbFG1v -T 0 --group-directories-first --time-style=long-iso --color=always'
# h: human readable, for l and s
# s: show file size
# l: long listing format
alias ll='ls -AbFgGlshv -T 0 --group-directories-first --time-style=long-iso --color=always'
alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'
alias v='vim'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -ir'
alias ip='ip --color=auto --human'
alias ec='echo $?'
alias kill='kill -9 -1'
alias gtfo='sudo shutdown now'
alias aptup='sudo apt update && apt list --upgradable '
alias aptupug='sudo apt update && sudo apt upgrade'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# path shortcuts

alias cdpg='cd ~/playground'
alias cdgit='cd ~/git'

..() {
    local dir
    local i
    local levels="${1:-1}"

    for ((i = 0; i < levels; i++)); do
        dir+="../"
    done

    cd "$dir"
}

mkcd() {
    mkdir "$@"
    cd "${@: -1}"
}

# other

alias src='source ~/.bashrc'
alias lfeverything='find . -type f -print0 | xargs -0 dos2unix'

## yt-lp

alias yt='yt-dlp --no-check-certificate -i -r 500K -f bestvideo+bestaudio --sub-lang "en" --write-sub --add-metadata --embed-thumbnail --embed-subs'
