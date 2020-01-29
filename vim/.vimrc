" Auto-install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" <<< INITIALIZE PLUGINS >>>
call plug#begin('~/.vim/plugged')

Plug 'neomake/neomake'
Plug 'tmhedberg/SimpylFold'
Plug 'scrooloose/nerdtree'
autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTreeMirror
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeShowHidden=1

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'leafgarland/typescript-vim'
Plug 'jparise/vim-graphql'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
nnoremap <silent> <space><space> :Files<CR>
let g:fzf_buffers_jump = 1 " [Buffers] Jump to the existing window if possible

call plug#end()
" <<< END INITIALIZE PLUGINS >>>

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
set mouse=a                  " mouse support
set noshowmode               " dont show mode since lightline

" remove search highlighting after search
augroup vimrc-incsearch-highlight
  autocmd!
  autocmd CmdlineEnter /,\? :set hlsearch
  autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

autocmd BufWritePre * :%s/\s\+$//e  " Remove trailing whitespace
autocmd TermOpen * setlocal nonumber  " Remove term line numbers

" Enable alt-arrow movements between window splits
nnoremap <A-Left> <C-w>h
nnoremap <A-Down> <C-w>j
nnoremap <A-Up> <C-w>k
nnoremap <A-Right> <C-w>l

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with spacebar
nnoremap <space> za

" Esc in terminal to visual mode
tnoremap <Esc> <C-\><C-n>

" Auto load files if modified
augroup AutoSwap
        autocmd!
        autocmd SwapExists *  call AS_HandleSwapfile(expand('<afile>:p'), v:swapname)
augroup END

function! AS_HandleSwapfile (filename, swapname)
        " if swapfile is older than file itself, just get rid of it
        if getftime(v:swapname) < getftime(a:filename)
                call delete(v:swapname)
                let v:swapchoice = 'e'
        endif
endfunction
autocmd CursorHold,BufWritePost,BufReadPost,BufLeave *
  \ if isdirectory(expand("<amatch>:h")) | let &swapfile = &modified | endif

augroup checktime
    au!
    if !has("gui_running")
        "silent! necessary otherwise throws errors when using command
        "line window.
        autocmd BufEnter,CursorHold,CursorHoldI,CursorMoved,CursorMovedI,FocusGained,BufEnter,FocusLost,WinLeave * checktime
    endif
augroup END
