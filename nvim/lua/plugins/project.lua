return {
	{
		"ahmedkhalf/project.nvim",
		opts = {
			detection_methods = { "pattern" },
			patterns = { ".git", "^node_modules", "^.venv" },
		},
		keys = {
			{ "<leader>fp", "<cmd>Telescope projects<cr>", desc = "Find Projects" },
		},
		config = function(_, opts)
			require("project_nvim").setup(opts)
			require("telescope").load_extension("projects")
		end,
	},
}
