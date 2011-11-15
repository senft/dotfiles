set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
" set nosmartindent

map <F7> :!pep8 %<CR>

map <F5> :w<CR>:!chmod +x "%"<CR>:!./"%"<CR>
map <F6> :w<CR>:!./.run <CR>
set textwidth=80
set colorcolumn=80

" Completion
set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

set foldmethod=indent
set foldlevel=99
