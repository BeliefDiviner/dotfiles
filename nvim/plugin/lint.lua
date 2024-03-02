require("lint").linters_by_ft = {
	lua = { "selene" },
	python = { "ruff" },
	markdown = { "vale" },
	latex = { "vale" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
