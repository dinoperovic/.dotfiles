return {
	"vuki656/package-info.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },
	config = function()
		require("package-info").setup({
			hide_up_to_date = true,
		})
		-- stylua: ignore start
		vim.keymap.set({ "n" }, "<leader>cps", "<cmd>lua require('package-info').show({force = true})<cr>", { silent = true, noremap = true, desc = "Show dependency versions" })
		vim.keymap.set({ "n" }, "<leader>cpc", require("package-info").hide, { silent = true, noremap = true, desc = "Hide dependency versions" })
		vim.keymap.set({ "n" }, "<leader>cpt", require("package-info").toggle, { silent = true, noremap = true, desc = "Toggle dependency versions" })
		vim.keymap.set({ "n" }, "<leader>cpu", require("package-info").update, { silent = true, noremap = true, desc = "Update dependency on the line" })
		vim.keymap.set({ "n" }, "<leader>cpd", require("package-info").delete, { silent = true, noremap = true, desc = "Delete dependency on the line" })
		vim.keymap.set({ "n" }, "<leader>cpi", require("package-info").install, { silent = true, noremap = true, desc = "Install a new dependency" })
		vim.keymap.set({ "n" }, "<leader>cpp", require("package-info").change_version, { silent = true, noremap = true, desc = "Install a different dependency version" })
	end,
}
