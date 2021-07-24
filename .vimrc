set nocompatible              " required
filetype off                  " required



" ------------------- Package manager -------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim' 
Plugin 'preservim/nerdtree' 
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plugin 'junegunn/fzf.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdcommenter'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'pangloss/vim-javascript'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
call vundle#end()             " required
filetype plugin indent on     " required



" ------------------- Basic configuration -------------------
set ignorecase                " if search key is lowercase => match all
set smartcase                 " if search key is case-sensitive => match case-sensitive
set autoindent                " Indent on enter
set number relativenumber     " Set number
set laststatus=2              " Always show statusbar
set clipboard=unnamedplus     " Clipboard system
set backupdir=/tmp/           " Move backup file to /tmp
set directory=/tmp/           " Move backup file to /tmp
set nofixendofline            " Disable auto add end-line
set autoread                  " Auto update content which is not edited by vim
set numberwidth=5             
set nowrap

" Tab
set tabstop=2 shiftwidth=2 expandtab          
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype python setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype php setlocal ts=4 sw=4 sts=0 expandtab
autocmd FileType vim setlocal foldmethod=marker

" Folding
set foldmethod=indent foldnestmax=10 nofoldenable foldlevel=2 

" syntax highlight
syntax on                     
let g:dracula_colorterm = 0
let g:dracula_italic = 0
set background=dark
colorscheme dracula



" ------------------- Re-binding and Bind key -------------------
nnoremap <SPACE> <Nop>
let mapleader = " "

" Split panel
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" quick out insert-mode
inoremap jk <esc>
nmap <Leader>s :source $MYVIMRC<Cr>
nnoremap <C-y> gg"+yG

" Jump between buffer
nnoremap <C-[> :bp<CR>
nnoremap <C-]> :bn<CR>
nnoremap <C-d> :bd<CR>
nnoremap <Leader>` :Rg<CR>
nnoremap <C-p>  :GFiles<Cr>

" NerdTree Git
nmap <C-t> :NERDTreeToggle<CR>
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',}
let g:webdevicons_enable_nerdtree = 1
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusShowIgnored = 1
let g:gitgutter_async = 1
let g:airline#extensions#tabline#enabled = 1      " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#whitespace#enabled = 0

" Refresh nerdtree focus
"autocmd BufEnter NERD_tree_* | execute 'normal R'
" Refresh nerdtree on window focus
"autocmd FocusGained * :NERDTreeRefreshRoot

