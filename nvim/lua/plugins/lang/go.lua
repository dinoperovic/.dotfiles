return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"go",
				"gomod",
				"gowork",
				"gosum",
				"templ",
			})
		end,
		init = function()
			vim.filetype.add({
				extension = {
					templ = "templ",
				},
			})
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"gopls",
				"goimports",
				"gofumpt",
			})
		end,
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				go = { "goimports", "gofumpt" },
			},
		},
	},
}
