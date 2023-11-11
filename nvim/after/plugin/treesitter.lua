require('nvim-treesitter.configs').setup {
	ensure_installed = {
		'vim',
		'vimdoc',
		'lua',
		'cmake',
		'cpp',
		'cuda',
		'python',
		'dockerfile',
		'gitignore',
		'json',
		'latex',
		'sql',
	},

	auto_install = false,

	highlight = { enable = true },

	indent = { enable = true },

	modules = {},

	sync_install = true,

	ignore_install = {}
}
