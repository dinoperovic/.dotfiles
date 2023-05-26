return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "arkav/lualine-lsp-progress" },
		opts = function(_, opts)
			table.remove(opts.sections.lualine_c)
			table.insert(opts.sections.lualine_c, "lsp_progress")
		end,
	},
}
