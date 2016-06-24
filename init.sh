set VIM_DIR=~/.vim

mkdir bundle
git clone https://github.com/gmarik/Vundle.vim.git bundle/Vundle.vim
ln -s $VIM_DIR/etc/_vimrc ~/.vimrc
ln -s $VIM_DIR/etc/_gvimrc ~/.gvimrc
