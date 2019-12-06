set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTreeMirror
let python_highlight_all=1

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" NERDTree settings
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeShowHidden=1

" YCM
let g:ycm_autoclose_preview_window_after_completion=1

syntax on
set clipboard=unnamed      " use system keyboard
set encoding=utf-8
set number
set ruler
set showcmd
set noswapfile
set nocompatible              " be iMproved, required
set autoindent
set expandtab
set tabstop=4
set guifont=Monaco:h11
filetype off                  " required
filetype plugin indent on    " required
autocmd BufWritePre * :%s/\s\+$//e

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with spacebar
nnoremap <space> za

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
