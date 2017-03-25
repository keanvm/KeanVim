"""" git clone https://github.com/VundleVim/Vundle.vim.git  ~/.vim/bundle/Vundle.vim

set nocompatible " 设置vim为不兼容vi模式

filetype off " required

set rtp+=~/.vim/bundle/Vundle.vim  "添加d到Run Time Path

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"""" filesystem
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'

"""" Python Mode
" Plugin 'python-mode/python-mode'

"""" Syntastic
Plugin 'vim-syntastic/syntastic'

"""" CPP Highlight
Plugin 'octol/vim-cpp-enhanced-highlight'

""" Operator Highlight
Plugin 'Valloric/vim-operator-highlight'

"""" Fugitive a git wrapper
Plugin 'tpope/vim-fugitive'
Plugin 'Yggdroot/indentLine'
Plugin 'airblade/vim-gitgutter'
" Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-commentary'

"""" Auto Complpop
" Plugin 'othree/vim-autocomplpop'

"""" Super Tab
" A auto completion tool using tab key
Plugin 'ervandew/supertab'

"""" MiniBufExplore
Plugin 'fholgado/minibufexpl.vim'

"""" Param
Plugin 'Raimondi/delimitMate' "自动补全引号 括号等

"""" ListToggle
Plugin 'Valloric/ListToggle'

"""" Code Fold
Plugin 'tmhedberg/SimpylFold'

"""" PowerLine
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"""" Airline
Plugin 'vim-airline/vim-airline'

" Plugin 'vim-airline/vim-airline-themes'

"""" clolors
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

"""" enables filetype detection
filetype plugin indent on


""""""" =============================================== plugin config

""""" ============================= SimpylFold
set foldmethod=indent
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 1
let g:SimpylFold_fold_docstring = 1


""""" ============================= Syntastic
" let g:syntastic_ignore_files=[".*\.py$"]

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" change the compiler to g++ to support c++11.
" let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++' "set the options of g++ to suport


""""" =============================  Fugitive
set statusline+=%{fugitive#statusline()}

""""" ============================= Python Mode
" <leader>r        Run python code
" <leader>b        Add/remove breakpoints
" :PymodeLint      Code checking(pylint, pyflakes, pylama, ...) simultaneously
" :PymodeLintAuto  Autofix PEP8 errors
" Go to definition (<C-c>g for :RopeGotoDefinition)
" nnoremap pdf :RopeGotoDefinition<CR>
" let g:pymode_python = 'python3'
" nnoremap fmt :PymodeLintAuto<CR>

""""" ============================= Vim Commentary
" gcc comment out a line ,can take a count , also uncomment
" gcu uncomment a line
" gcap to comment out a paragraph
" gcgc uncomments a set of adjacent commented lines
" with a range like :7,17Commentary
" :g/TODO/Commentary

""""" ============================= GitGutter
let g:gitgutter_map_keys = 0
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
let g:gitgutter_highlight_lines = 1

""""""" ============================= Color Style
let g:solarized_termcolors=256 " important
colorscheme solarized "zenburn
set background=dark
" set guifont=Monaco:h14

""""""" ============================= ListToggle
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
let g:lt_height = 8

""""""" ============================= MiniBufExplore
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0

" map <c-d> :MBEbd<CR> " delete current buffer file
" :MBEbd [num] detete No.num buffer file
" map <F11> :MBEbp<CR> " previous buffer file
" map <F12> :MBEbn<CR> " next buffer file

""""""" ============================= SimpylFold
let g:SimpylFold_docstring_preview = 1
" let g:SimpylFold_fold_docstring = 0 "don't fold docstring
" let g:SimpylFold_fold_import = 0    " don't fold import
" `zc` close a fold
" `zo` open a fold

""""""" ============================= Super Tab
" in INSERT mode using ctrl + p
let g:SuperTabRetainCompletionType=2


""""""" ============================= Power Line
let g:Powerline_symbols = 'fancy'

""""""" ============================= Air Line
set laststatus=2 """appear all the time"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1 """ Use powerline fonts

""""""" ============================= Ctrl P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'cr'
" Vim's wildignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
" CtrlP's own
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

""""""" ============================= 设置NerdTree
" 设置快捷键
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
 let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=31
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" ignore files in NERDTree
let NERDTreeIgnore=['\.pyc','\~$','\.swp','.DS_Store','.idea','.tmp']
" 显示书签列表
let NERDTreeShowBookmarks=1
" nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


""""""" =============================================== basic config

let python_highlight_all=1
let mapleader=" "

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" set noswapfile      "don't use swap files
set encoding=utf-8  "Set the default file encoding to UTF-8:
set fileencodings=utf-8,chinese,latin-1 "
set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set ts=4
set shiftwidth=4    "Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=4   "Indent by 4 spaces when pressing <TAB>

set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisable

set backspace=indent,eol,start " make backspaces more powerful

" 高亮显示搜索结果
set hlsearch
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" turn on numbering
set number
set showmode
set ruler
set showcmd
set cmdheight=2
set helplang=cn
set list
set listchars=tab:▸\ ,eol:¬
syntax on
