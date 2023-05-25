return {
	-- project.nvim
	{
		"ahmedkhalf/project.nvim",
		opts = {
			detection_methods = { "pattern" },
			patterns = { ".git", "^node_modules", "^.venv" },
		},
	},

	-- Disable plugins
	{ "rcarriga/nvim-notify", enabled = false },
	{ "folke/noice.nvim", enabled = false },
}
