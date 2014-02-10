" reload vimrc :so %
" % is the current file name (or use ~/.vimrc)
"
" https://github.com/gmarik/vundle

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
" auto indentation detecting
Bundle 'ciaranm/detectindent'
" better js syntax coloring
Bundle 'jelera/vim-javascript-syntax'

Bundle 'tpope/vim-markdown'
Bundle 'suan/vim-instant-markdown'
Bundle 'groenewege/vim-less'
Bundle 'elzr/vim-json'
Bundle 'defunctzombie/vim-stylus'
Bundle 'saltstack/salt-vim'
Bundle 'kelan/gyp.vim'

" put this after loading any bundles
filetype plugin indent on     " required!
" done setup for vundle

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab

" configure detectindent when autodetection doesn't work
:let g:detectindent_preferred_expandtab = 1
:let g:detectindent_preferred_indent = 4

syntax enable
set background=dark

" hack for iterm2 colors
let g:solarized_termtrans = 1
colorscheme solarized

" mice are for humans
set mouse=a

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode

" living dangerously
set noswapfile
set nobackup
set nowb

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
" display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·
highlight SpecialKey ctermbg=red guibg=red

" don't use spaces for makefiles
autocmd FileType make set noexpandtab

" Reload files changed outside vim
set autoread

" don't indent c++ namespaces
set cino=N-s
" don't indent access specifiers (public, private)
set cino+=g0

" use F2 to toggle paste mode
" pastemode doesn't indent pasted code
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" automatically save on loosing focus
autocmd FocusLost silent! wall

" automatically save when switching buffers and/or exiting vim
set autowriteall

" spell checking
set spell spelllang=en_us

" make yank and paste use the system clipboard
set clipboard=unnamed

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable

" detect syntax from start of file
autocmd BufEnter * :syntax sync fromstart

" on file open, set autoindentation
autocmd BufEnter * :DetectIndent

" turn off stupid json quote conceal bs from elzr/vim-json plugin
let g:vim_json_syntax_conceal = 0
