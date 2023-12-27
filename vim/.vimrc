" BASICS-----------------------------------------------------------------------
set nocompatible
set expandtab
set ruler
set incsearch
set autoread
set scrolloff=1
set ignorecase
set smartcase
set ttyfast
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set wildmenu
set showcmd

" Use CTRL-L to clear the highlighting of 'hlsearch'
set hlsearch
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

syntax on
filetype plugin indent on

" ?
inoremap <C-U> <C-G>u<C-U> 

" Set the leader key.
let mapleader = ","

" PLAYABLE----------------------------------------------------------------------

" Backup stuff
set backupdir=~/.vim/backups
set directory=~/.vim/swaps

" This allows you to undo changes even after saving
if exists("&undodir")
  set undodir=~/.vim/undo
  set undoreload=1000
  set undofile
endif

set wildignore=*.jpg,*.png,*.pdf,*.pyc

" History
set history=1000

" Colors
colorscheme lunaperche
nnoremap <leader>bg :hi Normal guibg=NONE ctermbg=NONE<CR>

" Backspace behavior, look it up
set backspace=indent,eol,start

set wildoptions="list:full"
set showmatch
set matchtime=1

" Search down to subfolders
set path+=**

" MAPPINGS----------------------------------------------------------------------


" Go up/down half a page and center it
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Jump buffers
map <leader>p :bp<CR>
map <leader>n :bn<CR>

" Moving between tabs
map <leader>t gt

" PLUGINS-----------------------------------------------------------------------

" FZF
nnoremap <silent> <C-f> :silent !tmux neww tmux-sessionizer<CR>
set rtp+=/opt/local/share/fzf/vim
map <leader>ff :call fzf#run(fzf#wrap({'source': 'ls'}))<CR>

" Netrw (File Explorer) Settings
map <leader>e :Ex<CR>
map <leader>e :Rex<CR>
let g:netrw_banner=0
let g:netrw_liststyle=1
"let g:netrw_showhide=1
let g:netrw_winsize=30
let g:netrw_list_hide=netrw_gitignore#Hide()

" From `:help :DiffOrig`.
if exists(":DiffOrig") != 2
 command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_
           \ | diffthis | wincmd p | diffthis
endif

" Correctly highlight $() and other modern affordances in filetype=sh.
if !exists('g:is_posix') && !exists('g:is_bash') && !exists('g:is_kornshell') && !exists('g:is_dash')
  let g:is_posix = 1
endif

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==#''
  runtime! macros/matchit.vim
endif

" Enable the :Man command shipped inside Vim's man filetype plugin.
if exists(':Man') != 2 && !exists('g:loaded_man') && &filetype !=? 'man'  && !has('nvim')
  runtime ftplugin/man.vim
endif

