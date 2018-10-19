#! /bin/bash


cp -rf bashellrc  ~/.bashellrc
cp vimrc.vim ~/.bashellrc/vimrc.vim

printf "
if [ -f ~/.bashellrc/bashrc ]; then
    . ~/.bashellrc/bashrc
fi
" >> ~/.bashrc



git clone --depth=1 https://github.com/powerline/fonts.git  ~/.vim/fonts &&
    ~/.vim/fonts/install.sh
git clone --depth=1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim -u "~/.bashellrc/vimrc.vim"  "+set nomore" "+BundleInstall!"  "+BundleClean" "+qall"
