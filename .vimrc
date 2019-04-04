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
" Plugin 'ctrlpvim/ctrlp.vim'

" 配色方案
Plugin 'sickill/vim-monokai'
Plugin 'yosiat/oceanic-next-vim'

" 自动关闭插件(autoClose跟YouCompleteMe不兼容)
" Plugin 'Raimondi/delimitMate'

" 自动补全插件
" Plugin 'ternjs/tern_for_vim'
" Plugin 'Valloric/YouCompleteMe'

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
" 设置编码
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

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

" 窗口划分
set splitright
set splitbelow

" 调整窗口大小
nmap <S-j> :resize -1<CR>
nmap <S-k> :resize +1<CR>
nmap <S-h> :vertical resize -1<CR>
nmap <S-l> :vertical resize +1<CR>

" tab切换
nmap <F7> :tabp<CR>
nmap <F8> :tabn<CR>

" 插入模式花括号自动补全
imap {<CR> {<CR>}<ESC>O

" 设置主题
" colorscheme monokai
colorscheme OceanicNext

" 设置缓冲区切换快捷键
nmap [b :bprevious<CR>
nmap ]b :bnext<CR>
nmap [B :bfirst<CR>
nmap ]B :blast<CR>

" -------------------------plugin settings-----------------------
" NERDTree
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "left"
let g:NERDTreeIgnore = ['\.class$']
let g:NERDTreeShowHidden = 1
" How can I open NERDTree automatically when vim starts up on opening a directory?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" YouCompleteMe highlight
highlight Pmenu ctermbg=green
highlight PmenuSel ctermbg=green ctermfg=red

" YouCompleteMe close the 'preview' window
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" indentLine
" let g:indentLine_fileTypeExclude = ['nerdtree']
let g:indentLine_color_term = 239
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_char = '¦'
let g:indentLine_leadingSpaceEnabled = 1

