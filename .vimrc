set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'ajh17/VimCompletesMe'
"Plugin 'lifepillar/vim-mucomplete'

Plugin 'flazz/vim-colorschemes'

Plugin 'jelera/vim-javascript-syntax'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on 
filetype on



" Tabs and stuff
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" " use indentation of previous line
set autoindent
" " use intelligent indentation for C
set smartindent
set smarttab

" " configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
set softtabstop=4

" " wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
set fileformat=unix

" " turn syntax highlighting on
syntax on
set showcmd
" " turn line numbers on
set number
" " highlight matching braces
set showmatch

set clipboard=unnamed
" " key maps
inoremap jk <Esc>
inoremap JK <Esc>
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
inoremap {<CR> {<CR>}<Esc>O
"for mucomplete
"set completeopt+=menuone
"inoremap <expr> <c-e> mucomplete#popup_exit("\<c-e>")
"inoremap <expr> <c-y> mucomplete#popup_exit("\<c-y>")
"inoremap <expr>  <cr> mucomplete#popup_exit("\<cr>")
"set completeopt+=noselect
"set completeopt-=preview
"set shortmess+=c
"set belloff+=ctrlg
"let g:mucomplete#enable_auto_at_startup = 1

"gets rid of weird comments and indents
au! FileType python setl nosmartindent
highlight Comment cterm=bold
au FileType * set fo-=c fo-=r fo-=o

"make molokai color scheme look better
hi MatchParen cterm=none ctermbg=green ctermfg=blue
set t_Co=256;
colorscheme molokai

