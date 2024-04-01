return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"nvim-neotest/nvim-nio",

		-- Adapters
		"nvim-neotest/neotest-plenary",
		"nvim-neotest/neotest-python",
		"marilari88/neotest-vitest",
		"thenbe/neotest-playwright",
	},
	-- stylua: ignore
	keys = {
		{ "<leader>tt", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run File" },
		{ "<leader>tT", function() require("neotest").run.run(vim.loop.cwd()) end, desc = "Run All Test Files" },
		{ "<leader>tr", function() require("neotest").run.run() end, desc = "Run Nearest" },
		{ "<leader>tl", function() require("neotest").run.run_last() end, desc = "Run Last" },
		{ "<leader>ts", function() require("neotest").summary.toggle() end, desc = "Toggle Summary" },
		{ "<leader>to", function() require("neotest").output.open() end, desc = "Show Output" },
		{ "<leader>tO", function() require("neotest").output_panel.toggle() end, desc = "Toggle Output Panel" },
		{ "<leader>tS", function() require("neotest").run.stop() end, desc = "Stop" },

		-- playwright
		{ "<leader>ta", function() require("neotest").playwright.attachment() end, desc = "Launch test attachment" },
	},
	config = function()
		require("neotest").setup({
			output = {
				open_on_run = false,
			},
			adapters = {
				require("neotest-plenary"),
				require("neotest-python"),
				require("neotest-vitest"),
				require("neotest-playwright").adapter({
					options = {
						enable_dynamic_test_discovery = true,
					},
				}),
			},
			consumers = {
				-- frontend
				playwright = require("neotest-playwright.consumers").consumers,
			},
		})
	end,
}
