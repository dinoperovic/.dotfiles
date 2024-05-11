return {
	"sindrets/diffview.nvim",
	event = "BufEnter",
	opts = {},
	keys = {
		{ "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Git diff" },
		{ "<leader>gD", "<cmd>DiffviewOpen main<cr>", desc = "Git diff (main)" },
	},
}
