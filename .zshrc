# Zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster" # See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

plugins=(
  git
  ansible
  brew
  bundler
  fzf
  golang
  helm
  httpie
  iterm2
  minikube
  npm
  osx
  themes
)

source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

unsetopt correct_all

# RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Go
export GOROOT="/usr/local/bin/"
export GOPATH="$HOME/Dev/go"
export PATH="$HOME/Dev/go/bin:$PATH"

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Compilers
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CFLAGS="-I/usr/local/opt/openssl/include"
export LDFLAGS=-L/usr/local/opt/openssl/lib
export CPPFLAGS=-I/usr/local/opt/openssl/include
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig

export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

# Git
alias git_local_prune="git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d"
alias git_remote_prune='git remote prune origin'


# Less
export LESS="-RSM~gIsw"
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'


# K8s, Docker
alias k="kubectl"
alias h="helm"
alias dc="docker-compose"


# Locale 
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


# PPBrew 
source /Users/cjslade/.phpbrew/bashrc
export PHPBREW_SET_PROMPT=1
