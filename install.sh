#! /bin/bash
cp ~/.vimrc ~/.vimrc.bkp
cp -f ./vimrc.vim ~/.vimrc

git clone --depth=1 https://github.com/powerline/fonts.git  ~/.vim/fonts &&
    ~/.vim/fonts/install.sh
git clone --depth=1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim  "+set nomore" "+BundleInstall!"  "+BundleClean" "+qall"
