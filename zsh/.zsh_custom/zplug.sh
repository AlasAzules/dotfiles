source ~/.zplug/init.zsh

autoload -Uz compinit && compinit

# POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# POWERLEVEL9K_DISABLE_RPROMPT=true
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir newline vcs)

# zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug "themes/robbyrussell", from:oh-my-zsh
# zplug "themes/lukerandall", from:oh-my-zsh
# zplug 'dracula/zsh', as:theme

zplug "plugins/git", from:oh-my-zsh
zplug "zdharma/fast-syntax-highlighting"
zplug "b4b4r07/enhancd"
zplug "plugins/docker", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "plugins/history-substring-search", from:oh-my-zsh

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
       echo; zplug install
    fi
fi

zplug load
