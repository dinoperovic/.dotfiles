return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"ron",
				"rust",
				"toml",
			})
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"rust_analyzer",
			})
		end,
	},
	{
		"saecki/crates.nvim",
		event = "BufRead Cargo.toml",
		config = true,
	},
}
