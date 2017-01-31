runtime! debian.vim
set autoindent
filetype plugin indent on
syntax on
set background=dark
set nu
set hlsearch
set incsearch

" Tabulation size is 4 spaces
set shiftwidth=4
set softtabstop=4
set expandtab

set nocompatible

augroup filetypedetect
        au BufNewFile,BufRead *.sls    setf yaml
augroup END

" espace insequable utf8
highlight BadSpace ctermbg=magenta guibg=magenta
match BadSpace / /
autocmd WinEnter * match BadSpace / /

