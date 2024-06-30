set nocompatible    " Recomended by https://engineering.purdue.edu/ece264/16au/static/.vimrc.html

syntax on               " Turn on syntax highlightied.
set history=10000       " Keep XX lines of command line history
"set paste               " Compatible for copying and paste.
set number              " Add number line
set foldmethod=syntax   " Fold methods indent, syntax, manual, marker, expr, diff
set hlsearch            " Highligth occurrences of a word
set laststatus=2        " (ls) Shows status line always
"set relativenumber      " (rnu) Shows relative up and down lines number
set ruler               " Show the cursor position all the time
set rulerformat=%l\ col:%v\ (%p%%)\ %L
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\[HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
"set rulerformat=%15(%l,%c%V\ %p%%%)  " Line, column and percentage of file


function! UseSpaces()   " https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
    set tabstop=2       " (ts) Size of a hard tabstop.
    set shiftwidth=2    " (sw) Size of an indentation
    set softtabstop=2   " (sts) Number of spaces a <Tab> counts for. When 0, featuer is off.
    set smarttab        " Inserts blanks on a <Tab> key (as per sw, ts and sts).
    set expandtab       " (et) Use space caharacters, never tab characters.
    set autoindent      " (ai) Copy indent from current line when starting a new line.
endfunction

function! UseTabs()
    set tabstop=2     " (ts) Size of a hard tabstop.
    set shiftwidth=2  " (sw) Size of an indentation.
    set noexpandtab   " (noet) Always uses tabs instead of space characters.
    set autoindent    " (ai) Copy indent from current line when starting a new line.
endfunction

" Shortcuts
"noremap <C-g> <esc>:w<cr>a

" Save file in insert mode
noremap <C-s> <esc>:w<cr>a
inoremap <C-s> <esc>:w<cr>a

" Save a C file, compiles and executes it.
" modes: NORMAL, INSERT
noremap <S-C-c> <esc>:!clear<cr><cr> <esc>:w<cr> :!gcc % -o %<.out ; ./%<.out<cr>
inoremap <S-C-c>  <esc>:!clear<cr><cr> <esc>:w<cr> :!gcc % -o %<.out ; ./%<.out<cr>

" Save a C file, compiles and executes it (42 school).
" modes: NORMAL, INSERT
noremap <C-q>  <esc>:!find . -name  a.out -delete<cr><cr> <esc>:!clear<cr><cr> <esc>:w<cr> :!cc -Wall -Wextra -Werror *.c -o a.out ; ./a.out<cr>
inoremap <C-q> <esc>:!find . -name  a.out -delete<cr><cr> <esc>:!clear<cr><cr> <esc>:w<cr> :!cc -Wall -Wextra -Werror *.c -o a.out ; ./a.out<cr>

" Save a C++ file, compiles and executes it.
" modes: NORMAL, INSERT
noremap <C-x> <esc>:!clear<cr><cr> <esc>:w<cr> :!g++ % -o %<.out ; ./%<.out<cr>
inoremap <C-x>  <esc>:!clear<cr><cr> <esc>:w<cr> :!g++ % -o %<.out ; ./%<.out<cr>


" Plugins section - curl -fLo ~/.vim/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')   " Activates vim-plug

Plug 'Yggdroot/indentLine'          " Install indent lines

call plug#end()
" End plugin section

:call UseSpaces()   " Default function
":call UseTabs()
