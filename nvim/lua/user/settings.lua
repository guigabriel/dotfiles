local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

-- mapleader key 
g.mapleader = ','

-- General Setup
opt.mouse = 'a'
opt.swapfile = false
opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt. synmaxcol = 120

-- Theme Setup
opt.termguicolors = true

-- Editor
opt.number = true
opt.wrap = false
opt.signcolumn = 'yes'
opt.showmatch = true
opt.showmode = false
opt.foldmethod = 'marker'
opt.splitright = true
opt.splitbelow = true
opt.colorcolumn = '80'
opt.cursorline = true
opt.scrolloff= 10
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.list = true

cmd "colorscheme dracula"
cmd "set encoding=utf8"
cmd "set t_Co=256"
cmd "set shiftwidth=2"
cmd "set softtabstop=2"
cmd "set expandtab"
cmd "set shiftwidth=2"
cmd "set softtabstop=2"
cmd "set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
cmd ([[let extension = expand('%:e')]])
cmd ([[syntax on]])
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
