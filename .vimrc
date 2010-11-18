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

filetype plugin on
syntax on
set hlsearch

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if has("gui_running")
	:set guioptions-=T "remove toolbar
	:set guioptions-=r "remove right-hand scroll-bar
	:set guifont=Envy\ Code\ R\ 10
	:color railscasts
else
	:color delek
endif

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

  " For all text files set 'textwidth' to 80 characters.
  autocmd FileType text setlocal textwidth=80

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

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif


" force using hjkl$
map <Up> <nop>
map <Down> <nop>
map <Left> <nop>
map <Right> <nop>
imap <Up> <nop>
imap <Down> <nop>
imap <Left> <nop>
imap <Right> <nop>

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <F10> :BufExplorer<CR>
nnoremap <silent> <F11> :bn<CR>
nnoremap <silent> <F12> :bp<CR>
 
" taglist
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_WinWidth = 50

" PYTHON
" Start python on F5
autocmd FileType python map <F5> :w<CR>:!python "%"<CR>
autocmd FileType sh   map <F5> :w<CR>:!/bin/bash "%"<CR>

" autoindent "next" line
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" C/C++
" Start on F5
autocmd FileType c map <F5> \rr
