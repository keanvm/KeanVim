#! /bin/bash
cp ~/.vimrc ~/.vimrc.bkp
cp -f ./vimrc.vim ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim  "+set nomore" "+BundleInstall!"  "+BundleClean" "+qall"
