# Oh-My-Zsh
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

# RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Go
export GOROOT="/usr/local/bin/"
export GOPATH="$HOME/Dev/go"
export PATH="$HOME/Dev/go/bin:$PATH"

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

