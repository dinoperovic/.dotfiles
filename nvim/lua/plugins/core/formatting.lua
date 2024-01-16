return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>cf",
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				mode = { "n", "v" },
				desc = "Format Code",
			},
		},
		opts = {
			format_on_save = {
				timeout_ms = 1000,
				lsp_fallback = true,
			},
			formatters_by_ft = {
				-- core
				lua = { "stylua" },
				sh = { "shfmt" },

				-- javascript/typescript
				javascript = { "prettier" },
				typescript = { "prettier" },

				-- frontend
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				vue = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				scss = { "prettier" },
				less = { "prettier" },
				html = { "prettier" },
				handlebars = { "prettier" },

				-- other
				json = { "prettier" },
				jsonc = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				["markdown.mdx"] = { "prettier" },
				graphql = { "prettier" },
			},
		},
		init = function()
			vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
		end,
	},
}
