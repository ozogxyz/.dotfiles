"BASICS-----------------------------------------------------------------------
if &compatible
  set nocompatible
endif

set expandtab
set ruler
set nobackup
set incsearch
set autoread
set scrolloff=1
set ignorecase
set smartcase

" Use CTRL-L to clear the highlighting of 'hlsearch'
set hlsearch
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" Disable auto commenting in a new line (doesn't work yet)
autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" This allows you to undo changes even after saving
if version >= 703
  set undodir=~/.vim/backup
  set undofile
  set undoreload=1000
endif

set history=1000

syntax on
filetype plugin indent on

set wildmenu
set wildignore=*.jpg,*.png,*.pdf,*.pyc

inoremap <C-U> <C-G>u<C-U>

"CONFUSING STUFF---------------------------------------------------------------
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent

"PLAYABLE----------------------------------------------------------------------
colorscheme lunaperche
hi Normal guibg=NONE ctermbg=NONE

" Backspace behavior, look it up
set backspace=indent,eol,start

set wildoptions="list:full"
set showcmd
set showmatch
set matchtime=1

" Search down to subfolders
set path+=**

" Set the leader key.
let mapleader = " "

" Netrw (File Explorer) Settings
map <leader>e :Ex<CR>
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_showhide=1
let g:netrw_winsize=20
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

"MAPPINGS----------------------------------------------------------------------
" Go up/down half a page and center it
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Jump buffers
map <leader>p :bp<CR>
map <leader>n :bn<CR>

" Moving between tabs
map <leader>t gt

" FZF TMUX 
nnoremap <silent> <C-f> :silent !tmux neww tmux-sessionizer<CR>

"PLUGINS-----------------------------------------------------------------------
set rtp+=/opt/local/share/fzf/vim
