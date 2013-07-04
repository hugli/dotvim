" Maintainer:	Marcel Hrdina
" Version:      1.0
" Last Change:	Wed  3 Jul 2013 14:50:41 BST

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif
let colors_name = "marcel"

" let NN="NONE" " {{{
" let bg0=232
" let bg1=233
" let bg2=234
" let bg3=235
" let bg4=236
" let fg=247
" let fg_dim=237
" let fg_br=231
" let green=113
" let green_dim=58
" let green_br=226
" let red=160
" let red_dim=124
" let red_br=196
" let orange=208
" let orange_dim=94
" let orange_br=214
" let blue=33
" let blue_dim=26
" let blue_br=30  "}}}

" let colourscheme = [ " {{{
" \ ["Comment",              fg_dim,      NN,         NN],
" \ ["CursorLine",           NN,          bg2,        NN],
" \ ["Directory",            NN,          NN,         NN],
" \ ["FoldColumn",           fg_dim,      bg1,        NN],
" \ ["Folded",               NN,          bg4,        NN],
" \ ["Function",             fg_br,       NN,         NN],
" \ ["Identifier",           NN,          NN,         NN],
" \ ["IncSearch",            fg_dim,      orange_br,  NN],
" \ ["LineNr",               fg_dim,      bg1,        NN],
" \ ["MatchParen",           fg_br,       NN,         NN],
" \ ["NonText",              fg_dim,      NN,         NN],
" \ ["Normal",               fg,          bg0,        NN],
" \ ["Number",               red_dim,     NN,         NN],
" \ ["Pmenu",                fg,          bg2,        NN],
" \ ["PmenuSel",             fg_br,       bg4,        NN],
" \ ["PreProc"  ,            fg_br,       NN,         NN],
" \ ["Search",               NN,          NN,         "reverse"],
" \ ["Special",              orange_dim,  NN,         NN],
" \ ["SpecialKey",           fg_dim,      NN,         NN],
" \ ["SpellBad",             red_br,      NN,         "underline"],
" \ ["SpellCap",             NN,          NN,         "underline"],
" \ ["SpellLocal",           NN,          NN,         "underline"],
" \ ["SpellRare",            NN,          NN,         "underline"],
" \ ["Statement",            orange,      NN,         NN],
" \ ["StorageClass",         NN,          NN,         NN],
" \ ["String",               green,       NN,         NN],
" \ ["TabDivider",          fg_dim,       bg0,        NN],
" \ ["TabLine",              fg_dim,      bg0,         NN],
" \ ["TabLineFill",          NN,          bg0,        NN],
" \ ["TabLineSell",          fg_br,       bg0,        NN],
" \ ["Title",                NN,          NN,         NN],
" \ ["Todo",                 NN,          NN,         NN],
" \ ["Type",                 NN,          NN,         NN],
" \ ["Underlined",           NN,          NN,         NN],
" \ ["VertSplit",            NN,          NN,         NN],
" \ ["Visual",               NN,          bg3,        NN],
" \ ["pythonStrFormatting",  green_br,    NN,         NN],
" \ ] " }}}


hi  Comment               ctermfg=237     ctermbg=None    cterm=None
hi  CursorLine            ctermfg=None    ctermbg=234     cterm=None
hi  Directory             ctermfg=None    ctermbg=None    cterm=None
hi  FoldColumn            ctermfg=237     ctermbg=233     cterm=None
hi  Folded                ctermfg=None    ctermbg=236     cterm=None
hi  Function              ctermfg=236     ctermbg=226     cterm=None
hi  Identifier            ctermfg=None    ctermbg=None    cterm=None
hi  IncSearch             ctermfg=237     ctermbg=214     cterm=None
hi  LineNr                ctermfg=237     ctermbg=233     cterm=None
hi  MatchParen            ctermfg=236     ctermbg=None    cterm=None
hi  NonText               ctermfg=237     ctermbg=None    cterm=None
hi  Normal                ctermfg=247     ctermbg=232     cterm=None
hi  Number                ctermfg=124     ctermbg=None    cterm=None
hi  Pmenu                 ctermfg=247     ctermbg=234     cterm=None
hi  PmenuSel              ctermfg=231     ctermbg=236     cterm=None
hi  PreProc               ctermfg=236    ctermbg=None   cterm=None
hi  Search                ctermfg=None    ctermbg=None    cterm=reverse
hi  Special               ctermfg=94      ctermbg=None    cterm=None
hi  SpecialKey            ctermfg=237     ctermbg=None    cterm=None
hi  SpellBad              ctermfg=196     ctermbg=None    cterm=underline
hi  SpellCap              ctermfg=None    ctermbg=None    cterm=underline
hi  SpellLocal            ctermfg=None    ctermbg=None    cterm=underline
hi  SpellRare             ctermfg=None    ctermbg=None    cterm=underline
hi  Statement             ctermfg=208     ctermbg=None    cterm=None
hi  StorageClass          ctermfg=None    ctermbg=None    cterm=None
hi  String                ctermfg=green   ctermbg=None    cterm=None
hi  TabDivider            ctermfg=237     ctermbg=232     cterm=None
hi  TabLine               ctermfg=237     ctermbg=232     cterm=None
hi  TabLineFill           ctermfg=None    ctermbg=232     cterm=None
hi  TabLineSell           ctermfg=236     ctermbg=232     cterm=None
hi  Title                 ctermfg=None    ctermbg=None    cterm=None
hi  Todo                  ctermfg=None    ctermbg=None    cterm=None
hi  Type                  ctermfg=None    ctermbg=None    cterm=None
hi  Underlined            ctermfg=None    ctermbg=None    cterm=None
hi  VertSplit             ctermfg=None    ctermbg=None    cterm=None
hi  Visual                ctermfg=None    ctermbg=235     cterm=None
hi  pythonStrFormatting   ctermfg=226     ctermbg=None    cterm=None
