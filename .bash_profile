function git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

export PS1="\[\e[48;5;100m\]\t|\w\[\e[30m\]\$(git_branch)\[\e[m\]\$"

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
