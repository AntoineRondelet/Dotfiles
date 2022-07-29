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
# Assumes the dotfiles folder has been git cloned in $HOME
source $HOME/dotfiles/.rc
source $HOME/dotfiles/.aliases

# Customize the defaults rights of your files and folders
# User have all rights, Group have Read and Execute and Others : Nothing
umask 027
