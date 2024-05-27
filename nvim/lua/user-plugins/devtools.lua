return {
	-- Language Server Protocol config helpers.
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- LSP Language Servers.
	"neovim/nvim-lspconfig",

	-- Signature Help
	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		opts = {},
		config = function(_, opts)
			require("lsp_signature").setup(opts)
		end,
	},

	-- LSP Linters.
	"mfussenegger/nvim-lint",

	-- LSP Formatters.
	"stevearc/conform.nvim",

	-- Developer tools.
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	"lewis6991/gitsigns.nvim",
	"sindrets/diffview.nvim",
	"folke/lsp-colors.nvim",

	-- Code highlighting.
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	"HiPhish/jinja.vim",
}
