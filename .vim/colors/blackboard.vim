" Vim color file
" Original: blackboard by Ben Wyrosdick
" (http://www.vim.org/scripts/script.php?script_id=2280)
"
" Modified by senft, 01.04.2011

set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "blackboard"

if version >= 700
  hi CursorLine guibg=#4f4f4f
  hi CursorColumn guibg=#2d2d2d
  hi MatchParen guifg=#333333 guibg=#cdff00 gui=bold
  hi Pmenu 		guifg=#404040 guibg=#dcdcdc
  hi PmenuSel 	guifg=#ffffff guibg=#93b5bf
endif


hi Normal		guifg=#ffffff guibg=#000000

hi Comment	    guifg=#77b4c7 gui=italic 
hi Constant	    guifg=#d7fa41 gui=none
hi String       guifg=#64ce3e gui=none
hi Statement    guifg=#f8de33 gui=none
hi Entity       guifg=#fa6513 gui=none
hi Support      guifg=#8fa6cd gui=none
hi LineNr       guifg=#aeaeae guibg=#000000 gui=none 
hi Title		guifg=#f6f3e8 guibg=NONE	gui=bold
hi NonText 		guifg=#808080 guibg=#000000	gui=none

hi Visual       gui=reverse
hi VertSplit    guifg=#444444 guibg=#444444
hi StatusLine   guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC guifg=#857b6f guibg=#444444
hi SpecialKey	guifg=#808080 guibg=#343434 gui=none


hi link Define          Entity
hi link Function        Entity

hi link Structure       Support
hi link Special         Support
hi link Test            Support

hi link Character       Constant
hi link Number          Constant
hi link Boolean         Constant

hi link Float           Number

hi link Conditional     Statement
hi link StorageClass    Statement
hi link Operator        Statement
hi link Statement       Statement

hi pythonOperator guifg=#ff3b77 gui=none
hi pythonConstant guifg=#1A7368 gui=bold
