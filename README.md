# Setup

Adapted from my friend's repo: https://github.com/rpellerin/dotfiles

## Step 1. Install XCode

Go to the AppStore and install XCode

## Step 2. Install HomeBrew

See: https://brew.sh/

## Step 3. Install desired applications

```
brew install --cask iterm2 \
	zoom \
	brave-browser \
	visual-studio-code \
	tor-browser \
    keybase

# Add any relevant application here: e.g. Slack, Libreoffice etc.
```

## Step 4. Install desired packages

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

## Step 5. Git setup

1. Generate a SSH Key and add it to Github (see: https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

2. Generate a GPG key and add it to Github (see: https://help.github.com/articles/generating-a-new-gpg-key/), and set all parameters to the max secure values + set the key to expire ! It is good to renew the key pair once in a while.
    - See: http://irtfweb.ifa.hawaii.edu/~lockhart/gpg/
    - Use keybase for GPG management and operations

3. Make sure to update the `signingkey` field in the `.gitconfig` file, with the ID of the new key.

## Step 6. Setup zsh with Prezto

See instructions in https://github.com/sorin-ionescu/prezto

Note: zsh is now set as default terminal on macOS (see [here](https://support.apple.com/en-us/HT208050)). Hence, the step `chsh -s /bin/zsh` is not necessary on recent versions of macOS.

## Step 7. Set custom dotfiles

```
# Clone this repository into the home directory
git clone git@github.com:AntoineRondelet/Dotfiles.git $HOME/Dotfiles
cd $HOME/Dotfiles
REPO_DIR=`pwd`

ln -sf "$REPO_DIR/.gitconfig" $HOME/
ln -sf "$REPO_DIR/.gitignore_global" $HOME/
ln -sf $REPO_DIR/.curlrc $HOME/
ln -sf $REPO_DIR/.less $HOME/
ln -sf $REPO_DIR/.lesskey $HOME/
ln -s $REPO_DIR/.ycm_extra_conf.py $HOME/

ln -sf $REPO_DIR/.vimrc $HOME/
```

By installing ZSH, we use some config files from the [runcoms](https://github.com/sorin-ionescu/prezto/tree/master/runcoms#readme), make sure to use these and then extend them with custom configurations as specified in the `.zshrc` and `.zpreztorc` in this folder.

We do not create symlinks to the `z*` files from these dotfiles in the `ln -sf`
commands above because we want to make sure we use the Prezto config first, and
then we extend the base config with our own commands and config.

### Step 7 bis. Copy/paste custom `.zpreztorc` and `.zshrc` config

Move the relevant config from these dotfiles' `.zpreztorc` and `.zshrc` to the
ones setup from the Prezto at `Step 5`.

## Step 8. Vim setup

See: https://github.com/junegunn/vim-plug#installation

Note: The Plug Vim installation is configured automatically in the `.vimrc` file
as done in https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation

## Misc

- Install Ruby via `chruby`: https://mac.install.guide/ruby/12
- Install Flutter: https://docs.flutter.dev/get-started/install/macos/desktop
    - Requires a recent Ruby version (see step above)
    - Install Xcode simulator runtimes: https://developer.apple.com/documentation/xcode/installing-additional-simulator-runtimes
        - `XCode > Settings > Platforms` - pick the necessary platforms (e.g. iOS)

