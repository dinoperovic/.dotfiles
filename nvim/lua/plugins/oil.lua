return {
	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			view_options = {
				show_hidden = true,
			},
		},
		-- stylua: ignore
		keys = {
			{ "-", function() require("oil").open() end, desc = "Open parent directory" },
		},
	},
}
