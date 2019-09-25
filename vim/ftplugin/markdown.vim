syntax match Comment /\%^---\_.\{-}---$/
call pencil#init()
setlocal backspace=0
setlocal autoindent
setlocal colorcolumn=0
setlocal linebreak
setlocal nonumber
setlocal shiftwidth=4
setlocal spell
setlocal tabstop=4
setlocal wrap
let g:markdown_fenced_languages = ['javascript', 'ruby', 'sh', 'yaml', 'javascript', 'html', 'vim', 'coffee', 'json', 'diff']
