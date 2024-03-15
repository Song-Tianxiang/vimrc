vim9script
#-----------------------------

plug#begin("~/.vim/.data/plug")
#-----------------------------
# plugin config seperate
Plug 'Song-Tianxiang/vim-plug-config'
Plug 'junegunn/vim-plug'

# fuzzy finder framework
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

# comment
Plug 'tpope/vim-commentary'

# statusline
Plug 'itchyny/lightline.vim'
Plug 'lifepillar/vim-gruvbox8' # need gruvbox8 lightline colorscheme

# nerdfont icons
Plug 'lambdalisue/nerdfont.vim'

# project root
Plug 'airblade/vim-rooter'

# deno runtime
Plug 'vim-denops/denops.vim'
Plug 'vim-denops/denops-shared-server.vim', { 'do': { -> denops_shared_server#install() } }

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
Plug 'yegappan/lsp'

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
