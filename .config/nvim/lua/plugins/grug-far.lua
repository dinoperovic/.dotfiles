return {
	"MagicDuck/grug-far.nvim",
	config = function()
		require("grug-far").setup({})
	end,
	keys = {
		{ "<leader>sr", "<cmd>GrugFar<cr>", desc = "Search and Replace" },
	},
}
