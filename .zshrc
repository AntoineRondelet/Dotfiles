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

export PATH="$PATH:$HOME/Dev/flutter/bin:$HOME/Library/Android/sdk/platform-tools/:$HOME/Library/Android/sdk/emulator/"
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3

# Follow https://docs.djangoproject.com/en/4.1/ref/contrib/gis/install/#postgres-app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/15/bin

# Customize the defaults rights of your files and folders
# User have all rights, Group have Read and Execute and Others : Nothing
umask 027
