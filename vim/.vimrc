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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'lifepillar/vim-mucomplete'
" Find files fuzzily
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'roblillack/vim-bufferlist'
" Bazel
Plugin 'google/vim-maktaba'
Plugin 'bazelbuild/vim-bazel'
" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
" Utils
Plugin 'vim-autoformat/vim-autoformat'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'neomake/neomake'
" Misc syntax
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-scripts/tex-syntax'
Plugin 'adimit/prolog.vim'
Plugin 'git@github.com:mrk21/yaml-vim.git'
Plugin 'hashivim/vim-terraform'
Plugin 'earthly/earthly.vim'
Plugin 'lifepillar/pgsql.vim'
" Go
Plugin 'fatih/vim-go'
" HTML
Plugin 'git@github.com:mattn/emmet-vim.git'							" Write html the lazy way
Plugin 'git@github.com:othree/html5.vim.git'
Plugin 'hail2u/vim-css3-syntax'
" Mail
Plugin 'neomutt/neomutt.vim' " Make vim work with neomutt (like with mutt)
Plugin 'adborden/vim-notmuch-address'
" C
Plugin 'https://github.com/justmao945/vim-clang.git'
" Javascript
Plugin 'git@github.com:pangloss/vim-javascript.git'
Plugin 'evanleck/vim-svelte'
Plugin 'git@github.com:kchmck/vim-coffee-script.git'
" Python
Plugin 'ambv/black'
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
Plugin 'reedes/vim-pencil'
" Colors
Plugin 'git@github.com:ujihisa/tabpagecolorscheme.git' " colors per tab
Plugin 'altercation/vim-colors-solarized'
Plugin 'git@github.com:zeis/vim-kolor.git'
Plugin 'git@github.com:pgdouyon/vim-yin-yang.git'
Plugin 'git@github.com:vim-scripts/bw.vim.git'
Plugin 'LuRsT/austere.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'pbrisbin/vim-colors-off'
Plugin 'reedes/vim-colors-pencil'
Plugin 'fxn/vim-monochrome'
Plugin 'Lokaltog/vim-monotone'
Plugin 'bdd/noclown.vim'
Plugin 'YorickPeterse/vim-paper'
Plugin 'hardselius/warlock'
Plugin 'cideM/yui'
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

":autocmd BufWritePost *.c silent !indent -linux -brf <afile> && rm <afile>~

set tags=./tags;,tags;

" ==================================== UI =====================================

set noequalalways		" don't resize splits
set number              " even smarter
set relativenumber		" show smart line numbers
set showcmd		        " show command in bottom bar
set wildmenu		    " visual autocompletion of commands
set lazyredraw		    " less drawing, more speed
set scrolloff=12        " I hate looking at the last rows of the window...
set conceallevel=1
let g:solarized_termtrans =   1

set cursorline

set term=xterm-256color-italic
set t_Co=256

colors pencil
hi Comment			ctermfg=none cterm=italic
hi Constant			ctermfg=5
hi Error			ctermbg=1
hi FoldColumn		ctermfg=green ctermbg=black
hi Folded			ctermfg=1 ctermbg=none

hi GitGutterAdd							term=standout ctermfg=10
hi GitGutterAddIntraLine				term=standout ctermfg=10
hi GitGutterAddInvisible				term=standout ctermfg=10
hi GitGutterAddLine						term=standout ctermfg=10
hi GitGutterAddLineNr					term=standout ctermfg=10
hi GitGutterChange						term=standout ctermfg=10
hi GitGutterChangeDelete				term=standout ctermfg=10
hi GitGutterChangeDeleteInvisible		term=standout ctermfg=10
hi GitGutterChangeDeleteLine			term=standout ctermfg=10
hi GitGutterChangeDeleteLineNr			term=standout ctermfg=10
hi GitGutterChangeInvisible				term=standout ctermfg=10
hi GitGutterChangeLine					term=standout ctermfg=10
hi GitGutterChangeLineNr				term=standout ctermfg=10
hi GitGutterDelete						term=standout ctermfg=10
hi GitGutterDeleteIntraLine				term=standout ctermfg=10
hi GitGutterDeleteInvisible				term=standout ctermfg=10
hi GitGutterDeleteLine					term=standout ctermfg=10
hi GitGutterDeleteLineNr				term=standout ctermfg=10

hi QuickFixLine		ctermbg=black
hi Search			ctermbg=4
hi SignColumn		term=standout ctermfg=10 ctermbg=none
hi Statement		ctermfg=none
hi String			ctermfg=5
hi Type				ctermfg=none

hi link CtrlPBufferHid Normal
hi link CtrlPBufferPath Normal
hi link CtrlPPrtBase Normal

let g:rbpt_loadcmd_toggle = 0


set completeopt+=menuone
set completeopt+=noinsert
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
au FileType mail setlocal completeopt=menuone,noselect,noinsert
let g:mucomplete#chains = { 'mail': [ 'user', 'ulti' ]}


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

" ================================= FORMAT ====================================
map gq :Autoformat<CR>
"let g:formatdef_sql = '"sqlformat --reindent_aligned --keywords upper --identifiers lower -"'
"let g:formatters_sql = ['sql']


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

" JSON
autocmd FileType json setl tabstop=2 sts=2 shiftwidth=2 expandtab
autocmd FileType json setl conceallevel=0
autocmd FileType javascript setl tabstop=2 sts=2 shiftwidth=2 expandtab
autocmd FileType svelte setl tabstop=2 sts=2 shiftwidth=2

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

command! Q bdelete
:cabbrev q <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Q' : 'q')<CR>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["go", "python"] }

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_highlighting = 1

let g:syntastic_c_checkers = ["clang_check", "clang_tidy", "flawfinder", "sparse", "mixedindentlint"]
let g:syntastic_css_checkers = ["mixedindentlint"]
let g:syntastic_dockerfile_checkers = ["hadolint"]
let g:syntastic_javascript_checkers = ["standard", "mixedindentlint"]
let g:syntastic_go_checkers = []
let g:syntastic_json_checkers = ["jsonlint", "mixedindentlint"]
let g:syntastic_python_checkers = []
let g:syntastic_sh_checkers = ["shellcheck", "shfmt"]
let g:syntastic_yaml_checkers = ["yamllint"]

" sqlformat
let g:sqlfmt_command = "sqlformat"
let g:sqlfmt_options = "-r -k upper --indent_width 2 --indent_columns"
let g:sql_type_default = 'pgsql'

" vim-go
au FileType go set foldmethod=syntax

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

let wiki = {}
let wiki.path = '~/wiki/'
let wiki.syntax = 'markdown'
let wiki.ext = '.md'
let g:vimwiki_list = [wiki]

au FileType vimwiki set syntax=markdown
au FileType vimwiki set nowrap
let g:vim_markdown_fenced_languages = ['python', 'coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html']
let g:vim_markdown_conceal_code_blocks = 0

let g:pencil_terminal_italics = 1
