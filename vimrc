set background=dark             " Set background
set number                      " Set line number
set hlsearch                    " Highlight the search
set incsearch                   " Incremental search as you type the word
set smartcase                   " Supposed to search case smartly;no success
set so=999                      " Cursor remains in middle of screen (999). 
                                " In general, value specifies number of lines of 
                                " context around current line being edited.
set wrapmargin=5
"set textwidth=80                " Number of characters per row
set showmatch                   " Show matching paranthesis
set autoread                    " Automatically read file changed on disk
set pastetoggle=<F2>            " Set paste/nopaste when pasting


" **************************************************************************** "
" Keep cursor near the top of the screen
" Use zz for center, zb for bottom
" **************************************************************************** "
" nnoremap j jzt                  
" nnoremap k kzt


" **************************************************************************** "
" Set indent rules
" **************************************************************************** "
set autoindent                  " Always set autoindenting on
set smartindent
set copyindent                  " Copy previous line indenting
set shiftwidth=4                " Number of spaces to use for autoindenting
set shiftround                  " Use multiple of shiftwidth for indenting > <


" **************************************************************************** "
" make backspaces more powerful
" **************************************************************************** "
set backspace=indent,eol,start
set ruler                       " show line and column number
set showcmd                     " show (partial) command in status line


" **************************************************************************** "
" configure editor with tabs and nice stuff...
" **************************************************************************** "
set expandtab                   " enter spaces when tab is pressed
set tabstop=4                   " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4                " number of spaces to use for auto indent
" added new, does the above over ride the below?
" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
" au BufRead,BufNewFile *.c* set noexpandtab
" au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab


" **************************************************************************** "
" Syntax highlighting
" **************************************************************************** "
syntax enable
filetype on
au BufNewFile,BufRead *.vl,*.vhd set filetype=verilog


" **************************************************************************** "
" Cursor line (highlights the current row/column)
" **************************************************************************** "
set cursorline
hi CursorLine ctermbg=black cterm=none
" set cursorcolumn
" hi CursorColumn ctermbg=black cterm=none
" hi CursorLine term=bold cterm=bold ctermbg=darkblue


" **************************************************************************** "
" tab navigation like firefox
" **************************************************************************** "
:nmap <S-tab> :tabprevious<CR>
:nmap <tab> :tabnext<CR>
:imap <C-S-tab> <Esc>:tabprevious<CR>i
:imap <C-tab> <Esc>:tabnext<CR>i
:nmap <C-t> :tabnew<CR>

" Remove highlighted search by hitting F3
nnoremap <F3> :noh<CR>                
" Toggle line number by hitting F4
nnoremap <F4> :set nonumber!<CR>
" Toggle cursor to middle of screen and default behavior by hitting F4
nnoremap <F5> :let &scrolloff=999-&scrolloff<CR>

" **************************************************************************** "
" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
" **************************************************************************** "
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()


" **************************************************************************** "
" Quickly edit/reload the vimrc file
" **************************************************************************** "
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" The leader key is by default the \ key. So you can edit and reload vimrc by 
" hitting \ev and \sv respectively
" let mapleader=","

" Set the status line
" set stl=%f\ %m\ %r%{fugitive#statusline()}\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]

" highlight Cursor guifg=blue guibg=black

" **************************************************************************** "
" clang format integration 
" **************************************************************************** "
map <C-k> :pyf /data/sanchez/tools/llvm-3.7.1/share/clang/clang-format.py<CR>
imap <C-k> <ESC>:pyf /data/sanchez/tools/llvm-3.7.1/share/clang/clang-format.py<CR>i

function ClangFormatFile()
        let l:lines="all"
        pyf /data/sanchez/tools/llvm-3.7.1/share/clang/clang-format.py
endfunction

map <C-l> :call ClangFormatFile()<CR>
imap <C-l> <ESC>:call ClangFormatFile()<CR>i
