require("lazy").setup({
  -- copilot
  "zbirenbaum/copilot.lua",
  -- colour scheme (nightfly)
  'bluz71/vim-nightfly-colors',

  -- leap
  'ggandor/leap.nvim',

  -- nvim-tree (file explorer)
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    }
  },


  -- autopairs
  {'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {}
  },

  -- telescope (file jumper)
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- treesitter (text highlighting)
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

  -- fugitive (git)
  'tpope/vim-fugitive',

  -- undotree (file history)
  'mbbill/undotree',

  -- which-key (display key press information)
  {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end
  },

  -- lualine (status bar)
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  -- comments
  {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
  },

  -- toggleterm (in vim terminal)
  {'akinsho/toggleterm.nvim', version = "*", config = true},


  -- autocomplete
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',

  { "folke/neodev.nvim", opts = {} }, -- global-vim  

  -- snippets
  'hrsh7th/cmp-vsnip',
  'hrsh7th/vim-vsnip',
  { "rafamadriz/friendly-snippets" },


  -- Mason (LSP package manager)
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
})
