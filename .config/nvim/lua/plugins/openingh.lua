return {
	"almo7aya/openingh.nvim",
	lazy = false,
	keys = {
		{ "<leader>ghr", "<cmd>OpenInGHRepo<cr>", desc = "Open github repo" },
		{ "<leader>ghf", "<cmd>OpenInGHFile<cr>", desc = "Open github file" },
		{ "<leader>ghl", "<cmd>OpenInGHFileLines<cr>", desc = "Open github line" },
		{ "<leader>ghl", "<cmd>'<,'>OpenInGHFileLines<cr>", mode = "v", desc = "Open github lines" },

		{ "<leader>ghyr", "<cmd>OpenInGHRepo+<cr>", desc = "Yank github repo URL" },
		{ "<leader>ghyf", "<cmd>OpenInGHFile+<cr>", desc = "Yank github file URL" },
		{ "<leader>ghyl", "<cmd>OpenInGHFileLines+<cr>", desc = "Yank github line URL" },
		{ "<leader>ghyl", "<cmd>'<,'>OpenInGHFileLines+<cr>", mode = "v", desc = "Yank github lines URL" },
	},
	init = function()
		vim.g.openingh_copy_to_register = true
	end,
}
