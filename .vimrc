" Mostly harmless. StolEN from everywhere. Jag tar avstånd.
set shell=/bin/bash
set nocompatible
set shell=/bin/bash

" ================================== PLUGINS ==================================

filetype off


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" UI
Plugin 'git@github.com:vim-airline/vim-airline'
Plugin 'git@github.com:vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'															" Find files fuzzily
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'roblillack/vim-bufferlist'
" Bazel
Plugin 'google/vim-maktaba'
Plugin 'bazelbuild/vim-bazel'
" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
" Utils
Plugin 'vim-scripts/characterize.vim'								" Info on characters
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-abolish'
Plugin 'neomake/neomake'
" Misc syntax
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-scripts/tex-syntax'
Plugin 'adimit/prolog.vim'
Plugin 'git@github.com:mrk21/yaml-vim.git'
Plugin 'hashivim/vim-terraform'
" Go
Plugin 'fatih/vim-go'
" HTML
Plugin 'git@github.com:mattn/emmet-vim.git'							" Write html the lazy way
Plugin 'git@github.com:othree/html5.vim.git'
Plugin 'hail2u/vim-css3-syntax'
" Mail
Plugin 'neomutt/neomutt.vim' " Make vim work with neomutt (like with mutt)
" Javascript
Plugin 'git@github.com:pangloss/vim-javascript.git'
Plugin 'git@github.com:kchmck/vim-coffee-script.git'
" Python
Plugin 'nvie/vim-flake8'
" Haskell
Plugin 'git@github.com:raichoo/haskell-vim.git'
Plugin 'Twinside/vim-haskellFold'
Plugin 'git@github.com:eagletmt/neco-ghc.git'
Plugin 'git@github.com:enomsg/vim-haskellConcealPlus.git'
Plugin 'git@github.com:Shougo/vimproc.vim.git'
" PHP
Plugin 'StanAngeloff/php.vim'
Plugin 'stephpy/vim-php-cs-fixer'
" Writing
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'junegunn/goyo.vim'
" Colors
Plugin 'git@github.com:ujihisa/tabpagecolorscheme.git' " colors per tab
Plugin 'altercation/vim-colors-solarized'
Plugin 'git@github.com:zeis/vim-kolor.git'
Plugin 'git@github.com:pgdouyon/vim-yin-yang.git'
Plugin 'git@github.com:vim-scripts/bw.vim.git'
" wiki
Plugin 'vimwiki/vimwiki'
Plugin 'mattn/calendar-vim'

call vundle#end()            " required

" ============================= SYNTAX & FILE TYPES ===========================
set ffs=unix,mac,dos
filetype plugin indent on
syntax enable

" Specifics
au BufRead,BufNewFile *.md set filetype=markdown " .md is Makrdown

set tags=./tags;,tags;

" ==================================== UI =====================================

set number              " even smarter
set relativenumber		" show smart line numbers
set showcmd		        " show command in bottom bar
set wildmenu		    " visual autocompletion of commands
set lazyredraw		    " less drawing, more speed
set scrolloff=12        " I hate looking at the last rows of the window...
let g:solarized_termtrans =   1

set term=screen
set t_Co=16

au VimEnter * NoMatchParen

"  Rainbow parenthesis
"let g:rbpt_colorpairs = [
"   \ ['brown',       'RoyalBlue3'],
"   \ ['Darkblue',    'SeaGreen3'],
"   \ ['darkgray',    'DarkOrchid3'],
"   \ ['darkgreen',   'firebrick3'],
"   \ ['darkcyan',    'RoyalBlue3'],
"   \ ['darkred',     'SeaGreen3'],
"   \ ['darkmagenta', 'DarkOrchid3'],
"   \ ['brown',       'firebrick3'],
"   \ ['gray',        'RoyalBlue3'],
"   \ ['black',       'SeaGreen3'],
"   \ ['darkmagenta', 'DarkOrchid3'],
"   \ ['Darkblue',    'firebrick3'],
"   \ ['darkgreen',   'RoyalBlue3'],
"   \ ['darkcyan',    'SeaGreen3'],
"   \ ['darkred',     'DarkOrchid3'],
"   \ ['red',         'firebrick3'],
"   \ ]
"
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesActivate
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


" =================================== UNDO ====================================
set undodir=~/.vim-tmp/undo
set undofile " PERSISTENT `undo` IS AWESOME!

" =================================== EDITING =================================

set tabstop=4		" visual spaces/tab char
set softtabstop=4	" number of spaces when editing
set shiftwidth=4
set autoindent

set backspace=0
set encoding=utf-8
setglobal fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,iso-8859-1

" ================================= SEARCH ====================================

set incsearch		" search as characters are entered
set hlsearch		" highlight matches
" remove highlights from previous search:
nnoremap <leader><space> :nohlsearch<CR>

set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m

" ================================ KEYMAPPING =================================

" === Leader shortcuts ===
let mapleader="\\"

noremap <leader>* :Ack <cword><cr>
			
nnoremap ± :bprevious<CR>
nnoremap § :bnext<CR>
nnoremap ~ :bprevious<CR>
nnoremap ` :bnext<CR>

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
inoremap <leader>f <C-O>za
nnoremap <leader>f za

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <C-b> :call BufferList()<CR>

nmap <silent> <C-P> :CtrlP .<CR>
nmap <silent> <C-u> :CtrlPUndo<CR>
nmap <silent> <C-t> :CtrlPTag<cr>
nmap <silent> ; :CtrlPBuffer<cr>
let g:ctrlp_map = "<C-_>"
let g:ctrlp_prompt_mappings = {
			\ 'AcceptSelection("t")': ['<c-t>'],
			\ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
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


" ==================================== YAML ===================================
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" ================================ PLUGIN CONF ================================

" ctrl-p (use git ls-files to exclude everything in .gitignore)
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_extensions = ['dir', 'undo', 'line', 'changes', 'bookmarkdir']

" Airline
let g:airline_powerline_fonts = 1
set laststatus=2 " actually show it
let g:airline_theme = 'monochrome'
set noshowmode
set fillchars+=stl:\ ,stlnc:\

" ag instead of ack
let g:ackprg = 'ag --vimgrep --smart-case'
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack

command Q bdelete
:cabbrev q <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Q' : 'q')<CR>

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ["standard"]
let g:syntastic_enable_highlighting = 0

" sqlformat
let g:sqlfmt_command = "sqlformat"
let g:sqlfmt_options = "-r -k upper --indent_width 2 --indent_columns"


" ================================ FUNCTIONS ================================

function! Fixflowed()
	" save cursor position
	let pos = getpos(".")
	" add spaces to the end of every line
	silent! %s/\([^]> :]\)\ze\n>[> ]*[^> ]/\1 /g
	" remove extraneous spaces
	silent! %s/ \+\ze\n[> ]*$//
	" make sure there's only ONE space at the end of each line
	silent! %s/ \{2,}$/ /
	" fix the wockas spacing from the text
	silent! %s/^[> ]*>\ze[^> ]/& /
	" compress the wockas
	while search('^>\+ >', 'w') > 0
		s/^>\+\zs >/>/
	endwhile
	" restore the original cursor location
	call setpos('.',pos)
endfunction


function! Fixindented()
"	remove spaces at end of indented lines
	silent! %s/^\s.*\zs \+$//
endfunction


let g:vimwiki_list = [
			\{'path': '~/wiki','syntax': 'markdown', 'ext': '.md'},
			\]
au FileType vimwiki set syntax=markdown
au FileType vimwiki set nowrap
