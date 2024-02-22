vim9script
#-----------------------------

plug#begin("~/.vim/.data/plug")
#-----------------------------
# plugin config seperate
Plug 'Song-Tianxiang/vim-plug-config'
Plug 'junegunn/vim-plug'

# startup time measure
Plug 'dstein64/vim-startuptime'

# fuzzy finder framework
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

# comment
# Plug 'tpope/vim-commentary'
Plug 'Song-Tianxiang/comment'

# file explorer
# Plug 'obaland/vfiler.vim'
Plug 'Song-Tianxiang/vfiler.vim'
Plug 'obaland/vfiler-column-devicons'

# statusline
Plug 'itchyny/lightline.vim'
Plug 'lifepillar/vim-gruvbox8' # need gruvbox8 lightline colorscheme

# autocompletion
# Plug 'girishji/vimcomplete'

# nerdfont icons
Plug 'lambdalisue/nerdfont.vim'

# project root
Plug 'airblade/vim-rooter'

# deno runtime
Plug 'vim-denops/denops.vim'
Plug 'vim-denops/denops-shared-server.vim', { 'do': { -> denops_shared_server#install() } }
Plug 'vim-denops/denops-startup-recorder.vim'

# denops plugin
# Plug 'Shougo/ddu.vim'
Plug 'Shougo/ddc.vim'
Plug 'Shougo/ddc-ui-native'
Plug 'Shougo/pum.vim'
Plug 'Shougo/ddc-ui-pum'

Plug 'Shougo/ddc-source-around'
Plug 'matsui54/ddc-source-buffer'
Plug 'Shougo/ddc-source-cmdline'
Plug 'Shougo/neco-vim' # vim script completion
Plug 'Shougo/ddc-source-vim'
Plug 'uga-rosa/ddc-source-vsnip'
Plug 'Shougo/ddc-source-omni'
Plug 'LumaKernel/ddc-source-file'

Plug 'Shougo/ddc-matcher_head'
Plug 'Shougo/ddc-sorter_rank'

# snippet
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'

# lsp
Plug 'yegappan/lsp', { 'for': ['c', 'cpp', 'go', 'typescript'] }

# text object
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'

# file header
Plug 'ahonn/vim-fileheader'

# auto pairs
Plug 'cohama/lexima.vim'

# align
Plug 'tommcdo/vim-lion'

# colorscheme
Plug 'vim/colorschemes'
Plug 'jnurmine/Zenburn'
Plug 'nordtheme/vim', { 'as': 'nord' }

# colorscheme template tool
Plug 'lifepillar/vim-colortemplate'

# game
Plug 'vim/killersheep'

# command line autocompletion
# Plug 'girishji/autosuggest.vim'

# git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

#-----------------------------
plug#end()

# vim-plug options
g:plug_window = 'tabnew'

# plug-config options
g:plug_config_dir = "~/.vim/.data/plug-config"
g:plug_config_fzf = true
g:plug_config_edit_command = "edit"
