PencilOff
setlocal fo=atcrqn1w
setlocal tw=72
setlocal comments+=nb:>

map <silent> <leader>m {gq}<Bar>:echo "Rewrapped paragraph"<CR>


autocmd Filetype mail autocmd BufWritePre <buffer> call Fixindented()
autocmd Filetype mail command! Fixq call Fixflowed()

