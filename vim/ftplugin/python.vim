setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=120
setlocal smarttab
setlocal expandtab
setlocal nosmartindent

" === Folding ===
set foldenable		" enable folding
set foldlevelstart=10	" open most folds by default
set foldnestmax=10	" maximum 10 nested folds
set foldmethod=indent	" fold based on indent level (good for python!)

let g:syntastic_python_checkers = ['flake8', 'python']
