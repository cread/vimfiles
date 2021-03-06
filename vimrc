" General
set nocompatible

" Pathogen
execute pathogen#infect()

" Editing
set autowrite
set autoindent
set shiftwidth=2 
set tabstop=2 
set softtabstop=2 
set expandtab
set formatoptions=tcrqwn
set showmatch matchtime=5
set whichwrap=<,>,h,l,[,]
set cursorline
set number
set backspace=indent
"highlight CursorLine cterm=bold
"highlight MatchParen ctermbg=white
set modeline

set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files

" Store .swp files in /tmp with mangled names
set directory=/tmp//

" Filetypes
filetype plugin on
filetype indent on

" Python bits
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" golang bits
autocmd FileType go compiler go

" Appearance
syntax on
set background=dark

" NERDTree wiring
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * if !argc() | NERDTree | endif

" add list lcs=tab:>-,trail:x for tab/trailing space visuals
autocmd BufEnter ?akefile* set noet ts=8 sw=8 nocindent

let NERDTreeMapOpenInTab='<ENTER>'

