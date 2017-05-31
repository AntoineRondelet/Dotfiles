#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Antoine Rondelet

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Antoine Rondelet's dotfiles
source /Users/Antoine/dotfiles/.rc
source /Users/Antoine/dotfiles/.aliases

# Customize the defaults rights of your files and folders
umask 027
# User have all rights, Group have Read and Execute and Others : Nothing
export PATH=$PATH:$GOBIN
export GOPATH=/Users/Antoine/dev/go
export GOBIN=$GOPATH/bin
export DOCKER_HOST=unix:///var/run/docker.sock
export DOCKER_API_VERSION=v1.24
