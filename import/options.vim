vim9script

g:mapleader = ' '
g:maplocalleader = '\'

filetype indent plugin on

set termguicolors
# set background=dark
# colorscheme retrobox

set number
set cursorline
set cursorlineopt=number

# gui
set guifont=CaskaydiaMono\ Nerd\ Font:h18
set guioptions-=L

set tabstop=8
set softtabstop=2
set shiftwidth=2
set expandtab

set ignorecase
set smartcase

set mouse+=a
set belloff=all
set wildoptions=fuzzy,pum
set shortmess+=Ic
set fillchars+=eob:\ 
set fillchars+=vert:│
set hidden
set cmdheight=1
set noshowmode
set noshowcmd
set laststatus=2
set signcolumn=yes
set notimeout ttimeout ttimeoutlen=0

set completeopt=menuone,popup,noselect,noinsert
set completepopup=align:menu,border:off,highlight:InfoPopup

# vim state dir
set undofile
set undodir=~/.vim/.state/undo
set swapfile
set directory=~/.vim/.state/swap
set backup
set backupdir=~/.vim/.state/backup
set viminfofile=~/.vim/.state/viminfo
g:netrw_home = '~/.vim/.state/netrw'

for item in [&undodir, &directory, &backupdir, g:netrw_home]
	if !isdirectory(expand(item))
		mkdir(expand(item), 'p')
	endif
endfor
