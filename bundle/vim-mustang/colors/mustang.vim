" Maintainer:	Henrique C. Alves (hcarvalhoalves@gmail.com)
" Version:      1.0
" Last Change:	September 25 2008

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "mustang"

" Vim >= 7.0 specific colors
if version >= 700
  hi cursorline guibg=#2d2d2d ctermbg=236 cterm=none
  hi cursorcolumn guibg=#2d2d2d ctermbg=236
  hi matchparen guifg=#d0ffc0 guibg=#2f2f2f gui=bold ctermfg=157 ctermbg=237 cterm=bold
  hi pmenu 		guifg=#ffffff guibg=#444444 ctermfg=255 ctermbg=238
  hi pmenusel 	guifg=#000000 guibg=#b1d631 ctermfg=0 ctermbg=148
endif

" general colors
hi cursor       guifg=none     guibg=#626262      gui=none     ctermbg=241
hi normal       guifg=#e2e2e5  guibg=#202020      gui=none     ctermfg=249   ctermbg=234
hi nontext      guifg=#808080  guibg=#303030      gui=none     ctermfg=236   ctermbg=234
hi linenr       guifg=#808080  guibg=#000000      gui=none     ctermfg=244   ctermbg=232
hi foldcolumn       guifg=#808080  guibg=#000000      gui=none     ctermfg=244   ctermbg=232
hi statusline   guifg=#d3d3d5  guibg=#444444      gui=italic   ctermfg=253   ctermbg=238     cterm=italic
hi statuslinenc guifg=#939395  guibg=#444444      gui=none     ctermfg=246   ctermbg=238
hi vertsplit    guifg=#444444  guibg=#444444      gui=none     ctermfg=234   ctermbg=233
hi folded       guibg=#384048  guifg=#a0a8b0      gui=none     ctermbg=240     ctermfg=white
hi title        guifg=#f6f3e8  guibg=none         gui=bold     ctermfg=254   cterm=bold
hi visual       guifg=#faf4c6  guibg=#3c414c      gui=none     ctermfg=254   ctermbg=4
hi specialkey   guifg=#808080  guibg=#343434      gui=none     ctermfg=244   ctermbg=236
hi tablinefill  ctermfg=249 ctermbg=242 cterm=underline
hi tablinesell  ctermfg=7 ctermbg=234
hi tabline      ctermfg=249 ctermbg=242

" syntax highlighting
hi comment      guifg=#808080   gui=italic       ctermfg=240
hi todo         guifg=#8f8f8f   gui=italic       ctermfg=245
hi boolean      guifg=#b1d631   gui=none         ctermfg=148
hi string       guifg=#b1d631   gui=italic       ctermfg=148
hi identifier   guifg=#b1d631   gui=none         ctermfg=148
hi function     guifg=#ffffff   gui=bold         ctermfg=255
hi type         guifg=#7e8aa2   gui=none         ctermfg=103
hi statement    guifg=#7e8aa2   gui=none         ctermfg=103
hi keyword      guifg=#ff9800   gui=none         ctermfg=208
hi constant     guifg=#ff9800   gui=none         ctermfg=208
hi number       guifg=#ff9800   gui=none         ctermfg=208
hi special      guifg=#ff9800   gui=none         ctermfg=208
hi preproc      guifg=#faf4c6   gui=none         ctermfg=230
hi todo         guifg=#000000   guibg=#e6ea50    gui=italic

" code-specific colors
hi pythonoperator guifg=#7e8aa2 gui=none ctermfg=103

