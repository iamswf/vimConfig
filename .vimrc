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
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'ctrlpvim/ctrlp.vim'

" 配色方案
Plugin 'sickill/vim-monokai'
Plugin 'altercation/vim-colors-solarized'

" 自动关闭插件(autoClose跟YouCompleteMe不兼容)
Plugin 'Raimondi/delimitMate'

" 自动补全插件
Plugin 'ternjs/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'

" html插件
Plugin 'mattn/emmet-vim'

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

" -------------------------plugin settings-----------------------
nmap <Leader>n :NERDTreeTabsToggle<CR>

" -------------------------settings-------------------------------
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
colorscheme monokai

" emmet
imap ,, <C-y>,

" YouCompleteMe highlight
highlight Pmenu ctermbg=green
highlight PmenuSel ctermbg=green ctermfg=red

" YouCompleteMe close the 'preview' window
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
