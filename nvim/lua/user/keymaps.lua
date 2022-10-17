local function map(mode, lhs, rhs, opts )
    local options = { noremap = true }
    if opts then 
      options = vim.tbl_extends("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
  end

--Cria Atalho para sair apertando a tecla q duas vezes
map("n", "qq", ":q<CR>" )
map("n", "Q", ":q!<CR>" )

--Cria comando para salvar com Ctrl + s nos modos: Normal, Inserção e Visual
map("n", "<C-s>", ":w<CR>")
map("i", "<C-s>", "<Esc>:w<CR>")
map("v", "<C-s>", "<Esc>:w<CR>")

-- Selecionar tudo com 'Ctrl + A'
map("n", "<C-a>", "ggVG")

--Abrir Telescope
map("n", "<C-t>", ":Telescope<CR>" )

--Desfazer alterações
map("n", "zz", ":u<CR>")
map("i", "C-z>", "<Esc>:u<CR>")

--Abir Tree
map("n", "<space>a", ":NvimTreeToggle<CR>")

--Navegar entre os splits
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")


--  Create a tab
map("n", "te", ":tabe<CR>")

-- Navigate between buffers
map("n", "ty", ":bn<CR>")
map("n", "tr", ":bp<CR>")

--  Delete a buffer
map("n", "td", ":bd<CR>")

--  Create splits
map("n", "th", ":split<CR>")
map("n", "tv", ":vsplit<CR>")

--  Close splits and others
map("n", "tt", ":q<CR>")

-- Move
local opts = { noremap = true, silent = true }
-- Normal-mode commands
vim.keymap.set('n', '<A-j>', ':MoveLine(1)<CR>', opts)
vim.keymap.set('n', '<A-k>', ':MoveLine(-1)<CR>', opts)
vim.keymap.set('n', '<A-h>', ':MoveHChar(-1)<CR>', opts)
vim.keymap.set('n', '<A-l>', ':MoveHChar(1)<CR>', opts)

-- Visual-mode commands
vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-l>', ':MoveHBlock(1)<CR>', opts)
