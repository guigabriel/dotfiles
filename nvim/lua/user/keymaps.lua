local keymap = vim.keymap.set
local opts = {silent = true }

vim.g.mapleader = ","

keymap("n", "<leader>e", vim.cmd.Ex)

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Toggle Tree
keymap("n", "<leader>q", ":NvimTreeToggle<CR>")


-- Save and quit 
keymap("n", "<C-s>", ":w<CR>")
keymap("i", "<C-s>", "<Esc>:w<CR>")

keymap("n", "<C-q>", ":q<CR>")
keymap("n", "<C-Q>", ":q!<CR>")
keymap("i", "<C-Q>", "<Esc>:q!<CR>")

-- Source
keymap("n", "so", ":so<CR>")

--Telescope
keymap("n", "<leader>t", ":Telescope<CR>")
