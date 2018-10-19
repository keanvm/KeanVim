#! /bin/bash


[[ -d ~/.bashellrc ]] ||  printf "
if [ -f ~/.bashellrc/bashrc ]; then
    . ~/.bashellrc/bashrc
fi
" >> ~/.bashrc

cp -rf bashellrc  ~/.bashellrc
cp vimrc.vim ~/.bashellrc/vimrc.vim


[[ -d ~/.vim/fonts ]] || git clone --depth=1 https://github.com/powerline/fonts.git  ~/.vim/fonts &&  ~/.vim/fonts/install.sh
[[ -d ~/.vim/bundle/Vundle.vim ]] || git clone --depth=1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim -u "~/.bashellrc/vimrc.vim"  "+set nomore" "+BundleInstall!"  "+BundleClean" "+qall"
