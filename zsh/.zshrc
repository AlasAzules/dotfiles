CFG_DIR=${CFG_DIR:-$HOME/.zsh_custom}
export TERM="xterm-256color"
export LC_ALL="en_US.UTF" && export LANG="en_US.UTF-8"

if [ -f ~/.zplug/init.zsh ]; then
    source $CFG_DIR/zplug.sh
else
    source $CFG_DIR/zsh_plugin.sh
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

source $CFG_DIR/aliases.sh
