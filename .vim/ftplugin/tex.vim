filetype plugin indent on

set spell
set spelllang=de

set formatoptions=tcq
set textwidth=80

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "pdflatex"
:TTarget pdf
let g:Tex_Folding = 1
let g:Tex_AutoFolding = 1

let NERDTreeIgnore=['\.aux$', '\.log$', '\.lof$', '\.toc$']
