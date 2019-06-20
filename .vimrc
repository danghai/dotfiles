
" Remove trailing whitespace
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

set tabstop=4
set ic
set ai
set ts=4
set report=1
set sw=4
set showcmd

set smartcase
" Set incremental searching and highlight
set incsearch
set hlsearch

set mouse&
set background=dark

map t :e#
map [ ^
map ] $
map Q :%s/	/    /g
"map g :n

" Fixes the Backspace key on Linux
set t_kb=

" Special highlight commands for vim's colored syntax
hi comment   ctermfg=darkblue
hi search    ctermfg=white ctermbg=darkred
hi incsearch ctermfg=darkblue ctermbg=gray

" Moving between windows with Control + arrowkeys
noremap <silent> <C-Down>  <C-W>j
noremap <silent> <C-Up>    <C-W>k
noremap <silent> <C-Left>  <C-W>h
noremap <silent> <C-Right> <C-W>l

" Moving control key h/j/k/l
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
