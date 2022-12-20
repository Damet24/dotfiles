# starship config
eval "$(starship init zsh)"

setopt autocd

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.local/bin:$PATH"

 export DENO_INSTALL="/$HOME/.deno"
 export PATH="$DENO_INSTALL/bin:$PATH"

# CUSTOM

alias cat='/bin/bat'
alias catn='/bin/cat'
alias catnl='/bin/bat --paging=never'

alias ll='lsd -alF --group-dirs=first'
alias la='lsd -A --group-dirs=first'
alias l='lsd -CF --group-dirs=first'
alias ls='lsd --group-dirs=first'

alias v='/bin/nvim'
alias vim='/bin/nvim'
alias nvim='/bin/nvim'
alias py='/usr/bin/python3'

alias dsa='docker stop $(docker ps -q)'
alias lamp='~/.scripts/start_lamp_server.sh'

alias tokens='cat ~/gittokens.txt'
alias vpnpass='cat ~/.vpn/.info'
alias vpnconnect='sudo openvpn --config ~/.vpn/profile-3.ovpn'
alias gdf='git diff --color | diff-so-fancy'

# git alias
alias gst='git status'
alias gaa='git add .'
alias gb='git branch'
alias gck='git checkout'
alias gc='git commit'

source /usr/share/zsh-sudo/sudo.plugin.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
