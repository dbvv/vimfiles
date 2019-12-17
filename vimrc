syntax on
colorscheme tender

" ===================
" text editor options
" ===================

set wrap linebreak nolist
set number
set sts=4
set ts=2
set sw=8
set noswapfile

"===================
" Vundle
" =================

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'

Plugin 'airblade/vim-gitgutter'
Plugin 'valloric/youcompleteme'

Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'

" Languages
" php
Plugin 'rayburgemeestre/phpfolding.vim'

" Editor plugins
Plugin 'tpope/vim-surround'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Formatting settings
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" GitGutter
set updatetime=100
let g:gitgutter_enabled=1
let g:gitgutter_terminal_reports_focus=0
let g:gitgutter_git_executable = 'git'
