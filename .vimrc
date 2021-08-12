set nocompatible              " required
filetype off                  " required



" ------------------- Package manager -------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim' 
Plugin 'rafi/awesome-vim-colorschemes' 
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdcommenter'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'mhinz/vim-signify'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ryanoasis/vim-devicons'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-repeat'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'moll/vim-bbye'
Plugin 'honza/vim-snippets'
Plugin 'mhinz/vim-startify'
Plugin 'liuchengxu/vim-which-key'
Plugin 'justinmk/vim-sneak'
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
set hidden                    " Allow jump to another buffer without saving
set nowrap                    " Disable wrap text behavior
set numberwidth=3             " Set number column's width
set signcolumn=number         " Sign column Fixed(hard-coded) 2 cell (can not modified)
                              " => Using sign column using with number column
set undofile                  " turn on the feature
set undodir=$HOME/.vim/undo   " directory where the undo files will be stored

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

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
set background=dark
colorscheme spacecamp

" Showing special characters
set listchars=eol:¬,tab:→/,trail:~,extends:>,precedes:<,space:·
set list

" Vertical border
set fillchars+=vert:\|
highlight vertsplit guifg=#262626 guibg=#262626



"------------------- Re-binding and Bind key -------------------
nnoremap <SPACE> <Nop>
let mapleader = " "

function! JumpNextBuffer()
    " move focus to window
    if @% == '[coc-explorer]-1'
      exe "wincmd w" 
    endif
    exec "bn"
endfunction

function! JumpPrevBuffer()
    " move focus to window
    if @% == '[coc-explorer]-1'
      exe "wincmd w" 
    endif
    exec "bp"
endfunction

" Split panel
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <Leader>, :call MyFunc()<CR>
let g:NERDSpaceDelims = 1

" quick out insert-mode
inoremap jk <esc>
nmap <Leader>r :source $MYVIMRC<CR>
nmap <Leader>s :w <CR>
nnoremap <C-y> gg"+yG

" Jump between buffer
nnoremap <silent> <C-[> :call JumpPrevBuffer()<CR>
nnoremap <silent> <C-]> :call JumpNextBuffer()<CR>
nnoremap <C-d> :Bdelete<CR>
nnoremap <Leader>` :Rg<CR>
nnoremap <C-p>  :Files<Cr>
nnoremap <space>e :CocCommand explorer<CR>
nnoremap <space>gp :Git -c push.default=current push<CR>

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-phpls',
  \ 'coc-explorer',
  \ '@yaegassy/coc-intelephense',
  \ 'coc-snippets',
  \ 'coc-highlight',
\ ]

autocmd VimEnter * let d = expand('%') | if isdirectory(d) | silent! bd | exe 'CocCommand explorer ' | exe 'Startify' | endif
hi! MatchParen cterm=NONE gui=NONE ctermbg=1 guibg=#fefefe ctermfg=200 guifg=#ef0909

" cterm - sets the style
" ctermfg - set the text color
" ctermbg - set the highlighting
" DiffAdd - line was added
" DiffDelete - line was removed
" DiffChange - part of the line was changed (highlights the whole line)
" DiffText - the exact part of the line that changed
highlight DiffAdd    cterm=bold ctermfg=10  gui=bold guifg=#57ba37 guibg=#262626
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=bold guifg=#ef0909 guibg=#262626
highlight DiffChange cterm=bold ctermfg=10 ctermbg=16 gui=bold guifg=yellow guibg=#262626
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=bold guifg=bg guibg=yellow

