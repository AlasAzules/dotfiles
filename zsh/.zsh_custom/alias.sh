alias ll="ls -al"

mkcd() { mkdir -p -- "$1" && cd -P -- "$1"; }
# alias ..="cd .."
# alias ...="cd ../.."
# alias svim="sudo vim"

alias gl='git log --oneline --graph --decorate --all'
