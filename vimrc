syntax on
colorscheme tender

" ===================
" text editor options
" ===================
set wrap linebreak nolist tw=0
set number
set sts=4
set ts=2
set sw=4
set noswapfile
set autoread
set smartindent
set expandtab
set clipboard=unnamed
set tabstop=2
set shiftwidth=2
set laststatus=2

set statusline=%10*\ %m " Isfile modified
set statusline+=%4*\ %<%F%* " Show file name
set statusline+=%4*\ line\ %l " line number

set showtabline=2

au CursorHold * checktime

noremap <C-w>- :split<cr>
noremap <C-w>+ :vsplit<cr>
noremap <C-j> :m+1<cr>
noremap <C-k> :m-1<cr>

"buffer keys
noremap <C-n> :bnext<cr>
noremap <C-p> :bprev<cr>

" remap default hotkeys
let maplocalheader="."

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
Plugin 'ap/vim-buftabline' " Moves buffers as tabs

Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'editorconfig/editorconfig-vim'

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
Plugin 'itchyny/lightline.vim'
Bundle 'stephpy/vim-php-cs-fixer'
" Track the engine.
Plugin 'SirVer/ultisnips'
" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'amerlyq/nou.vim'

" Vim plugins
Plugin 'easymotion/vim-easymotion'
Plugin 'majutsushi/tagbar'
" For web development
Plugin 'storyn26383/vim-vue'
Plugin 'tpope/vim-commentary'
Plugin 'digitaltoad/vim-pug'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'iloginow/vim-stylus'
Plugin 'evidens/vim-twig'

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
let g:UltiSnipsExpandTrigger="<c-o>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

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
let g:user_emmet_mode='a'    "only enable normal mode functions.
"let g:user_emmet_leader_key='<C-o>'
let g:user_emmet_expandabbr_key='<C-e>'
let g:user_emmet_settings={
\    'php': {
\        'extends': 'html',
\        'snippets': {
\            'e': 'echo |;',
\            'php': '<?php | ?>'
\        }
\    },
\    'vue': {
\        'extends': 'html',
\    }
\}

let g:AutoPairsFlyMode = 1
au FileType php let b:AutoPairs = AutoPairsDefine({'<?': '?>', '<?php': '?>'})

"Syntastic
let g:syntastic_quiet_messages = { "type": "style"  }
let g:syntastic_mode_map = {'passive_filetypes': ['python', 'php']}

" Org mode

" Web development frontend setup
" Vim scss
autocmd FileType scss set iskeyword+=- " Functions starting with css keyword cannot be highlighted corrctly
au BufRead,BufNewFile *.scss set filetype=scss.css

"Nerd commenter
map - <Leader>c<Space>

"Tagbar
nmap <F8> :TagbarToggle<CR>
