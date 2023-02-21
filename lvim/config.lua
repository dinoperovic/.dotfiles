-- General
lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.colorscheme = "lunar"
lvim.leader = "space"

-- Project
lvim.builtin.project.detection_methods = { "pattern" }
lvim.builtin.project.patterns = { ".git" }

-- Keybindings
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-q>"] = ":q<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- Telescope navigation
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}

-- Treesitter config
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- LSP settings
lvim.lsp.installer.setup.ensure_installed = {
  "pyright",
  "sumneko_lua",
  "jsonls",
}

-- Additional formatters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black", filetypes = { "python" } },
  { command = "isort", filetypes = { "python" } },
  {
    command = "prettierd",
    filetypes = { "typescript", "typescriptreact", "svelte" },
  },
}

-- Additional linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "mypy",   filetypes = { "python" } },
  { command = "flake8", filetypes = { "python" } },
}

-- Additional Plugins
lvim.plugins = {
  -- Trouble diagnostics
  { "folke/trouble.nvim",      cmd = "TroubleToggle" },

  -- GIT diffview
  { 'sindrets/diffview.nvim',  requires = 'nvim-lua/plenary.nvim' },

  -- Multi cursor
  { "mg979/vim-visual-multi" },

  -- GH copilot
  { "github/copilot.vim" },

  -- Themes
  { "catppuccin/nvim" },
  { "arcticicestudio/nord-vim" },
}

-- Trouble
lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}
