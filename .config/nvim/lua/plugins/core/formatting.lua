return {
	{
		"stevearc/conform.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>cf",
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				mode = { "n", "v" },
				desc = "Format Buffer",
			},
		},
		opts = {
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = false,
			},
			formatters_by_ft = {
				lua = { "stylua" },
				sh = { "shfmt" },
				bash = { "shfmt" },

				-- frontend
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescriptreact = { "prettierd" },
				vue = { "prettierd" },
				svelte = { "prettierd" },
				css = { "prettierd" },
				scss = { "prettierd" },
				less = { "prettierd" },
				html = { "prettierd" },
				handlebars = { "prettierd" },
				json = { "prettierd" },
				jsonc = { "prettierd" },
				yaml = { "prettierd" },
				markdown = { "prettierd" },
				["markdown.mdx"] = { "prettierd" },
				graphql = { "prettierd" },

				-- go
				go = { "goimports", "gofumpt" },
			},
		},
		init = function()
			vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
		end,
	},
}
