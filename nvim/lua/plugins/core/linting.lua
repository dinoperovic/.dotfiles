return {
	{
		"mfussenegger/nvim-lint",
		dependencies = {
			"williamboman/mason.nvim",
		},
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			linters_by_ft = {
				-- javascript/typescript
				javascript = { "eslint_d" },
				typescript = { "eslint_d" },

				-- frontend
				javascriptreact = { "eslint_d" },
				typescriptreact = { "eslint_d" },
				svelte = { "eslint_d" },
			},
		},
		-- stylua: ignore
		keys = {
			{ "<leader>cl", function() require("lint").try_lint() end, desc = "Lint Buffer" },
		},
		config = function(_, opts)
			local lint = require("lint")
			lint.linters_by_ft = opts.linters_by_ft

			vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
				group = vim.api.nvim_create_augroup("lint", { clear = true }),
				callback = function()
					lint.try_lint()
				end,
			})
		end,
	},
}