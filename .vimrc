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

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

"filetype plugin on
set hlsearch

set guioptions-=T   " remove toolbar
set guioptions-=r   " remove right-hand scroll-bar
set guifont=Envy\ Code\ R\ 10
"set mousehide
set mouse=a

color railscasts

" Press Space to disable hilighting (after search)
:noremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Buffers - explore/next/previous: F10, F11, F12.
nnoremap <silent> <F10> :BufExplorer<CR>
nnoremap <silent> <F11> :bn<CR>
nnoremap <silent> <F12> :bp<CR>
 
" taglist
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_WinWidth = 50
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
nnoremap <silent> <F4> :TlistToggle<CR>

" Toggle paste mode with F2
nnoremap <F12> :set invpaste paste?<CR>
set pastetoggle=<F12>
set showmode

" Toggle spellcheck with F11
map <F11> :set spell!<CR><Bar>:echo "Spell Check: " . strpart("OffOn", 3 * &spell, 3)<CR>
