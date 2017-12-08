try
	Tcolorscheme pencil
catch /^Vim\%((\a+)\)\=:E492/
endtry	
try
	colo 256_noir
catch /^Vim\%((\a\+)\)\=:E185/
	colo koehler
endtry
PencilHard
set backspace=0
