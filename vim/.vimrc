" Mostly harmless. StolEN from everywhere. Jag tar avstånd.
set shell=/bin/bash
set nocompatible
set shell=/bin/bash

" ================================== PLUGINS ==================================

filetype off


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()

" let Vundle manage Vundle, required
Plug 'gmarik/Vundle.vim'
" UI
Plug 'git@github.com:vim-airline/vim-airline'
Plug 'git@github.com:vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lifepillar/vim-mucomplete'
" Find files fuzzily
Plug 'kien/rainbow_parentheses.vim'
Plug 'roblillack/vim-bufferlist'
" Bazel
Plug 'google/vim-maktaba'
Plug 'bazelbuild/vim-bazel'
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Utils
Plug 'vim-autoformat/vim-autoformat'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'neomake/neomake'
" Misc syntax
Plug 'vim-syntastic/syntastic'
Plug 'vim-scripts/tex-syntax'
Plug 'adimit/prolog.vim'
Plug 'git@github.com:mrk21/yaml-vim.git'
Plug 'hashivim/vim-terraform'
Plug 'earthly/earthly.vim'
Plug 'lifepillar/pgsql.vim'
" Go
Plug 'fatih/vim-go'
" HTML
Plug 'git@github.com:mattn/emmet-vim.git'							" Write html the lazy way
Plug 'git@github.com:othree/html5.vim.git'
Plug 'hail2u/vim-css3-syntax'
" Mail
Plug 'neomutt/neomutt.vim' " Make vim work with neomutt (like with mutt)
Plug 'adborden/vim-notmuch-address'
" C
Plug 'https://github.com/justmao945/vim-clang.git'
" Javascript
Plug 'git@github.com:pangloss/vim-javascript.git'
Plug 'evanleck/vim-svelte'
Plug 'git@github.com:kchmck/vim-coffee-script.git'
" Python
Plug 'ambv/black'
" Haskell
Plug 'git@github.com:raichoo/haskell-vim.git'
Plug 'Twinside/vim-haskellFold'
Plug 'git@github.com:eagletmt/neco-ghc.git'
Plug 'git@github.com:enomsg/vim-haskellConcealPlus.git'
Plug 'git@github.com:Shougo/vimproc.vim.git'
" PHP
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
" Writing
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-pencil'
" Colors
Plug 'git@github.com:ujihisa/tabpagecolorscheme.git' " colors per tab
Plug 'altercation/vim-colors-solarized'
Plug 'git@github.com:zeis/vim-kolor.git'
Plug 'git@github.com:pgdouyon/vim-yin-yang.git'
Plug 'git@github.com:vim-scripts/bw.vim.git'
Plug 'LuRsT/austere.vim'
Plug 'chriskempson/base16-vim'
Plug 'pbrisbin/vim-colors-off'
Plug 'reedes/vim-colors-pencil'
Plug 'fxn/vim-monochrome'
Plug 'Lokaltog/vim-monotone'
Plug 'YorickPeterse/vim-paper'
Plug 'hardselius/warlock'
Plug 'cideM/yui'
" wiki
Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()            " required

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

"set term=xterm-256color-italic

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

" CoC
" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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
au FileType go map <leader>l :GoLint<CR>
au FileType go map <leader>r :GoRename<CR>

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
