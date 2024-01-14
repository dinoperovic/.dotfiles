local Util = require("lazyvim.util")

return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		keys = {
			{
				"<leader>fe",
				function()
					require("neo-tree.command").execute({ toggle = true, dir = Util.root(), reveal_force_cwd = true })
				end,
				desc = "Explorer NeoTree (root dir)",
			},
		},
		opts = function(_, opts)
			opts.window.mappings["l"] = "open"
			opts.window.mappings["h"] = "close_node"
			opts.filesystem.filtered_items = {
				visible = true,
			}
			opts.filesystem.follow_current_file = {
				enabled = false,
			}
		end,
	},
}
