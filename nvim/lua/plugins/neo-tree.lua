return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = function(_, opts)
			opts.window.mappings["l"] = "open"
			opts.window.mappings["h"] = "close_node"
			opts.filesystem.filtered_items = {
				visible = true,
			}
		end,
	},
}
