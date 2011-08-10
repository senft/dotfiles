syntax on
filetype plugin on

set nocompatible
set nobackup		" do not keep a backup file, use versions instead
set nowritebackup
set noswapfile		" (additionally disable swap files)

set ruler			" show the cursor position all the time
set showcmd			" display incomplete commands
set number			" display line numbers
set incsearch		" do incremental searching

set modeline 		" use vim-directives in files
set cursorline

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

set hlsearch

set guioptions-=T   " remove toolbar
set guioptions-=r   " remove right-hand scroll-bar
set guifont=Envy\ Code\ R\ 10
set mouse=a

color blackboard

" Press Space to disable hilighting (after search)
:noremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Buffers - explore/next/previous: F10, F11, F12.
nnoremap <C-Tab> :bn<CR>
 
" taglist
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Use_Right_Window = 1
let Tlist_Sort_Type = "name"
let Tlist_WinWidth = 40
let Tlist_Close_On_Select = 1
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
nnoremap <silent> <F4> :TlistToggle<CR>

let g:bufExplorerSortBy='name'
nnoremap <silent> <F10> :BufExplorer<CR>

" Toggle paste mode with F2
nnoremap <F12> :set invpaste paste?<CR>
set pastetoggle=<F12>
set showmode

" Move between windows with crtl+{hjkl}
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Restore cursor position from previously edited files
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" Load Ulti Snips
set runtimepath+=~/.vim/ultisnips_rep 

let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<s-tab>"

let g:SuperTabMappingForward='<tab>'
