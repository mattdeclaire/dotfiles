# Colors

        RED="\[\033[0;31m\]"
     YELLOW="\[\033[0;33m\]"
      GREEN="\[\033[0;32m\]"
       BLUE="\[\033[0;34m\]"
  LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
      WHITE="\[\033[1;37m\]"
 LIGHT_GRAY="\[\033[0;37m\]"
       TEAL="\[\033[1;36m\]"
 COLOR_NONE="\[\e[0m\]"

function git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

export PS1="\t|\w${GREEN}\$(git_branch)${COLOR_NONE}\$ "

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PATH="/usr/local/opt/node@6/bin:$PATH:~/.composer/vendor/bin"

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh" 

alias dps='docker ps -a --format "table {{.Names}}\t{{.RunningFor}}\t{{.Status}}\t{{.Image}}"'

function drm() {
  docker stop $1;
  docker rm $1;
}
