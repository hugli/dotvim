set nocompatible

filetype off 
" call pathogen#infect("~/projects/0446__vim-new/.vim/bundle/")
call pathogen#infect()
call pathogen#helptags() 
filetype on
filetype plugin on
filetype indent on
syntax on

source ~/.vim/config/ui.vim
source ~/.vim/config/edit.vim
source ~/.vim/config/autocomands.vim
" source ~/.vim/__settings__/functions.vim
" source ~/.vim/__settings__/autocomands.vim
" source ~/.vim/__settings__/options.vim
" source ~/.vim/__settings__/keymaps.vim
