PencilOff
setlocal fo=atcrqn1w
setl tw=72

autocmd Filetype mail command! Fixq call Fixflowed()
autocmd Filetype mail autocmd BufWritePre <buffer> call Fixindented()

