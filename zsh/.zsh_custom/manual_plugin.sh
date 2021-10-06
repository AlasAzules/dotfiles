# manully install plugins into `~/.zsh/plugins`
CUSTOM_PLUGINS=$HOME/.zsh/plugins

install_zsh_autosuggestions() {
    git clone https://github.com/zsh-users/zsh-autosuggestions $CUSTOM_PLUGINS/zsh-autosuggestions
}

if [ ! -f $CUSTOM_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    install_zsh_autosuggestions
fi

source $CUSTOM_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
