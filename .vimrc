" file type recognition
filetype on
filetype plugin on
filetype indent on
" syntax highlighting
syntax on
" open new split panes to right and below (as you probably expect)
set splitright
set splitbelow
nnoremap ; :
set path+=/usr/local/include/wx-3.1/**
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin()
Plug 'ludovicchabant/vim-gutentags'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()
" make cache always same location
let g:gutentags_cache_dir = expand('~/.cache/vim/ctags/')
let g:gutentags_ctags_extra_args = [
      \ '--tag-relative=yes',
      \ '--fields=+ailmnS',
      \ ]

" in normal mode F2 will save the file
nmap <F2> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
imap <F2> <ESC>:w<CR>i<CR>
" edit vimrc file
map <F3> :e ~/.vimrc<CR>

" don't force save of buffer, just hide it
set hidden
" turn spellcheck off
set nospell
" make vim respond to the mouse
set mouse=a
set mousefocus
"chg work directory to the current file
set autochdir
