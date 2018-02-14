# Setup

Adapted from my friend's repo: https://github.com/rpellerin/dotfiles

## Install XCode

Go to the AppStore and install XCode

## Install HomeBrew

`usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

## Install iTerm

`brew cask install iterm2`

## Install desired packages

```
brew update
brew upgrade
brew install autojump \
              go \
              git \
              zsh \
              gpg \
              wget \
              node \
              docker \
              vim \
              htop
```

## Setup zsh

```
zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

## Set zsh as the default shell

`chsh -s /bin/zsh`

> This needs a new shell to be opened to be effective

## Set custom dotfiles

```
git clone 
cd Dotfiles
REPO_DIR=`pwd`


ln -sf $REPO_DIR/.vimrc $HOME/
mkdir -p $HOME/.vim

echo "source $REPO_DIR/.rc" >> $HOME/.zshrc
echo "source $REPO_DIR/.aliases" >> $HOME/.zshrc

ln -sf "$REPO_DIR/.gitconfig" $HOME/

ln -sf $REPO_DIR/.curlrc $HOME/
ln -sf $REPO_DIR/.less $HOME/
ln -sf $REPO_DIR/.lesskey $HOME/
ln -s $REPO_DIR/.ycm_extra_conf.py $HOME/
```

## Vim setup

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim # And run the command :PluginInstall
```

## Ethereum setup


1. Install Solidity
```
brew update
brew upgrade
brew tap ethereum/ethereum
brew install solidity
brew linkapps solidity
```

2. Build Geth

```
git clone https://github.com/ethereum/go-ethereum
cd go-ethereum
make geth
```

3. Install Truffle

`npm install -g truffle`


## Git setup

1. Generate a SSH Key and add it to Github (see: https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

2. Generate a GPG key and add it to Github (see: https://help.github.com/articles/generating-a-new-gpg-key/), and set all parameters to the max secure values + set the key to expire ! It is good to renew the key pair once in a while.

3. make sure to update the `signingkey` field in the `.gitconfig` file, with the ID of the new key.

## Golang setup

Construct the go path declared in the GOPATH environment variable in the `.rc` file:
`mkdir ~/dev/go`

## Install KeePassX

Download the App:

`wget https://www.keepassx.org/releases/[lastVersion]/KeePassX-[lastVersion].dmg`

Create or import a database to store your passwords.
