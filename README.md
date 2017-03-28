# KeanVim
Kean's Vim Configuration

## 安装Bundle
- 需使用git，一般*nix 机器都有，例如ubuntu使用`sudo apt-get install git`即可
- 安装Bundle：`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
- 设置`.vimrc`


``` vim
set nocompatible " 设置vim为不兼容vi模式

"""" disables filetype detection
filetype off " required

set rtp+=~/.vim/bundle/vundle/  "添加d到Run Time Path

call vundle#begin() 

Plugin 'VundleVim/Vundle.vim'

"""" githuh Plugins 'username/reponame'



call vundle#end()

"""" enables filetype detection
filetype plugin indent on

```

## Powerline-status
- 安装 powerline-status `pip install powerline-status`
- 下载并安装字体 `git clone  --depth=1 git@github.com:powerline/fonts.git && ./fonts/install.sh`
- 然后修改控制台的字体为字体名带有`for powerline`的字体即可，iTerm2请修改Non ASCII Font
- 添加到`bash`

``` bash
cat >> .bashrc << EOF
source $(pip show powerline-status | awk '/Location:/{print $2 "/powerline/bindings/bash/powerline.sh"}')
EOF
```


- `zsh` 不执行第一步，然后执行以下代码，然后打开~/.zshrc，将ZSH_THEME=”robbyrussell”改为ZSH_THEME=”powerline”就更换了主题，重启iTerm，就能看到效果了～

``` bash
git clone git@github.com:jeremyFreeAgent/oh-my-zsh-powerline-theme ~/.ohmyzsh-powerline 
cd ~/.ohmyzsh-powerline
cp powerline.zsh-theme ~/.oh-my-zsh/themes/powerline.zsh-theme
rm -rf ~/.ohmyzsh-powerline
```

## MiniBufExplorer

```
:e <filename> 打开文件
:ls    当前打开的buf
:bn    下一个buf
:bp    前一个buf
:b<n>    n是数字，第n个buf
:b<tab>    自动补齐
:bd    删除buf
```

## Bundle
- :BundleList -列举出列表中(.vimrc中)配置的所有插件
- :BundleInstall -安装列表中全部插件
- :BundleInstall! -更新列表中全部插件
- :BundleSearch foo -查找foo插件
- :BundleSearch! foo -刷新foo插件缓存
- :BundleClean -清除列表中没有的插件
- :BundleClean! -清除列表中没有的插件


