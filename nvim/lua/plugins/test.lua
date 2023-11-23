return {
	{ "marilari88/neotest-vitest" },
	{
		"nvim-neotest/neotest",
		opts = {
			adapters = { "neotest-vitest" },
		},
    -- stylua: ignore
    keys ={
      { "<leader>tw", function() require("neotest").watch.toggle(vim.fn.expand("%")) end, desc = "Watch toggle" },
    },
	},
}
