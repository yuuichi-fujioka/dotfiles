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

  " vim-fugitive
  call dein#add('tpope/vim-fugitive')

  " vim-airline
  call dein#add('airblade/vim-gitgutter')
  call dein#add('mhinz/vim-signify')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

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

nmap <leader>w :<c-u>w<CR>
nmap <leader>q :<c-u>q<CR>

" Toggle Line Number
nmap <leader>n :<c-u>set nu!<CR>

" Toggle Git Status on Status Line and Left
nmap <leader>s :<c-u>SignifyToggle<CR>

" make with current makefile
nmap <leader>mc :<c-u>make -C %:h -f %:t<CR>

"Go ------------------

autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>c <Plug>(go-coverage)
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>d <Plug>(go-doc)

