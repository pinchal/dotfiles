set autoindent
syntax on
set background=dark
set nu
set hlsearch
set incsearch
set shiftwidth=4
set softtabstop=4
set expandtab

set nocompatible

" affichage des espaces insequable utf8
highlight BadSpace ctermbg=magenta guibg=magenta
match BadSpace / /
autocmd WinEnter * match BadSpace / /

" les states salt sont en yaml
augroup filetypedetect
        au BufNewFile,BufRead *.sls    setf yaml
augroup END


