#!/bin/bash
# .bash_aliases

alias swd='pushd +1 ; dirs -v'
alias dirs='dirs -v'
alias grep='grep --color'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias :q='exit'

alias ll='ls -lart'
alias la='ls -A'

alias vi='echo "Use vim, You will thank me in the end" '
alias vim='nvim'

alias gitroot='pushd `git root`'
alias dhog='du -cks * | sort -rn'

alias tree='tree -Cp'
alias gpush='git pull --rebase && git push'
alias mkdatedir='mkdir `date "+%Y-%m-%d"`'
alias myip='http https://ifconfig.co/json | jq .'
alias kctx='kubectx'
alias kns='kubens'
alias kctl='kubectl'

alias gobench='go test -v --bench . --benchmem'
