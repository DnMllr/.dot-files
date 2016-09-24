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

set nu
set rnu
set scrolloff=9

set ai "Auto ident
set si "Smart ident
set wrap "Wrap lines

set incsearch
set hlsearch

set wildmenu
set showmatch

set nocompatible
set ttyfast
set lazyredraw

set rtp+=/usr/local/opt/fzf

map <space> /
imap <S-Tab> <C-P>
nnoremap j gj
nnoremap k gk

call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'
Plug 'kien/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'rust-lang/rust.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'pangloss/vim-javascript'
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
Plug 'andreimaxim/vim-io'
Plug 'plasticboy/vim-markdown'
Plug 'idris-hackers/idris-vim'
Plug 'guns/vim-clojure-highlight'
Plug 'kien/rainbow_parentheses.vim'
Plug 'wilsaj/chuck.vim'
Plug 'digitaltoad/vim-jade'
Plug 'cespare/vim-toml'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-scripts/mercury.vim'
Plug 'matze/vim-lilypond'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'adimit/prolog.vim'
Plug 'suoto/vim-hdl'
Plug 'elixir-lang/vim-elixir'
Plug 'dleonard0/pony-vim-syntax'
Plug 'romeovs/creep'
Plug 'Shougo/neocomplete.vim'

call plug#end()


au BufRead,BufNewFile *.lsp set filetype=newlisp
au BufRead,BufNewFile *.{lsp,clj} RainbowParenthesesToggle
au BufRead,BufNewFile *.{lsp,clj} RainbowParenthesesLoadRound
au BufRead,BufNewFile *.{lsp,clj} RainbowParenthesesLoadSquare
au BufRead,BufNewFile *.{lsp,clj} RainbowParenthesesLoadBraces

au BufRead,BufNewFile *.asm set filetype=nasm
au BufRead,BufNewFile *.html set filetype=html
au BufRead,BufNewFile *.rs set filetype=rust
au BufRead,BufNewFile *.jade set filetype=jade
au BufRead,BufNewFile *.ts set filetype=typescript
au BufRead,BufNewFile *.html syntax sync fromstart
au BufRead,BufNewFile *.pl set filetype=prolog
au BufRead,BufNewFile *.m set filetype=mercury

au Filetype html setlocal ts=2 sw=2 expandtab
au Filetype javascript setlocal colorcolumn=101 ts=2 sw=2 expandtab
au Filetype jade setlocal ts=2 sw=2 expandtab
au Filetype sass setlocal ts=2 sw=2 expandtab
au Filetype c setlocal colorcolumn=81 ts=2 sw=2 expandtab


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:acp_enableAtStartup = 0

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

let g:rustfmt_autosave = 1

let g:jsx_ext_required = 0

let g:vim_markdown_folding_disabled = 1

