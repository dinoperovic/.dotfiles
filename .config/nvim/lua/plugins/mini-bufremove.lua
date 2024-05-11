return {
	"echasnovski/mini.bufremove",
	-- stylua: ignore
	keys = {
		{ "<S-x>", function() require("mini.bufremove").delete(0) end, desc = "Delete Buffer" },
		{ "<leader>bd", function() require("mini.bufremove").delete(0) end, desc = "Delete Buffer" },
		{ "<leader>bD", function() require("mini.bufremove").delete(0, true) end, desc = "Delete Buffer (force)" },
	},
}
