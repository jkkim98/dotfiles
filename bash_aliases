#        .o8                          oooo
#       "888                          `888
#        888oooo.   .oooo.    .oooo.o  888 .oo.   oooo d8b  .ooooo.
#        d88' `88b `P  )88b  d88(  "8  888P"Y88b  `888""8P d88' `"Y8
#        888   888  .oP"888  `"Y88b.   888   888   888     888
#   .o.  888   888 d8(  888  o.  )88b  888   888   888     888   .o8
#   Y8P  `Y8bod8P' `Y888""8o 8""888P' o888o o888o d888b    `Y8bod8P'

unalias -a

alias a='alias'
alias c='clear'
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
