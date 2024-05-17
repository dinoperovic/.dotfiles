return {
	"akinsho/toggleterm.nvim",
	version = "*",
	cmd = "ToggleTerm",
	opts = {},
	keys = {
		{ "<C-\\>", "<cmd>ToggleTerm<cr>", mode = { "n", "i", "t" } },
		{ "<C-`>", "<cmd>ToggleTerm<cr>", mode = { "n", "i", "t" } },
		{ "<C-h>", "<cmd>wincmd h<cr>", mode = "t" },
		{ "<C-j>", "<cmd>wincmd j<cr>", mode = "t" },
		{ "<C-k>", "<cmd>wincmd k<cr>", mode = "t" },
		{ "<C-l>", "<cmd>wincmd l<cr>", mode = "t" },
	},
}
