export PATH=$PATH:~/.composer/vendor/bin
export PATH=/Users/Shared/DBngin/mysql/8.0.27/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%F{2}(%b)%f'
zstyle ':vcs_info:*' enable git

export PROMPT='%(?.%F{green}√.%F{red}%?)%f %F{240}%~%f ${vcs_info_msg_0_} %# '
export RPROMPT='%F{240}%*%f'
