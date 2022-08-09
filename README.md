# Setup

Adapted from my friend's repo: https://github.com/rpellerin/dotfiles

## Install XCode

Go to the AppStore and install XCode

## Install HomeBrew

See: https://brew.sh/

## Install desired applications

```
brew install --cask iterm2 \
	zoom \
	brave-browser \
	visual-studio-code \
	tor-browser \
    keybase
# Add any relevant application here: e.g. Slack, Libreoffice etc.
```

## Install desired packages

```
brew install autojump \
              git \
              zsh \
              gpg \
              wget \
              node \
              docker \
              vim \
              htop
```

## Setup zsh with Prezto

See instructions in https://github.com/sorin-ionescu/prezto

Note: zsh is now set as default terminal on macOS (see [here](https://support.apple.com/en-us/HT208050)). Hence, the step `chsh -s /bin/zsh` is not necessary on recent versions of macOS.

## Set custom dotfiles

```
# Clone this repository into the home directory
git clone git@github.com:AntoineRondelet/Dotfiles.git $HOME/Dotfiles
cd $HOME/Dotfiles
REPO_DIR=`pwd`

echo "source $REPO_DIR/.rc" >> $HOME/.zshrc
echo "source $REPO_DIR/.aliases" >> $HOME/.zshrc

ln -sf "$REPO_DIR/.gitconfig" $HOME/
ln -sf "$REPO_DIR/.gitignore_global" $HOME/
ln -sf $REPO_DIR/.curlrc $HOME/
ln -sf $REPO_DIR/.less $HOME/
ln -sf $REPO_DIR/.lesskey $HOME/
ln -s $REPO_DIR/.ycm_extra_conf.py $HOME/

ln -sf $REPO_DIR/.vimrc $HOME/
```

## Vim setup

See: https://github.com/junegunn/vim-plug#installation

Note: The Plug Vim installation is configured automatically in the `.vimrc` file
as done in https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation

## Git setup

1. Generate a SSH Key and add it to Github (see: https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

2. Generate a GPG key and add it to Github (see: https://help.github.com/articles/generating-a-new-gpg-key/), and set all parameters to the max secure values + set the key to expire ! It is good to renew the key pair once in a while.
    - See: http://irtfweb.ifa.hawaii.edu/~lockhart/gpg/
    - Use keybase for GPG management and operations

3. Make sure to update the `signingkey` field in the `.gitconfig` file, with the ID of the new key.

