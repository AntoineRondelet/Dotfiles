#! bin/sh


echo "Initialize configuration"

cd /dotfiles
REPO_DIR=`pwd`
echo "source $REPO_DIR/.rc" >> $HOME/.zshrc
echo "source $REPO_DIR/.aliases" >> $HOME/.zshrc
ln -sf $REPO_DIR/.tmux.conf $HOME/
ln -sf "$REPO_DIR/.gitconfig" $HOME/
ln -sf "$REPO_DIR/.gitignore_global" $HOME/
ln -sf $REPO_DIR/.curlrc $HOME/
ln -sf $REPO_DIR/.vimrc $HOME/
ln -sf $REPO_DIR/.less $HOME/
ln -sf $REPO_DIR/.lesskey $HOME/
