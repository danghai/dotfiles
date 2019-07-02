" @(#)Exrc 1.1 86/07/09 SMI

" Remove trailing whitespace
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

filetype indent plugin on
syntax on      " turn on syntax highlighting
set tabstop=4
set softtabstop=4
set ic
set ai
set ts=4
set report=1
set sw=4
set showcmd
set number     " line numbers

set smartcase
set smarttab
set smartindent
" Set incremental searching and highlight
set incsearch
set hlsearch
set autoindent
set backspace=indent,eol,start
set expandtab

set mouse&
set background=dark
" Set vim to remember certain things when we exit
" '10   :marks will be remembered for up to 10 previously edited files
" "100  :will save up to 100 lines for each register
" :20   :up to 20 lines of command-line history will be remembered
" %     :saves and restores the buffer list
" n...  :where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

map t :e#
map [ ^
map ] $
map Q :%s/	/    /g
map  :!p4 edit %<CR>
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

" autocommands

" function to restore cursor position
function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction
" restore cursor
augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END
