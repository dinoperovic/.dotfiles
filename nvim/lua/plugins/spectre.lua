return {
	"nvim-pack/nvim-spectre",
	cmd = "Spectre",
	opts = {
		open_cmd = "noswapfile vnew",
		live_update = true,
	},
	-- stylua: ignore
	keys = {
		{ "<leader>rs", function() require("spectre").toggle() end, desc = "Replace Search" },
		{ "<leader>rw", function() require("spectre").open_visual({select_word = true}) end, desc = "Replace Word" },
	},
}
