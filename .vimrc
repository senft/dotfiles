" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup		" do not keep a backup file, use versions instead
set nowritebackup
set noswapfile		" (additionally disable swap files)

set history=50		" keep 50 lines of command line history
set ruler			" show the cursor position all the time
set showcmd			" display incomplete commands
set number			" display line numbers
set incsearch		" do incremental searching

set modeline 		" use vim-directives in files

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

filetype plugin on
syntax on
set hlsearch

if has("gui_running")
	:set guioptions-=T "remove toolbar
	:set guioptions-=r "remove right-hand scroll-bar
	:set guifont=Envy\ Code\ R\ 10
    :set mousehide
endif

:color railscasts

" Press Space to disable hilighting (after search)
:noremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else
  set autoindent		" always set autoindenting on
endif " has("autocmd")

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <F10> :BufExplorer<CR>
nnoremap <silent> <F11> :bn<CR>
nnoremap <silent> <F12> :bp<CR>
 
" taglist
nnoremap <silent> <F4> :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_WinWidth = 50
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
" Build tags for current directory
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Start shit on F5
autocmd FileType c map <F5> \rr
autocmd FileType cpp map <F5> \rr
autocmd FileType python map <F5> :w<CR>:!python2 "%"<CR>
autocmd FileType sh map <F5> :w<CR>:!bash "%"<CR>
