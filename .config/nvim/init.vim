"------------------------------------------------------------------------------
" pre-setup
"------------------------------------------------------------------------------

" nvim-tree requires disabling netrw
lua << LUA
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
LUA

"------------------------------------------------------------------------------
" vim-plug
"------------------------------------------------------------------------------

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

call plug#end()

"------------------------------------------------------------------------------
" global settings
"------------------------------------------------------------------------------

lua << LUA
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.listchars = { eol = "¬"}
vim.opt.number = true

vim.g.mapleader = ","

vim.keymap.set("n", "<leader>t", ":b#<CR>")
LUA

"------------------------------------------------------------------------------
" neovide
"------------------------------------------------------------------------------

if exists("g:neovide")
    let g:neovide_cursor_animation_length=0
    let g:neovide_scroll_animation_length = 0
    let g:neovide_floating_blur_amount_x = 0
    let g:neovide_floating_blur_amount_y = 0
    let g:neovide_floating_shadow = v:false
    set guifont=Hack\ Nerd\ Font:h11
endif

"------------------------------------------------------------------------------
" load plugin configs
"------------------------------------------------------------------------------

lua << LUA
require('local/nvimtree')
require('local/telescope')
require('local/coc')
require('local/catppuccin') -- loaded after coc to override coc colors
LUA
