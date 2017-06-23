" ----------------------------Vundle-------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" -----------------自定义插件官方示例start-----------------------
" 文件树
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'ctrlpvim/ctrlp.vim'

" 配色方案
Plugin 'sickill/vim-monokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'yosiat/oceanic-next-vim'

" 自动关闭插件(autoClose跟YouCompleteMe不兼容)
Plugin 'Raimondi/delimitMate'

" 自动补全插件
Plugin 'ternjs/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'

" html插件
Plugin 'mattn/emmet-vim'

" 显示空字符插件
Plugin 'Yggdroot/indentLine'
" ------------------自定义插件官方示例end--------------------------

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" -------------------------settings-------------------------------
" 设置<Leader>键
let mapleader=","

" 设置退格可用
set backspace=2

" 显示行数
set number

" 语法高亮
syntax enable

" tab替换为4个空格
set tabstop=4
set expandtab
set shiftwidth=4

" 自动缩进
set autoindent

" 调整窗口大小
nmap <S-j> :resize -1<CR>
nmap <S-k> :resize +1<CR>
nmap <S-h> :vertical resize -1<CR>
nmap <S-l> :vertical resize +1<CR>

" 切换窗口
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

" 插入模式左右上下移动
imap <C-h> <Left>
imap <C-l> <Right>
imap <C-j> <Down>
imap <C-k> <Up>

" 插入模式花括号自动补全
imap {<CR> {<CR>}<ESC>O

" colorscheme solarized
" set background=dark
" colorscheme solarized

" colorscheme monokai

colorscheme OceanicNext

" -------------------------plugin settings-----------------------
" NERDTree
nmap <Leader>n :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup = 2
let g:nerdtree_tabs_open_on_console_startup = 2
let g:nerdtree_tabs_open_on_new_tab = 1
let g:nerdtree_tabs_focus_on_files = 1
let g:nerdtree_tabs_autofind = 1
let NERDTreeIgnore = ['\.class$']

" emmet
imap ,, <C-y>,

" YouCompleteMe highlight
highlight Pmenu ctermbg=green
highlight PmenuSel ctermbg=green ctermfg=red

" YouCompleteMe close the 'preview' window
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" indentLine
let g:indentLine_fileTypeExclude = ['nerdtree']
let g:indentLine_color_term = 239
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_char = '*'
let g:indentLine_leadingSpaceEnabled = 1

