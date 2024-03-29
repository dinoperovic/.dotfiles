return {
	{
		"mfussenegger/nvim-lint",
		dependencies = {
			"williamboman/mason.nvim",
		},
		event = { "BufReadPre", "BufNewFile" },
		-- stylua: ignore
		keys = {
			{ "<leader>cl", function() require("lint").try_lint() end, desc = "Lint Buffer" },
		},
		opts = {
			linters_by_ft = {
				-- python
				python = { "mypy" },
			},
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
