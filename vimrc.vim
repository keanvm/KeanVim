"
" Kean's Vim Configuration
" Developed by KeanVM Host 'KeanVM' < KeanVM AT gamil DOT com>
"_____________________________________________________________
"
"
" git clone https://github.com/VundleVim/Vundle.vim.git  ~/.vim/bundle/Vundle.vim
" 
" Settings {{{
" Plugin Manager Vim bundle {{{

set nocompatible " 设置vim为不兼容vi模式
filetype off " required
set rtp+=~/.vim/bundle/Vundle.vim  "添加d到Run Time Path

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Easy Motion
" Plugin 'easymotion/vim-easymotion'

" Tagbar & Taglist
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/taglist.vim'

" TaskList
Plugin 'vim-scripts/TaskList.vim'

" filesystem
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'

" Python Mode
" Plugin 'python-mode/python-mode'

" Syntastic
Plugin 'vim-syntastic/syntastic'

" CPP Highlight
Plugin 'octol/vim-cpp-enhanced-highlight'

" Operator Highlight
Plugin 'Valloric/vim-operator-highlight'

" Fugitive a git wrapper
Plugin 'tpope/vim-fugitive'
Plugin 'Yggdroot/indentLine'
Plugin 'airblade/vim-gitgutter'
" Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-commentary'

" Auto Complpop
" Plugin 'othree/vim-autocomplpop'

" Super Tab  -- A auto completion tool using tab key
Plugin 'ervandew/supertab'

" MiniBufExplore
Plugin 'fholgado/minibufexpl.vim'

" Param
Plugin 'Raimondi/delimitMate' "自动补全引号 括号等

" ListToggle
Plugin 'Valloric/ListToggle'

" Code Fold
Plugin 'tmhedberg/SimpylFold'

" PowerLine
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Airline
Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'

" clolors
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'sickill/vim-monokai'
" Plugin 'w0ng/vim-hybrid'
" Plugin 'junegunn/seoul256.vim'/'liuchengxu/space-vim-dark'

call vundle#end()
filetype plugin indent on " enables filetype detection

" Vim bundle }}}

" =============================================== Plugin Config {{{

" ============================= Easy Motion {{{
" <Leader>f{char} to move to {char}
" map  <Leader>f <Plug>(easymotion-bd-f)
" nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
" nmap s <Plug>(easymotion-overwin-f2)

" Move to line
" map <Leader>L <Plug>(easymotion-bd-jk)
" nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
" map  <Leader>w <Plug>(easymotion-bd-w)
"nmap <Leader>w <Plug>(easymotion-overwin-w)

" Easy Motion }}}

" ============================= TaskList {{{
let g:tlTokenList = ["FIXME", "TODO", "HACK", "NOTE", "WARN", "MODIFY", "ERROR", "BUG"]
nnoremap <Leader>t :TaskList<CR>

" TaskList }}}

" ============================= Tagbar & Taglist {{{
nmap <F8> :TagbarToggle<CR>
let Tlist_Show_One_File=1      "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow=1    "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'  "将taglist与ctags关联
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=0
" :Tlist open/close Taglist Window

"Tagbar & Taglist }}}

" ============================= SimpylFold {{{
autocmd FileType python set foldmethod=indent
autocmd FileType vim set foldmethod=marker
" autocmd FileType c,cs,cpp,java,js set foldmethod=manual
let g:SimpylFold_docstring_preview = 1
" let g:SimpylFold_fold_import = 1  " fold import
" let g:SimpylFold_fold_docstring = 1  " fold docstring
" `zc` close a fold
" `zo` open a fold

" SimpylFold }}}

" ============================= Syntastic {{{
"let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
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
" let g:syntastic_cpp_compiler = 'clang++'
" let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'

"安装flake8: easy_install flake8
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args='--ignore=E501'

"set error or warning signs
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
"whether to show balloons
let g:syntastic_enable_balloons = 1

" Syntastic }}}

