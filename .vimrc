" file type recognition
filetype on
filetype plugin on
filetype indent on
" open new split panes to right and below (as you probably expect) set splitright set splitbelow nnoremap ; :
set path+=/usr/local/include/wx-3.1/**
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'cjuniet/clang-format.vim'
call plug#end()
" clang format options
"
let g:clang_format_style = "Google"
" make cache always same location
"/let g:gutentags_cache_dir = expand('~/.cache/vim/ctags/')
"/let g:gutentags_ctags_extra_args = [
"/      \ '--tag-relative=yes',
"/      \ '--fields=+ailmnS',
"/      \ ]

" in normal mode F2 will save the file
nmap <F2> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
imap <F2> <ESC>:w<CR>i<CR>
" edit vimrc file
map <F3> :e ~/.vimrc<CR>
map <F4> :!./build/gfx-prog<CR>
map <F12> :buffers<CR>

set number
" don't force save of buffer, just hide it
set hidden
" turn spellcheck off
set nospell
" make vim respond to the mouse
set mouse=a
set mousefocus
set guifont=Monospace\ Regular\ 14
set guioptions -=T
"chg work directory to the current file
set autochdir
set shiftwidth=2
set tabstop=2
set autoindent
set expandtab
set smartindent
set cindent
colorscheme darkblue 
set visualbell 
set makeprg=./compile
"let &makeprg='python3 %'
set cul
:hi CursorLine cterm=NONE ctermbg=darkblue ctermfg=lightred guibg=lightred guifg=white

" syntax highlighting
syntax on
