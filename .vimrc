" Vim config I usually use with JetBrains IDEs which
" is based on a very old Vim config I used with good old Vim
" before I switched to Neovim
"
" Trying to keep it in sync with Neovim config
"
" To use it with JetBrains IDEs rename to .ideavimrc

" Some small tweaks
syntax on		    " Highlight syntax
set ruler		    " show the cursor position all the time
set showcmd		    " display incomplete commands
set wildmenu		" display completion matches in a status line
set relativenumber	" display relative line numbers
set scrolloff=5		" keep at least 5 lines above and below the cursor
set history=200		" keep 200 lines of command line history
set laststatus=2	" display the status line at the bottom
set ignorecase		" ignore case during search operations
set encoding=utf-8	" set vim-wide UTF-8 encoding
set cursorline		" Highlight the current line
set incsearch		" Do incremental searching
set hlsearch		" Highlight search result

" Tabs and indentation settings
set expandtab 		" use space characters instead of tabs
set softtabstop=4	" insert 4 spaces when tab button pressed
set shiftwidth=4	" use 4 spaces for indentation

" Map the leader key
let mapleader=" "

" Disable "Space" key
nnoremap <Space> <nop>

" Disable the arrow keys just in case
noremap <Left> <nop>
noremap <Right> <nop>
noremap <Up> <nop>
noremap <Down> <nop>

" Disable search highlighting temporary when <Esc> is hit
nnoremap <silent> <Leader>os :nohlsearch<CR>

" Copy to OS clipboard while in normal mode 
nnoremap <Leader>oy "*y
" Copy to OS clipboard while in visual mode 
xnoremap <Leader>oy "*y
" Copy to OS clipboard an entire line while in normal mode
nnoremap <Leader>oyy "*yy
" Paste from OS clipboard while in normal mode
nnoremap <Leader>op "*p
" Paste from OS clipboard while in visual mode
xnoremap <Leader>op "*p
" Paste from OS clipboard before the cursor while in normal mode
nnoremap <Leader>oP "*P
" Paste from OS clipboard before the cursor while in visual mode
xnoremap <Leader>oP "*P
" Paste without changing the registers
xnoremap <Leader>dp "_dp
" Paste before the cursor without changing the registers
xnoremap <Leader>dp "_dP

" Create vertical split pane
nnoremap <Leader>sv :vsplit<CR>
" Create horizontal split pane
nnoremap <Leader>sh :split<CR>
" Create new tab
nnoremap <Leader>t :tabe<CR>

" Navigation between split panes
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>r <C-w>r
nnoremap <Leader>= <C-w>=

noremap <C-c> <ESC>

nnoremap <Leader>q :x<CR>

" Center cursor in the center of a screen while scrolling
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz

" Place search result in the center of a screen
nnoremap n nzz
nnoremap N Nzz

