" Vim color file
" Original: blackboard by Ben Wyrosdick
" (http://www.vim.org/scripts/script.php?script_id=2280)
"
" Modified by senft, 01.04.2011, 28.05.2011 (Modified color of current
" hilighted Buffer and fold mark, added 'self' hilighting for Python)
" Added cterm-colors for most things (Python and TeX looks like in GUI)

set bg=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "blackboard"

if version >= 700
  hi CursorLine  guibg=#222222 ctermbg=234 cterm=none
  hi ColorColumn guibg=#222222 ctermbg=233
  hi MatchParen  guifg=#333333 guibg=#cdff00 gui=bold ctermbg=119
  hi Pmenu       guifg=#404040 guibg=#dcdcdc
  hi PmenuSel    guifg=#ffffff guibg=#93b5bf
endif

hi Normal        guifg=white guibg=#191919 ctermfg=white

hi Comment       guifg=#77b4c7 gui=italic
hi Identifier    gui=bold
hi Constant      guifg=#d7fa41 gui=none ctermfg=119
hi String        guifg=#64ce3e gui=none ctermfg=83
hi Statement     guifg=#f8de33 gui=bold ctermfg=214
hi Entity        guifg=#fa6513 gui=none ctermfg=202
hi Support       guifg=#8fa6cd gui=none
hi LineNr        guifg=#aeaeae guibg=#000000 gui=none ctermfg=242
hi Title         guifg=#f6f3e8 gui=bold cterm=bold
hi NonText       guifg=#808080 gui=none
hi Folded        guifg=#f8de33 guibg=#444444 ctermfg=119 ctermbg=238
hi Visual        gui=reverse
hi VertSplit     guifg=#888888 guibg=#222222 ctermbg=233
hi HorSplit      guifg=#888888 guibg=#222222 ctermbg=233
hi StatusLine    guibg=#000000 guifg=#FFFFFF ctermbg=233 ctermfg=214
hi StatusLineNC  guifg=#888888 guibg=#222222 gui=italic ctermfg=242 ctermbg=233
hi SpecialKey    guifg=#808080 guibg=#343434 gui=none

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

hi pythonOperator guifg=#ff3b77 gui=none ctermfg=205 cterm=bold
hi pythonConstant guifg=#ff3b77 gui=bold ctermfg=205 cterm=bold
hi pythonSelf     guifg=#555555 ctermfg=240
