set background=dark
syntax enable
set autoindent
set smartindent
set number
filetype on
au BufNewFile,BufRead *.vl,*.vhd set filetype=verilog
set smartcase
set incsearch
set so=999
set wrapmargin=5
set textwidth=145
set hlsearch

" tab navigation like firefox
:nmap <S-tab> :tabprevious<CR>
:nmap <tab> :tabnext<CR>
:imap <C-S-tab> <Esc>:tabprevious<CR>i
:imap <C-tab> <Esc>:tabnext<CR>i
:nmap <C-t> :tabnew<CR>

" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c* set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab


" clear highlight search
" nnoremap <esc> :noh<return><esc>
nnoremap <F3> :noh<CR>

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4

" make backspaces more powerful
set backspace=indent,eol,start
set ruler                       " show line and column number
set showcmd                     " show (partial) command in status line

