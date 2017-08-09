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

" affichage des espaces insécable utf8
highlight BadSpace ctermbg=magenta guibg=magenta
match BadSpace / /
autocmd WinEnter * match BadSpace / /

" les states salt sont en yaml
augroup filetypedetect
        au BufNewFile,BufRead *.sls    setf yaml
augroup END

" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2  " Always show the statusline

" ---------------------------------------------------------------
" Correction orthographique fr/en
" Copié de https://github.com/nittch/dotfiles/blob/master/vimrc
" ---------------------------------------------------------------
function s:spell_fr()
    if !exists("s:spell_check") || s:spell_check == 0
        echo "Correction orthographique activée (français)"
        let s:spell_check = 1
        setlocal spell spelllang=fr
    else
        echo "Correction orthographique désactivée"
        let s:spell_check = 0
        setlocal spell spelllang=
    endif
endfunction
" for English
function s:spell_en()
  if !exists("s:spell_check") || s:spell_check == 0
    echo "Correction orthographique activée (anglais)"
    let s:spell_check = 1
    setlocal spell spelllang=en
  else
    echo "Correction orthographique désactivée"
    let s:spell_check = 0
    setlocal spell spelllang=
  endif
endfunction
" mapping français
noremap  <F3> :call <SID>spell_fr()<CR>
inoremap <F3> <C-o>:call <SID>spell_fr()<CR>
vnoremap <F3> <C-o>:call <SID>spell_fr()<CR>
" mapping English
noremap <F4> :call <SID>spell_en()<CR>
inoremap <F4> <C-o>:call <SID>spell_en()<CR>
vnoremap <F4> <C-o>:call <SID>spell_en()<CR>

" Navigation buffers
" nmap <leader>T :enew<cr>
" nmap <leader>l :bnext<CR>
" nmap <leader>h :bprevious<CR>
" nmap <leader>bq :bp <BAR> bd #<CR>

" show invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

noremap  <F2> :NERDTreeToggle<CR>

" F7 mappé sur flake8

nnoremap <C-c> :bp\|bd #<CR>

" clipboard on system
set clipboard=unnamed