" ============================= Fugitive {{{
set statusline+=%{fugitive#statusline()}

" Fugitive }}}


" ============================= Python Mode {{{
" <leader>r        Run python code
" <leader>b        Add/remove breakpoints
" :PymodeLint      Code checking(pylint, pyflakes, pylama, ...) simultaneously
" :PymodeLintAuto  Autofix PEP8 errors
" Go to definition (<C-c>g for :RopeGotoDefinition)
" nnoremap pdf :RopeGotoDefinition<CR>
" let g:pymode_python = 'python3'
" nnoremap fmt :PymodeLintAuto<CR>

" Python Mode }}}

" ============================= Vim Commentary {{{
" gcc comment out a line ,can take a count , also uncomment
" gcu uncomment a line
" gcap to comment out a paragraph
" gcgc uncomments a set of adjacent commented lines
" with a range like :7,17Commentary
" :g/TODO/Commentary

" Vim Commentary }}}

" ============================= GitGutter {{{
let g:gitgutter_map_keys = 0
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
let g:gitgutter_highlight_lines = 1

" GitGutter }}}

" ============================= Color Style {{{
" ========= Solarized
let g:solarized_termcolors=256 " important
colorscheme solarized 
" colorscheme zenburn
" colorscheme molokai
" colorscheme desert
" set guifont=Monaco:h14
" ========= Molokai
" let g:molokai_original = 1
" let g:rehash256 = 1
set background=dark
set t_Co=256
" Color Style }}}

" ============================= ListToggle {{{ 
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
let g:lt_height = 8

" ListToggle }}}

" ============================= MiniBufExplore {{{
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0

" map <c-d> :MBEbd<CR> " delete current buffer file
" :MBEbd [num] detete No.num buffer file
" map <F11> :MBEbp<CR> " previous buffer file
" map <F12> :MBEbn<CR> " next buffer file

" MiniBufExplore }}}

" ============================= Super Tab {{{
" in INSERT mode using ctrl + p
let g:SuperTabRetainCompletionType=2

" Super Tab }}}

" ============================= Power Line {{{
  let g:Powerline_symbols = 'fancy'

" Power Line }}}

" ============================= Air Line {{{
set laststatus=2 "appear all the time
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1 " Use powerline fonts

" Air Line }}}

" ============================= Ctrl P {{{
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

" Ctrl P }}}



" ============================= NerdTree {{{
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
" ignore files in NERDTree
let NERDTreeIgnore=['\.pyc','\~$','\.swp','.DS_Store','.idea','.tmp']
" 显示书签列表
let NERDTreeShowBookmarks=1

" ============================= Vim Nerdtree Tabs
" 在终端启动vim时，共享打开NERDTree
" let g:nerdtree_tabs_open_on_console_startup=1

" ============================= Nerdtree Git Plugin
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

" NerdTree }}}

" Plugin Config }}}

" =============================================== Plugin Key Mapping Sheet {{{
" <leader>l  toggle location list
" <leader>q  toggle quickfix list
" <c-p>      open Ctrl-P window
" <F3>       toggle NERDTree
" <F8>       toggle TagBar
"

" Plugin Key Mapping }}}

" =============================================== Basic Config {{{

let python_highlight_all=1
let mapleader=" "

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

inoremap jk <esc>:w<CR>
nnoremap <space>f za

" set noswapfile    " don't use swap files
set encoding=utf-8  " Set the default file encoding to UTF-8:
set fileencodings=utf-8,chinese,latin-1 "
set expandtab       " Use softtabstop spaces instead of tab characters for indentation
set ts=4
set shiftwidth=4    " Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=4   " Indent by 4 spaces when pressing <TAB>

set autoindent      " Keep indentation from previous line
set smartindent     " Automatically inserts indentation in some cases
set cindent         " Like smartindent, but stricter and more customisable
set mouse=a         " Always can use mouse 
set backspace=indent,eol,start " make backspaces more powerful
set foldmethod=indent
set foldlevel=3     " default fold level on file open
set hlsearch        " 高亮显示搜索结果
set cursorline      " 高亮显示当前行/列
set cursorcolumn
set number          " turn on numbering
set showmode
set ruler
set showcmd
set cmdheight=2
set helplang=cn
set list
set listchars=tab:▸\ ,eol:¬
syntax on

" Basic Config }}}

" Settings }}}
