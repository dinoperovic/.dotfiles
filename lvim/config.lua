-- Vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- General
lvim.log.level = "warn"
lvim.format_on_save.enabled = true

-- Keymaps
lvim.leader = "space"
lvim.keys.insert_mode["<C-e>"] = "<C-o>A"
lvim.keys.insert_mode["<C-a>"] = "<C-o>I"
lvim.keys.normal_mode["<C-s>"] = ":w<CR>"
lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"
lvim.keys.normal_mode["<C-u>"] = "<C-u>zz"
lvim.keys.normal_mode["<S-x>"] = ":BufferKill<CR>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- Theme
lvim.colorscheme = "rose-pine"

-- Project
lvim.builtin.project.detection_methods = { "pattern" }
lvim.builtin.project.patterns = { ".git", "^node_modules", "^.venv" }

-- Tree explorer
lvim.builtin.nvimtree.setup.view.width = 40

-- Treesitter 
lvim.builtin.treesitter.auto_install = true
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.ensure_installed = {}

-- LSP 
lvim.lsp.installer.setup.automatic_installation = true

-- Linters and formatters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black" },
  { command = "isort" },
  { command = "prettierd" },
}
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {}


-- Plugins
lvim.plugins = {
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },
  {
    "sindrets/diffview.nvim",
    event = "BufRead",
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "folke/lsp-colors.nvim",
    event = "BufRead",
  },
  {
  "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    lazy = true,
    config = function()
      require("persistence").setup {
        dir = vim.fn.expand(vim.fn.stdpath "config" .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
      }
    end,
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  { "mg979/vim-visual-multi" },
  {
    "github/copilot.vim",
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("")', { expr = true, silent = true })
    end,
  },

  -- Themes
  { "lunarvim/horizon.nvim" },
  { "catppuccin/nvim" },
  { 'rose-pine/neovim'},
}

-- windwp/nvim-spectre
lvim.builtin.which_key.mappings["r"] = {
  name = "Replace",
  s = { "<cmd>lua require('spectre').open()<cr>", "search" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "word" },
  f = { "<cmd>lua require('spectre').open_file_search()<cr>", "file" },
}

-- folke/trouble.nvim
lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}

-- folke/persistence.nvim
lvim.builtin.which_key.mappings["S"] = {
  name = "Session",
  c = { "<cmd>lua require('persistence').load()<cr>", "Restore last session for current dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
}

