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
source ~/.rvm/scripts/rvm

# Go
#export GOROOT="/usr/local/bin/"
export GOPATH="$HOME/Dev/go"
export PATH="$HOME/Dev/go/bin:$PATH"
export GO111MODULE=on 

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Compilers
#export LDFLAGS="-L/usr/local/opt/openssl/lib"
#export CFLAGS="-I/usr/local/opt/openssl/include"
#export LDFLAGS=-L/usr/local/opt/openssl/lib
#export CPPFLAGS=-I/usr/local/opt/openssl/include
#export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig

export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"

# Git
alias git='LANG=en_GB git'
alias git_local_prune="git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d"
alias git_remote_prune='git remote prune origin'
alias git_submodule_sync='git submodule sync --recursive && git submodule update --init --recursive && git pull --recurse-submodules'

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
alias kc='kubectl'
alias kgp='kubectl get pods'
alias kgs='kubectl get svc'
alias kgc='kubectl get componentstatuses’
alias kctx='kubectl config current-context’
alias kcon='kubectl config use-context’
alias kgc='kubectl config get-context'
alias pods='kubectl get pod -o=custom-columns=NAME:.metadata.name,STATUS:.status.phase,NODE:.spec.nodeName,NAMESPACE:.metadata.namespace --all-namespaces'
alias taints='kubectl get nodes -o json | jq ".items[]|{name:.metadata.name, taints:.spec.taints}"'
alias labels="kubectl get nodes --show-labels"

# Locale 
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


# PHPbrew 
source /Users/cjslade/.phpbrew/bashrc
export PHPBREW_SET_PROMPT=1

# Gnu
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

# Xcode
alias xcode="open -a Xcode"

# Personal
alias phpunit="public/vendor/bin/phpunit"
alias pf="public/vendor/bin/phpunit --filter "
export PATH="/usr/local/opt/bzip2/bin:$PATH"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/mc mc

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

