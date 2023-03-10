local fn = vim.fn
-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer close and reopen Neovim..."
	vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

-- Install your plugins here
return packer.startup(function(use)
	--basic-utils
	use "wbthomason/packer.nvim" -- Have packer manage itself
	use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
	use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
	use "kyazdani42/nvim-tree.lua"
	use "norcalli/nvim-colorizer.lua"
	use "akinsho/toggleterm.nvim" -- terminal

	--lsp
	use "neovim/nvim-lspconfig" -- enable LSP
	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"

	use "hrsh7th/cmp-nvim-lsp"
	use "jose-elias-alvarez/null-ls.nvim"
	use "jay-babu/mason-null-ls.nvim"

	--completion
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-buffer" -- buffer completions
	use "hrsh7th/cmp-path" -- path completions
	use "hrsh7th/cmp-cmdline" -- cmdline completions
	use "L3MON4D3/LuaSnip"
	use "saadparwaiz1/cmp_luasnip" -- snippet completions
	use "mattn/emmet-vim" -- emmet is useful for tsx

	use "numToStr/Comment.nvim" -- commenter

	--snips
	use 'SirVer/ultisnips'

	--treesitter
	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

	--telescope
	use "nvim-telescope/telescope.nvim"
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

	--theme
	use "sainnhe/gruvbox-material"
	use "LunarVim/colorschemes"
	use "morhetz/gruvbox"
	use "https://github.com/chase/focuspoint-vim"
	use "romainl/Apprentice"
	use "https://github.com/tyrannicaltoucan/vim-deep-space"
	use "https://github.com/ayu-theme/ayu-vim"
	use "https://github.com/cocopon/iceberg.vim"
	use "https://github.com/yorickpeterse/happy_hacking.vim"
	use "https://github.com/w0ng/vim-hybrid"

	--icons
	use 'ryanoasis/vim-devicons'
	use "kyazdani42/nvim-web-devicons"

	--airline / tabline
	use 'hoob3rt/lualine.nvim'
	use 'kdheepak/tabline.nvim'
	use "akinsho/bufferline.nvim"

	--latex
	use "lervag/vimtex"

	--LISP
	use "vlime/vlime"

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
