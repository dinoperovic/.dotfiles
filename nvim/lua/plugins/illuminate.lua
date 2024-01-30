return {
	"RRethy/vim-illuminate",
	opts = {},
	config = function(_, opts)
		require("illuminate").configure(opts)

		-- change the highlight style
		-- vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "Visual" })
		-- vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "Visual" })
		-- vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "Visual" })
	end,
}
