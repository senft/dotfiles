filetype plugin indent on

set formatoptions=tcq
set textwidth=80

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:Tex_Folding = 1
let g:Tex_AutoFolding = 1

let NERDTreeIgnore=['\.aux$', '\.log$', '\.lof$', '\.toc$']
