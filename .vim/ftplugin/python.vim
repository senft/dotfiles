map <F7> :!pep8 %<CR>

map <F5> :w<CR>:!chmod +x %<CR>:!./%<CR>
map <F6> :w<CR>:!./.run <CR>
set colorcolumn=80

" Completion
set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

set foldmethod=indent
set foldlevel=99

" For comment-indeting
set cindent
set cinkeys=0{,0},!^F,o,O,e " default is: 0{,0},0),:,0#,!^F,o,O,e

