"Start dein Scripts ---------------------

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " NERDTree
  call dein#add('scrooloose/nerdtree')

  " vim-go
  call dein#add('fatih/vim-go')

  " ansible-vim
  call dein#add('pearofducks/ansible-vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

"NERDTree --------------------------------

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let NERDTreeNodeDelimiter="\u00a0"

let file_name = expand("%")
if has('vim_starting') &&  file_name == ""
    autocmd VimEnter * NERDTree ./
endif

"NERDTree end --------------------------------

set shiftwidth=4
set expandtab
set tabstop=4
set hlsearch
set nowrap
set ignorecase
set background=dark

"map ----------------

let mapleader = "\<Space>"
nnoremap <Space> <Nop>

nmap <leader>w :w<CR>
nmap <leader>q :q<CR>


"Go ------------------

autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>c <Plug>(go-coverage)
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>r <Plug>(go-run)

