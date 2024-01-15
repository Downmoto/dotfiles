require("lazy").setup({
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
})
