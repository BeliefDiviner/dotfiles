return {
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			vim.cmd("colorscheme gruvbox")
		end
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
		config = function()
			require("lualine").setup({
				icons_enabled = true,
				theme = 'gruvbox',
			})
		end,
	},

	-- Language Server Protocol config helpers.
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

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
        build = ':TSUpdate',
    },

	-- Telescope searcher and fuzzy search.
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = 'make',
	},

	-- Git support.
	"lewis6991/gitsigns.nvim",
	"sindrets/diffview.nvim",
}
