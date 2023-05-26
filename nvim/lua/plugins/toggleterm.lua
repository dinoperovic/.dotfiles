return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			size = function(term)
				if term.direction == "horizontal" then
					return 15
				elseif term.direction == "vertical" then
					return vim.o.columns * 0.4
				end
			end,
		},
		keys = {
			{
				"<M-1>",
				"<cmd>ToggleTerm direction=horizontal<CR>",
				mode = { "n", "t" },
				desc = "Toggle Terminal (horizontal)",
			},
			{
				"<M-2>",
				"<cmd>ToggleTerm direction=vertical<CR>",
				mode = { "n", "t" },
				desc = "Toggle Terminal (vertical)",
			},
		},
	},
}
