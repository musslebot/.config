if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tmhedberg/SimpylFold'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.sh --ts-completer
  endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'leafgarland/typescript-vim'
Plug 'jparise/vim-graphql'
Plug 'airblade/vim-gitgutter'
call plug#end()
autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTreeMirror
let python_highlight_all=1

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_working_path_mode = '0'
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0
let g:ctrlp_max_files=0

" NERDTree settings
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeShowHidden=1

" YCM
let g:ycm_autoclose_preview_window_after_completion=1

colo desert
syntax on
set updatetime=250
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
set guifont=Monaco:h14
autocmd BufWritePre * :%s/\s\+$//e

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with spacebar
nnoremap <space> za
