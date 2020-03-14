set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/goyo.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'buoto/gotests-vim'
"Plugin 'taglist.vim'
Plugin 'majutsushi/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on

filetype on
syntax enable

set autoindent
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set softtabstop=4
set cindent
set nu
set ruler
set background=dark
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set textwidth=75
set cursorline "突出显示当前行
set nobackup "禁止备份文件
set noswapfile "禁止交换文件
set autochdir "自动切换工作目录为当前目录"
set backspace=indent,eol,start "修复退格键无法使用的问题
set hlsearch
set t_Co=256
set guifont=Monaco:h15
set noerrorbells "关闭报警声
set completeopt-=preview  "关闭新开窗口提示函数参数信息
set mouse=a
colorscheme molokai

imap [ []<ESC>i
imap { {}<ESC>i
imap ( ()<ESC>i
inoremap " ""<ESC>i<ESC>a
imap <C-a> <ESC>A<CR>
imap <C-j> <ESC>i
imap <C-l> <ESC>la
nmap <C-=> <C-W>+
nmap <C--> <C-W>-

"move
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k

autocmd FileType c,cpp,go imap { {<CR>}<ESC>O

let mapleader = ","
nmap <leader>d :bp<bar>sp<bar>bn<bar>bd<CR>

"buffer config
set hidden
nmap - :bprevious<CR>
nmap = :bnext<CR>

"tab config
set laststatus=2
nmap <C-c> :tabclose<CR>
nmap _ :tabprevious<CR>
nmap + :tabnext<CR>

"Goyo
nmap <leader>z :Goyo<CR>

"nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd! bufwritepost vimrc source $MY_VIMRC

"taglist/targbar
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1
map t :TagbarToggle<CR>  
"let tagbar_left = 1
"autocmd VimEnter * TlistOpen

"vim-go-----------
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_functions = 1
"let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
"let g:go_metalinter_autosave = 1
"let g:go_metalinter_autosave_enabled = ['vet', 'golint']
"let g:go_metalinter_deadline = "5s"
let g:go_addtags_transform = "camelcase"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

autocmd FileType go nmap <Leader>i <Plug>(go-info)
let g:go_auto_type_info = 1
set updatetime=100
"---------

let g:airline_powerline_fonts = 1

let g:airline_theme='luna'
"let g:airline_theme='random'
"let g:airline_theme='zenburn'
"let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
