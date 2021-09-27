# manully install plugins into `~/.zsh/plugins`
CUSTOM_PLUGINS=$HOME/.zsh/plugins

install_zsh_autosuggestions() {
    git clone https://github.com/zsh-users/zsh-autosuggestions $CUSTOM_PLUGINS/zsh-autosuggestions
}

install_zsh_autosuggestions

source $CUSTOM_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
