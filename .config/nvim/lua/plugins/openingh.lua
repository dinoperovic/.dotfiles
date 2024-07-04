return {
	"almo7aya/openingh.nvim",
	lazy = false,
	keys = {
		{ "<leader>ghr", "<cmd>OpenInGHRepo<cr>", desc = "Open github repo" },
		{ "<leader>ghf", "<cmd>OpenInGHFile<cr>", desc = "Open github file" },
		{ "<leader>ghf", "<cmd>'<,'>OpenInGHFileLines<cr>", mode = "v", desc = "Open github file lines" },
		{ "<leader>ghl", "<cmd>OpenInGHFileLines<cr>", desc = "Open github line" },
	},
}
