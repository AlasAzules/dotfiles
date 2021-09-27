CFG_DIR=${CFG_DIR:-$HOME/.zsh_custom}
export TERM="xterm-256color"
export LC_ALL="en_US.UTF" && export LANG="en_US.UTF-8"

if [ -f ~/.zplug/init.zsh ]; then
    source $CFG_DIR/zplug.sh
else
    source $CFG_DIR/zsh_plugin.sh
fi

source $CFG_DIR/alias.sh
