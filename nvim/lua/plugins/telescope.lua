local Util = require("lazyvim.util")

return {
	{
		"nvim-telescope/telescope.nvim",
		keys = {
			{ "<leader><space>", Util.telescope("files", { hidden = true }), desc = "Find Files (root dir)" },
			{ "<leader>ff", Util.telescope("files", { hidden = true }), desc = "Find Files (root dir)" },
			{ "<leader>fF", Util.telescope("files", { cwd = false, hidden = true }), desc = "Find Files (cwd)" },
			{ "<leader>F", Util.telescope("files", { cwd = false, hidden = false }), desc = "Find Files (cwd)" },
			{
				"<C-p>",
				Util.telescope("files", { cwd = false, hidden = true, previewer = false }),
				desc = "Find Files (cwd)",
			},
		},
		opts = {
			defaults = {
				path_display = { "truncate" },
				mappings = {
					i = {
						["<C-x>"] = require("telescope.actions").delete_buffer,
					},
				},
			},
		},
	},
}
