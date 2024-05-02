local lazypath = vim.fn.stdpath('data') .. '/plugin/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- NERDTree
  {'preservim/nerdtree'},

  -- Plenary (needed by a lot of other packages)
  {'nvim-lua/plenary.nvim'},

  -- Telescope  
  {'nvim-telescope/telescope.nvim'},
  {'nvim-telescope/telescope-fzf-native.nvim'},

  -- Treesitter  
  {'nvim-treesitter/nvim-treesitter'},

  {"folke/trouble.nvim",
    branch = "dev",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
    opts = {},
  },

  -- Prime
  {'ThePrimeagen/harpoon', branch = "harpoon2"},
  {'ThePrimeagen/refactoring.nvim'},

  -- Lsp Zero
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},

  -- Aesthethics
  {'nvim-tree/nvim-web-devicons'},
  {'lewis6991/gitsigns.nvim'},
  {'catppuccin/nvim', name = "catppuccin", priority = 1000},

  -- Barbar
  {'romgrk/barbar.nvim'},

  -- Lualine (Statusline)
  {'nvim-lualine/lualine.nvim'},

  -- Copilot
  {'github/copilot.vim'},

  -- Go Setup
  {'ray-x/go.nvim'},
  {'ray-x/guihua.lua'},

  -- Dap
  {'theHamsta/nvim-dap-virtual-text'},
  {'mfussenegger/nvim-dap'},
  {'rcarriga/nvim-dap-ui'},
  {'nvim-neotest/nvim-nio'},

  -- Undo Tree
  {"mbbill/undotree"},

  -- Treesitter Context
  {"nvim-treesitter/nvim-treesitter-context"},

})
