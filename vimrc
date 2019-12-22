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
set autoread
au CursorHold * checktime

noremap <C-w>- :split<cr>
noremap <C-w>+ :vsplit<cr>

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
Plugin 'djoshea/vim-autoread'
Plugin 'jiangmiao/auto-pairs' " autocomplete

Plugin 'airblade/vim-gitgutter'
Plugin 'valloric/youcompleteme'

Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'

" Languages
" php
Plugin 'rayburgemeestre/phpfolding.vim'
Plugin 'dsawardekar/wordpress.vim' " For wordpress development

" Editor plugins
Plugin 'tpope/vim-surround'
Plugin 'edkolev/tmuxline.vim'
Plugin 'shougo/unite-outline'
Plugin 'jceb/vim-orgmode'
Plugin 'wakatime/vim-wakatime'
Plugin 'shougo/vimshell.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'
" Track the engine.
Plugin 'SirVer/ultisnips'
" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'amerlyq/nou.vim'

" Vim plugins
Plugin 'easymotion/vim-easymotion'
Plugin 'pangloss/vim-javascript'
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

" statusline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle %<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1

" Emmet
let g:user_emmet_mode='n'    "only enable normal mode functions.

" Autopairs
let g:AutoPairsFlyMode = 1
au FileType php let b:AutoPairs = AutoPairsDefine({'<?': '?>', '<?php': '?>'})
