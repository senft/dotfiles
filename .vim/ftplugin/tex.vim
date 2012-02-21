set formatoptions=tcq
set textwidth=80
let g:tex_flavor = "latex"
let g:Tex_Folding = 0
let g:Tex_AutoFolding = 0

let NERDTreeIgnore=['\.aux$', '\.log$', '\.lof$', '\.toc$']

" Bind \ll (compile) and \lv (view) to F5
:map <F5> \ll<CR>\lv
