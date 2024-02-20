return {
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			vim.cmd("colorscheme gruvbox")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "gruvbox",
				},
				sections = {
					lualine_c = { {
						"filename",
						path = 1,
					} },
				},
			})
		end,
	},

	-- Language Server Protocol config helpers.
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"mfussenegger/nvim-lint",
	{
		"stevearc/conform.nvim",
		opts = {},
	},

	-- NeoVim environement helpers.
	"folke/neodev.nvim",

	-- Code completion.
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",

			"hrsh7th/cmp-nvim-lsp",
		},
	},

	-- Code highlighting.
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},

	-- Telescope searcher and fuzzy search.
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
		},
	},

	-- Git support.
	"lewis6991/gitsigns.nvim",
	"sindrets/diffview.nvim",
}
