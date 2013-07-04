set spelllang=en_gb
set autoindent
set backspace=indent,eol,start
set clipboard^=unnamed
set encoding=utf-8
set expandtab
set fileformats=unix,dos,mac
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
set formatoptions=qrn1
set gdefault
set hidden
set ignorecase
set keymodel=startsel,stopsel
set nobackup
set noswapfile
set pastetoggle=<F2>
set smartcase
set textwidth=79
set tabstop=4
set softtabstop=4
set shiftwidth=4

nmap T y$
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

vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

nmap <silent> <leader>n :silent :nohlsearch<CR>
nmap <silent> <leader>s :set nolist!<CR>
nmap <silent> <leader>w :set wrap!<CR>
nmap <silent> <leader>l :set spell!<CR>


iab lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit
iab llorem Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Etiam lacus ligula, accumsan id imperdiet rhoncus, dapibus vitae arcu.  Nulla non quam erat, luctus consequat nisi
iab lllorem Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Etiam lacus ligula, accumsan id imperdiet rhoncus, dapibus vitae arcu.  Nulla non quam erat, luctus consequat nisi.  Integer hendrerit lacus sagittis erat fermentum tincidunt.  Cras vel dui neque.  In sagittis commodo luctus.  Mauris non metus dolor, ut suscipit dui.  Aliquam mauris lacus, laoreet et consequat quis, bibendum id ipsum.  Donec gravida, diam id imperdiet cursus, nunc nisl bibendum sapien, eget tempor neque elit in tortor

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

" vim:foldmethod=marker
