local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return require('packer').startup(function(use)
  use({'wbthomason/packer.nvim'})
  use({'dracula/vim', as = 'dracula'})
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
  use({'kyazdani42/nvim-web-devicons'})
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
  use 'fedepujol/move.nvim'
  use "rafi/awesome-vim-colorschemes"
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  -- TREE
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- TREESITTER
  use({ "nvim-treesitter/nvim-treesitter" })
	use({ "p00f/nvim-ts-rainbow" })
  -- PLUGINS
  use({"hrsh7th/nvim-cmp"})
	use({"hrsh7th/cmp-buffer"})
  use({"hrsh7th/cmp-path"})
  use({"hrsh7th/cmp-nvim-lsp"})
  use({"hrsh7th/cmp-cmdline"})
  use({"saadparwaiz1/cmp_luasnip"})

  -- SNIPPETS
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"
  -- LSP
  use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
}
	use({ "simrat39/rust-tools.nvim" })
  use "jose-elias-alvarez/null-ls.nvim"

  -- TELESCOPE
  use {
    'nvim-telescope/telescope.nvim',
     requires = { {'nvim-lua/plenary.nvim'} }
    }
 -- TERMINAL
 use {"akinsho/toggleterm.nvim", tag = '*', config = function()
	require("toggleterm").setup()
  end}
if PACKER_BOOTSTRAP then 
  require("packer").sync()
end

end)
