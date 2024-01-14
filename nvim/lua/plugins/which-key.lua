return {
  "folke/which-key.nvim",
  event = "VeryLazy",
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
      ["g"] = { name = "+goto" },
      ["]"] = { name = "+next" },
      ["["] = { name = "+prev" },
      ["<leader>b"] = { name = 'buffer' },
      ["<leader>c"] = { name = 'code' },
      ["<leader>f"] = { name = "file/find" },
      ["<leader>g"] = { name = "git" },
      ["<leader>gh"] = { name = "hunks" },
      ["<leader>q"] = { name = "quit/session" },
      ["<leader>s"] = { name = "search" },
      ["<leader>u"] = { name = "ui" },
      ["<leader>w"] = { name = "windows" },
      ["<leader>x"] = { name = "diagnostics/quickfix" },
    })
  end
}
