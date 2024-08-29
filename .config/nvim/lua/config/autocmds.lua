-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	group = highlight_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Set spell for filetypes
local spellcheck_group = vim.api.nvim_create_augroup("Spellcheck", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = spellcheck_group,
	pattern = { "markdown" },
	callback = function()
		vim.opt_local.spell = true
	end,
})
