" enable latex plugin
filetype plugin on

" encoding ¯\_(ツ)_/¯
set encoding=utf-8


" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*
"
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults
" to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.

" Auto highlight syntax
syntax on

" Case insensitive search normally.
" When using capital letters, case sensitive search
" When searching go immediately to found item
" Hightlight search results
" search cleared ,/
set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <silent> ,/ :nohlsearch<CR>

" Line nos
" I'm intending to set the current number on the line I'm on and then set rel
" numbers everywhere else. This works on some systems and not on others.
" Haven't got around to figuring out why not yet.
set relativenumber
set number

" automatically search and reaplace all matches
" g toggles off (instead of on)
set gdefault

" Display trailing white space
set listchars=tab:..,trail:_,extends:>,precedes:<,nbsp:~
set list

" Map ; to : to reduce the number of keystrokes it takes to exit.
" This one's one of my favorites.
" Add in semi-colon to repeat previous `f` or `t` operator
nnoremap ; :
nnoremap : ;

" Set command height to 2
set cmdheight=2

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

" Markdown command
" Fix issue where *.md only highlights correctly when *.markdown
autocmd BufRead,BufNew *.md set filetype=markdown
" Set tabs to 2 spaces in .md
" Set text width to 80
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 textwidth=80

" cpp tabs
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2

try
    source ~/.abrv.vim
catch
    " pass if file not there
endtry


