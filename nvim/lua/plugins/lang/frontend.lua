return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		optional = true,
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"html-lsp",
				"css-lsp",
				"typescript-language-server",
				"svelte-language-server",
				"eslint_d",
				"prettierd",
			})
		end,
	},
	{
		"stevearc/conform.nvim",
		optional = true,
		opts = function(_, opts)
			vim.list_extend(opts.formatters_by_ft, {
				javascript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				vue = { "prettierd" },
				svelte = { "prettierd" },
				css = { "prettierd" },
				scss = { "prettierd" },
				less = { "prettierd" },
				html = { "prettierd" },
				json = { "prettierd" },
				jsonc = { "prettierd" },
				yaml = { "prettierd" },
				markdown = { "prettierd" },
				["markdown.mdx"] = { "prettierd" },
				graphql = { "prettierd" },
				handlebars = { "prettierd" },
			})
		end,
	},
}
