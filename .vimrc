set nocompatible

set expandtab
set tabstop=4
set shiftwidth=4

set autoindent
set smartindent

" turn on line numbers
set number

syntax enable
set background=dark

" force the termina to 256 colors
set t_Co=256
colorscheme torte

set mouse=a

set wildmenu

filetype indent on

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
