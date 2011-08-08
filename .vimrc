set nocompatible

set expandtab
set tabstop=4
set shiftwidth=4

set autoindent
set smartindent

" turn on line numbers
set number

set wildmenu
set background=dark

filetype indent on
syntax on

" highlight trailing whitespace characters
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" don't use spaces for makefiles
autocmd FileType make set noexpandtab
