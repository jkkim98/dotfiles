unalias -a

alias a='alias'
alias c='clear'
alias e='explorer'
alias l='ls -alshFG --time-style=long-iso --color=always'
alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'
alias v='vim'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias ec='echo $?'
alias kill='kill -9 -1'
alias gtfo='sudo shutdown now'
alias aptup='sudo apt update && apt list --upgradable '
alias aptupug='sudo apt update && sudo apt upgrade'

# path shortcuts

alias cdpg='cd ~/playground'
alias cdgit='cd ~/git'
alias cddf='cd ~/git/dotfiles'

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
