local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use({
		"svrana/neosolarized.nvim",
		requires = { "tjdevries/colorbuddy.nvim" },
	})
	use("nvim-lualine/lualine.nvim")

	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	use("neovim/nvim-lspconfig")

	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")

	use("onsails/lspkind.nvim") -- vscode-like pictograms

	use("L3MON4D3/LuaSnip")

	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	use("nvim-tree/nvim-web-devicons")

	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")

	use("akinsho/bufferline.nvim")
	use("norcalli/nvim-colorizer.lua")

	use("glepnir/lspsaga.nvim")

	use("jose-elias-alvarez/null-ls.nvim")

	use("lewis6991/gitsigns.nvim")

	use("akinsho/toggleterm.nvim")
end)
