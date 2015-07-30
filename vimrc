set nocompatible
syntax on

colorscheme desert

set background=dark

set encoding=utf8

set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab

set shiftwidth=4
set tabstop=4

set lbr
set tw=500

set ai "Auto ident
set si "Smart ident
set wrap "Wrap lines

map <space> /

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'derekwyatt/vim-scala'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on

au BufRead,BufNewFile *.asm set filetype=nasm
