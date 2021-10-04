alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

mkcd() { mkdir -p -- "$1" && cd -P -- "$1"; }
# alias ..="cd .."
# alias ...="cd ../.."
# alias svim="sudo vim"

alias gl='git log --oneline --graph --decorate --all'
