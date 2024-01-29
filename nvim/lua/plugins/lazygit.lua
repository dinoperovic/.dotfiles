return {
	"kdheepak/lazygit.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("telescope").load_extension("lazygit")
	end,
	keys = {
		{ "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
		{
			"<leader>gr",
			function()
				require("telescope").extensions.lazygit.lazygit()
			end,
			desc = "LazyGit Repos",
		},
	},
}
