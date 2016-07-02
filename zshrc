# Load scripts and antigen
source ~/.dot/antigen.zsh

# Plugins
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply
# End of plugins

# Use robbyrussel customized theme
source ~/.dot/themes/robbyrussell.zsh-theme

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#

# Keybindings for numeric keyboard
bindkey -s "^[Op" "0"
bindkey -s "^[Ol" "."
bindkey -s "^[OM" "^M"
# 1 2 3
bindkey -s "^[Oq" "1"
bindkey -s "^[Or" "2"
bindkey -s "^[Os" "3"
# # 4 5 6
bindkey -s "^[Ot" "4"
bindkey -s "^[Ou" "5"
bindkey -s "^[Ov" "6"
# # 7 8 9
bindkey -s "^[Ow" "7"
bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
# # + -  * /
bindkey -s "^[Ok" "+"
bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
bindkey -s "^[Oo" "/""]]]"

# Configure path
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export PATH=/opt/mongodb/bin:/usr/local/mysql/bin:/opt/mongodb/bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"
export GOPATH=$HOME
export PATH="$PATH:$GOPATH/bin" # Add RVM to PATH for scripting

# Configure boxen
. /opt/boxen/env.sh
alias git=hub

# vim = nvim
which nvim > /dev/null 2>&1 && alias vim=nvim

# Configure docker
export DOCKER_HOST=tcp://192.168.99.100:2376
export DOCKER_CERT_PATH=/Users/pedrofranceschi/.docker/machine/machines/dinghy
export DOCKER_TLS_VERIFY=1
export DOCKER_MACHINE_NAME=dinghy

# Fix hub alias
unalias git
function git() { hub $@; }
