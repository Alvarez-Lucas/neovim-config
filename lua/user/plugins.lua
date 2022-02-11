local fn = vim.fn
-- Automatically Install Packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

-- Automatically Update Plugins After Save
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim") -- Packer can manage itself
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")

	-- Theming
	-- colorscheme
	-- use 'tribela/vim-transparent'
	use("dracula/vim")
	use("luisiacc/gruvbox-baby")
	use("folke/tokyonight.nvim")
	use("EdenEast/nightfox.nvim")
	use("arcticicestudio/nord-vim")
	use("rakr/vim-one")
	use("rmehri01/onenord.nvim")
	use("ishan9299/modus-theme-vim")
	use("savq/melange")
	use("RRethy/nvim-base16")
	use("navarasu/onedark.nvim")
	-- use 'NTBBloodbath/doom-one.nvim'
	use("rebelot/kanagawa.nvim")
	use("NTBBloodbath/doom-one.nvim")

	-- Tree File Explorer
	use("kyazdani42/nvim-web-devicons")
	use("kyazdani42/nvim-tree.lua")

	-- Status Line
	use("nvim-lualine/lualine.nvim")

	-- CMP
	use("hrsh7th/nvim-cmp") -- Completions Plugin
	use("hrsh7th/cmp-buffer") -- Buffer Completions
	use("hrsh7th/cmp-path") -- Path Completions
	use("hrsh7th/cmp-cmdline") -- CMD Line Completions

	use("saadparwaiz1/cmp_luasnip") -- Snippet Completions
	use("hrsh7th/cmp-nvim-lsp") -- LSP for CMP??
	use("hrsh7th/cmp-nvim-lua") -- ??

	use("L3MON4D3/LuaSnip") -- Snippet Engine
	use("rafamadriz/friendly-snippets") -- Snippet Collection
	-- use 'f3fora/cmp-spell'         -- Spell Check Completions

	-- LSP
	use("neovim/nvim-lspconfig") -- LSP Config Boostrap
	use("williamboman/nvim-lsp-installer") -- LSP Installer

	-- Telescope
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-media-files.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = "TSUpdate",
	})
	use("p00f/nvim-ts-rainbow")
	use("windwp/nvim-autopairs")
	use("numToStr/Comment.nvim") -- Uses TS with nvim-ts-context-commentstring
	use("JoosepAlviste/nvim-ts-context-commentstring")

	-- GIT
	use("lewis6991/gitsigns.nvim")

	-- Dashboard
	use("goolord/alpha-nvim")

	-- Floating Terminal
	use("akinsho/toggleterm.nvim")

	-- Indent Guides
	-- use 'lukas-reineke/indent-blankline.nvim'

	-- Scroll Wheel
	use("petertriho/nvim-scrollbar")

	-- Project Manager
	use("ahmedkhalf/project.nvim")

	-- Formatter
  use "mhartington/formatter.nvim"

	if packer_bootstrap then
		require("packer").sync()
	end
end)
