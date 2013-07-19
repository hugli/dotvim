set backspace=indent,eol,start
set clipboard^=unnamed
set encoding=utf-8
set fileformats=unix,dos,mac
set hidden
set keymodel=startsel,stopsel
set nobackup
set noswapfile
set pastetoggle=<F2>
set history=700

set undolevels=1000
set undofile
set undoreload=10000
set undodir=~/.vim/metadata/undo

set gdefault
set hlsearch
set ignorecase
set incsearch
set smartcase

set autoindent
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
set formatoptions=qrn1
set spelllang=en_gb
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set textwidth=79

nmap Y y$
runtime! macros/matchit.vim

call tcomment#DefineType('cmusrc', '# %s')
let g:vimwiki_list = [{'path': '~/.vimwiki/', 'path_html': '~/.vimwiki/html/', 'auto_export': 1}]


" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc




nnoremap / /\v
vnoremap / /\v

noremap Q <nop>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

nnoremap j gj
nnoremap k gk
nnoremap ' `
nnoremap ` '

" vnoremap < <gv  " better indentation
" vnoremap > >gv  " better indentation
vnoremap < <`[V`]k  " better indentation
vnoremap > >`[V`]k  " better indentation


nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

nnoremap <silent> <leader>n  : set hlsearch!<CR>
nnoremap <silent> <leader>s  : set nolist!<CR>
nnoremap <silent> <leader>w  : set wrap!<CR>
nnoremap <silent> <leader>l  : set spell!<CR>
nnoremap <silent> <leader>ve : tabedit $MYVIMRC<CR>
nnoremap <silent> <leader>vs : source $MYVIMRC<CR>
nnoremap <silent> <leader>u  : GundoToggle<CR>

inoremap <C-c> 

inoremap {} {}<Left>
inoremap [] []<Left>
inoremap () ()<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap <> <><Left>

cnoremap {} {}<Left>
cnoremap [] []<Left>
cnoremap () ()<Left>
cnoremap "" ""<Left>
cnoremap '' ''<Left>
cnoremap <> <><Left>

iab lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit
iab llorem Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Etiam lacus ligula, accumsan id imperdiet rhoncus, dapibus vitae arcu.  Nulla non quam erat, luctus consequat nisi
iab lllorem Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Etiam lacus ligula, accumsan id imperdiet rhoncus, dapibus vitae arcu.  Nulla non quam erat, luctus consequat nisi.  Integer hendrerit lacus sagittis erat fermentum tincidunt.  Cras vel dui neque.  In sagittis commodo luctus.  Mauris non metus dolor, ut suscipit dui.  Aliquam mauris lacus, laoreet et consequat quis, bibendum id ipsum.  Donec gravida, diam id imperdiet cursus, nunc nisl bibendum sapien, eget tempor neque elit in tortor
"
" vim:foldmethod=marker
