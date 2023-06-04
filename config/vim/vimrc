syntax on

:set mouse=a
set number

set whichwrap+=<,>,[,]

nnoremap Q @@

set lazyredraw

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

call plug#begin('~/.vim/plugged')

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }

call plug#end()

set hidden

let g:LanguageClient_serverCommands = {
  \ 'cpp': ['clangd', '-background-index'],
  \ }

