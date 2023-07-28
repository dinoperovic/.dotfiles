return {
	{ "catppuccin/nvim", name = "catppuccin", opts = {
		flavour = "macchiato",
	} },
	{ "rose-pine/neovim" },
	{ "rebelot/kanagawa.nvim" },
	{ "sainnhe/everforest" },
	{ "sainnhe/gruvbox-material" },
	{ "sainnhe/edge" },
	{ "sainnhe/sonokai" },
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nordic").load()
		end,
	},
}
