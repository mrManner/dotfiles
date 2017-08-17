setlocal fo+=aw

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
	remove spaces at end of indented lines
	silent! %s/^\s.*\zs \+$//
endfunction

autocmd Filetype mail command! Fixq call Fixflowed()
autocmd Filetype mail autocmd BufWritePre <buffer> call Fixinde
