" Load the defaults.vim because it's only sourced when there's no ~/.vimrc
source $VIMRUNTIME/defaults.vim

" Leader first
let mapleader = " "

" Options
set autoread
set expandtab
set matchtime=0
set path+=**
set relativenumber
set shiftwidth=4
set showmatch
set smartindent
set tabstop=4
set updatetime=300

" This allows you to undo changes even after saving
if exists("&undodir")
  set undodir=~/.vim/undo
  set undoreload=1000
  set undofile
endif

" General Keymaps
map <leader>p :Rexplore <CR>

" From `:help :DiffOrig`, to diff same file
if exists(":DiffOrig") != 2
 command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_
           \ | diffthis | wincmd p | diffthis
endif

" Enable the :Man command shipped inside Vim's man filetype plugin.
if exists(':Man') != 2 && !exists('g:loaded_man') && &filetype !=? 'man'  && !has('nvim')
  runtime ftplugin/man.vim
endif

" Others 
let g:netrw_banner=0
let g:netrw_liststyle=1
let g:netrw_list_hide=netrw_gitignore#Hide()

" FZF
set rtp+=/usr/bin/fzf
map <leader><leader> :call fzf#run(fzf#wrap({'source': 'ls'}))<CR>

" ALE
let g:ale_fixers = { 'python': ['black'], 'rust': ['rustfmt'] }
let g:ale_hover_to_preview=0

nmap ]d :ALENext<CR>
nmap [d :ALEPrevious<CR>
nmap gd :ALEGoToDefinition<CR>
nmap gq <Plug>(ale_fix)
nmap gra :ALECodeAction<CR>
nmap gr :ALEFindReferences<CR>
nmap K :ALEHover<CR>
