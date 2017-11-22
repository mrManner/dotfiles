" Mostly harmless. StolEN from everywhere. Jag tar avstånd.
set nocompatible

" ================================== PLUGINS ==================================

filetype off

set t_Co=256


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" UI 
Plugin 'git@github.com:vim-airline/vim-airline'
Plugin 'git@github.com:vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'															" Find files fuzzily
Plugin 'airblade/vim-gitgutter'											" Show git status per line
" Utils
Plugin 'vim-scripts/characterize.vim'								" Info on characters
Plugin 'git@github.com:vim-scripts/gitignore.git'		" Auto set wildignore
Plugin 'git@github.com:mtth/scratch.vim.git'				" gs is your friend
" Misc syntax
Plugin 'vim-scripts/tex-syntax'
Plugin 'adimit/prolog.vim'
Plugin 'git@github.com:mrk21/yaml-vim.git'
" HTML 
Plugin 'git@github.com:mattn/emmet-vim.git'							" Write html the lazy way
Plugin 'git@github.com:othree/html5.vim.git'
" Javascript
Plugin 'git@github.com:pangloss/vim-javascript.git'
Plugin 'git@github.com:mxw/vim-jsx'
Plugin 'git@github.com:kchmck/vim-coffee-script.git'
" Python 
Plugin 'nvie/vim-flake8'
" SQL
Plugin 'git@github.com:exu/pgsql.vim.git'
" Haskell
Plugin 'git@github.com:raichoo/haskell-vim.git'
Plugin 'git@github.com:eagletmt/ghcmod-vim.git'
Plugin 'git@github.com:eagletmt/neco-ghc.git'
Plugin 'git@github.com:godlygeek/tabular.git'
Plugin 'git@github.com:enomsg/vim-haskellConcealPlus.git'
Plugin 'git@github.com:Shougo/vimproc.vim.git'
" God knows
Plugin 'vim-scripts/unicode.vim'
" Writing
Plugin 'reedes/vim-pencil'
Plugin 'tpope/vim-markdown'
" Colors
Plugin 'altercation/vim-colors-solarized'
Plugin 'reedes/vim-colors-pencil'
Plugin 'git@github.com:pbrisbin/vim-colors-off.git'
Plugin 'git@github.com:andreasvc/vim-256noir.git'
Plugin 'git@github.com:chriskempson/base16-vim'
Plugin 'git@github.com:zeis/vim-kolor.git'

call vundle#end()            " required

" Airline
let g:airline_powerline_fonts = 1
set laststatus=2 " actually show it
let g:airline_theme = 'kolor'
set noshowmode
set fillchars+=stl:\ ,stlnc:\


" ================================== BASICS ===================================

set number              " even smarter
set relativenumber		" show smart line numbers
set showcmd		        " show command in bottom bar
set wildmenu		    " visual autocompletion of commands
set lazyredraw		    " less drawing, more speed
set scrolloff=12        " I hate looking at the last rows of the window...

set term=screen-256color
set background=dark
colo kolor

set encoding=utf-8
" ============================= SYNTAX & FILE TYPES ===========================

filetype plugin indent on
syntax enable

" Specifics
au BufRead,BufNewFile *.md set filetype=markdown " .md is Makrdown


" =================================== EDITING =================================

set tabstop=4		" visual spaces/tab char
set softtabstop=4	" number of spaces when editing

" More visuals
set showmatch           " brackets
set colorcolumn=80

set shiftwidth=2
 
" ================================= SEARCH ====================================

set incsearch		" search as characters are entered
set hlsearch		" highlight matches
" remove highlights from previous search:
nnoremap <leader><space> :nohlsearch<CR>

" ================================ KEYMAPPING =================================

" === Leader shortcuts ===
let mapleader=","

nnoremap ± :tabprevious<CR>
nnoremap § :tabnext<CR>

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" ================================= FILE TYPES ================================

" Coffee Script
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab


" =================================== BACKUP ==================================

" move backups to /tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,.
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,.
set writebackup


" =================================== HASKELL==================================

let g:haskell_enable_quantification = 1
let g:haskell_enable_recursivedo = 1
let g:haskell_enable_arrowsyntax = 1
let g:haskell_enable_pattern_synonyms = 1
let g:haskell_enable_typeroles = 1
let g:haskell_enable_static_pointers = 1


" =================================== JSX =====================================

