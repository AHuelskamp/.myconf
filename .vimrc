" enable latex plugin 
filetype plugin on 


" " IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse Latex-Suite. Set your grep
" " program to always generate a file-name.
set grepprg=grep\ -nH\ $*
"
" " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults
" to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Auto highlight syntax 
syntax on

" Case insensitive search normally. 
" When using capital letters, case sensitive search
set ignorecase
set smartcase
 
" Line nos
set number
 
" Map ; to : to reduce the number of keystrokes it takes to exit. 
" This one's one of my favorites. 
nnoremap ; : 

" Set command height to 2
set cmdheight=2

" Hightlight search results 
set hlsearch 

" Use regex 
set magic 

" Tabs->4spaces 
filetype indent on

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Fix issue where *.md only highlights correctly when *.markdown 
autocmd BufRead,BufNew *.md set filetype=markdown
" Set tabs to 2 spaces in .mg 
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2

" search cleared ,/
nnoremap <silent> ,/ :nohlsearch<CR>

" ty: http://stevelosh.com/blog/2010/09/coming-home-to-vim/
" for the following settings
" side note to self, should read/learning vi/m
set relativenumber
set encoding=utf-8

" cpp tabs
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2
