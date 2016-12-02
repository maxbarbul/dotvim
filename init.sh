VIM_DIR=$HOME/.vim

mkdir bundle
git clone https://github.com/gmarik/Vundle.vim.git bundle/Vundle.vim
ln -s $VIM_DIR/etc/_vimrc $HOME/.vimrc
ln -s $VIM_DIR/etc/_gvimrc $HOME/.gvimrc
