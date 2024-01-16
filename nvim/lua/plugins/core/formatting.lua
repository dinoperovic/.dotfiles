return {
	{
		"stevearc/conform.nvim",
		opts = {
			format_on_save = {
				timeout_ms = 500,
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
		-- stylua: ignore
		keys = {
			{ "<leader>cf", function() require("conform").format({ lsp_fallback = true }) end, desc = "Format Code" },
		},
	},
}
