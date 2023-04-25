-- Vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true
vim.opt.background = "dark"

-- General
lvim.log.level = "warn"
lvim.format_on_save.enabled = true

-- Theme
lvim.colorscheme = "everforest"

-- Keymaps
lvim.leader = "space"
lvim.keys.insert_mode["<C-e>"] = "<C-o>A"
lvim.keys.insert_mode["<C-a>"] = "<C-o>I"
lvim.keys.normal_mode["<C-p>"] = ":Telescope find_files<CR>"
lvim.keys.normal_mode["<C-s>"] = ":w<CR>"
lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"
lvim.keys.normal_mode["<C-u>"] = "<C-u>zz"
lvim.keys.normal_mode["<S-x>"] = ":BufferKill<CR>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<M-a>"] = "ggVG"

-- Project
lvim.builtin.project.detection_methods = { "pattern" }
lvim.builtin.project.patterns = { ".git", "^node_modules", "^.venv" }

-- Tree explorer
lvim.builtin.nvimtree.setup.view.width = 41

-- Treesitter
lvim.builtin.treesitter.auto_install = true
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.ensure_installed = {}

-- LSP
lvim.lsp.installer.setup.automatic_server_installation = true
lvim.lsp.installer.setup.ensure_installed = { "jsonls" }

-- Linters and formatters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black" },
  { command = "isort" },
  { command = "prettierd" },
}
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint_d" },
}


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
      vim.g.mkdp_auto_start = 2
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
  { "mg980/vim-visual-multi" },
  {
    "zbirenbaum/copilot-cmp",
    event = "InsertEnter",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup({
          suggestion = {
            enabled = false,
            auto_trigger = false,
          },
          panel = { enabled = false },
        })
        require("copilot_cmp").setup()
      end, 101)
    end,
  },
  {
    'simrat40/rust-tools.nvim',
    config = function()
      local rt = require('rust-tools')
      rt.setup({
        server = {
          on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<S-k>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>la", rt.code_action_group.code_action_group, { buffer = bufnr })
          end,
        },
      })
    end
  },
  {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup({
        window = {
          width = 1.8,
        }
      })
    end
  },

  -- Themes
  { "catppuccin/nvim" },
  { 'rose-pine/neovim' },
  { 'rebelot/kanagawa.nvim' },
  { 'sainnhe/everforest' },
  { 'sainnhe/gruvbox-material' },
  { 'sainnhe/edge' },
  { 'sainnhe/sonokai' },
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
  s = { "<cmd>lua require('persistence').load()<cr>", "Restore last session for current dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
}
