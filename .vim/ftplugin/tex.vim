let g:tex_flavor = "latex"
let g:Tex_Folding = 0
let g:Tex_AutoFolding = 0
let g:Tex_DefaultTargetFormat = "pdf"
let g:Tex_CompileRule_pdf = "pdflatex -interaction=nonstopmode $*"
let g:Tex_ViewRule_pdf = "evince $*"

" Bind \ll (compile) and \lv (view) to F5
:map <F5> \ll<CR>\lv

:set spell
:set spelllang=de,en
:set spellfile+=~/.vim/spell/tex.add
