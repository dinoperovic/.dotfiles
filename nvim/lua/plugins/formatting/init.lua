return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = function(_, opts)
			opts.ensure_installed = opts.ensure_installed or {}
			vim.list_extend(opts.ensure_installed, { "stylua", "shfmt" })
		end,
	},
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
			formatters_by_ft = {
				lua = { "stylua" },
				sh = { "shfmt" },
			},
		},
		keys = {
			{
				"<leader>cf",
				function()
					require("conform").format({ lsp_fallback = true })
				end,
				desc = "Format Code",
			},
		},
	},
}
