set ls=2
set nocompatible
set number
set ruler
set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set autowrite
set autoindent
set hidden
set cursorline
set cursorcolumn
set expandtab
set tabstop=2
set backspace=2
set scrolloff=3
set hlsearch
set encoding=utf-8
if v:version > 703
  set relativenumber
  set colorcolumn=81
endif
syntax on
autocmd FileType make setlocal noexpandtab
color blackboard
