set nocompatible
filetype off
syntax on

colorscheme desert

set background=dark

set encoding=utf8

set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile
set backspace=indent,eol,start

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
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'bendavis78/vim-polymer'
Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on

au BufRead,BufNewFile *.asm set filetype=nasm
au BufRead,BufNewFile *.html set filetype=html
au BufRead,BufNewFile *.rs set filetype=rust

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_sq = 0


