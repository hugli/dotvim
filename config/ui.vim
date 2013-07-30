" LOOK AND FEEL

" OPTIONS "{{{
set completeopt=menu,longest
set cursorline
set foldcolumn=1
set foldenable                  " enable folding
set foldlevelstart=0            " start out with everything folded
set foldmethod=manual
set foldtext=MyFoldText()
set laststatus=2
set linebreak
set listchars=tab:>-,trail:·,eol:$,extends:#,nbsp:.,precedes:@
set relativenumber
set ruler
set scrolloff=5
set showcmd
set showmatch
set showmode
set tabline=%!ShortTabLine()
set termencoding=utf-8
set ttyfast
set visualbell
set wildignore=*.swp,*.bak,*.pyc,*.mp3
set wildmenu
set wildmode=list:longest,full
set wrap

let g:Powerline_mode_n = ' N '
let g:Powerline_mode_i = ' I '
let g:Powerline_mode_R = ' R '
let g:Powerline_mode_v = ' V '
let g:Powerline_mode_V = ' V⋅LINE'
let g:Powerline_mode_cv = 'V⋅BLOCK'
let g:Powerline_mode_s = ' S '
let g:Powerline_mode_S = 'S⋅LINE'
let g:Powerline_mode_cs = 'S⋅BLOCK'
"}}}

" FUNCTIONS "{{{
function! MyFoldText()"{{{
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - 4
    " return line . ' ¿' . repeat(" ",fillcharcount) . foldedlinecount . ' '
    return line . ' ' . repeat(" ",fillcharcount) . foldedlinecount . ' '
endfunction"}}}
function! ShortTabLine()"{{{
    let ret = ''
    for i in range(tabpagenr('$'))
        if i + 1 == tabpagenr()
            let ret .= '%#TabLineSel# '
        else
            let ret .= '%#TabLine# '
        endif
        " find the buffername for the tablabel
        let buflist = tabpagebuflist(i+1)
        let winnr = tabpagewinnr(i+1)
        let buffername = bufname(buflist[winnr - 1])
        let filename = fnamemodify(buffername,':t')
        " check if there is no name
        if filename == ''
            let filename = 'noname'
        endif

        let ret .=  filename .  ' %#TabDivider#|'
    endfor
    " after the last tab fill with TabLineFill and reset tab page #
    let ret .= '%#TabLineFill#%T'
    return ret
endfunction"}}}
" }}}

" COLOURS {{{
let NN="NONE""{{{
let bg0=232
let bg1=233
let bg2=234
let bg3=235
let bg4=236
let fg=247
let fg_dim=237
let fg_br=231
let green=113
let green_dim=58
let green_br=226
let red=160
let red_dim=124
let red_br=196
let orange=208
let orange_dim=94
let orange_br=214
let blue=33
let blue_dim=26
let blue_br=30
"}}}
" SCHEME {{{
let colourscheme = [
\ ["Comment",              fg_dim,      NN,         NN],
\ ["CursorLine",           NN,          bg2,        NN],
\ ["Directory",            NN,          NN,         NN],
\ ["FoldColumn",           fg_dim,      bg1,        NN],
\ ["Folded",               NN,          bg4,        NN],
\ ["Function",             fg_br,       NN,         NN],
\ ["Identifier",           NN,          NN,         NN],
\ ["IncSearch",            fg_dim,      orange_br,  NN],
\ ["LineNr",               fg_dim,      bg1,        NN],
\ ["MatchParen",           fg_br,       NN,         NN],
\ ["NonText",              fg_dim,      NN,         NN],
\ ["Normal",               fg,          bg0,        NN],
\ ["Number",               red_dim,     NN,         NN],
\ ["Pmenu",                fg,          bg2,        NN],
\ ["PmenuSel",             fg_br,       bg4,        NN],
\ ["PreProc"  ,            fg_br,       NN,         NN],
\ ["Search",               NN,          NN,         "reverse"],
\ ["Special",              orange_dim,  NN,         NN],
\ ["SpecialKey",           fg_dim,      NN,         NN],
\ ["SpellBad",             red_br,      NN,         "underline"],
\ ["SpellCap",             NN,          NN,         "underline"],
\ ["SpellLocal",           NN,          NN,         "underline"],
\ ["SpellRare",            NN,          NN,         "underline"],
\ ["Statement",            orange,      NN,         NN],
\ ["StorageClass",         NN,          NN,         NN],
\ ["String",               green,       NN,         NN],
\ ["TabDivider",          fg_dim,       bg0,        NN],
\ ["TabLine",              fg_dim,      bg0,         NN],
\ ["TabLineFill",          NN,          bg0,        NN],
\ ["TabLineSell",          fg_br,       bg0,        NN],
\ ["Title",                NN,          NN,         NN],
\ ["Todo",                 NN,          NN,         NN],
\ ["Type",                 NN,          NN,         NN],
\ ["Underlined",           NN,          NN,         NN],
\ ["VertSplit",            NN,          NN,         NN],
\ ["Visual",               NN,          bg3,        NN],
\ ["pythonStrFormatting",  green_br,    NN,         NN],
\ ]
"}}}
for i in colourscheme"{{{
    exe "hi ".i[0]." ctermfg=".i[1]." ctermbg=".i[2]." cterm=".i[3]
endfor
unlet i
"}}}
hi Comment ctermfg=237 ctermbg=NONE cterm=NONE
" }}}

" BEHAVIOUR {{{
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
au FocusLost * :wa
" }}}







" vim:foldmethod=marker
