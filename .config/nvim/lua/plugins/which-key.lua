return {
	"folke/which-key.nvim",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		plugins = { spelling = true },
	},
	config = function(_, opts)
		require("which-key").setup(opts)
		require("which-key").register({
			mode = { "n", "v" },
			["g"] = { name = "goto" },
			["]"] = { name = "next" },
			["["] = { name = "prev" },
			["<leader>b"] = { name = "buffer" },
			["<leader>c"] = { name = "code" },
			["<leader>cp"] = { name = "package" },
			["<leader>f"] = { name = "find" },
			["<leader>g"] = { name = "git" },
			["<leader>h"] = { name = "hunk" },
			["<leader>ht"] = { name = "toggle" },
			["<leader>q"] = { name = "quit/session" },
			["<leader>r"] = { name = "replace" },
			["<leader>s"] = { name = "search" },
			["<leader>t"] = { name = "test" },
			["<leader>w"] = { name = "windows" },
			["<leader>x"] = { name = "diagnostics/quickfix" },
		})
	end,
}
