local function on_e_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  -- your removals and mappings go here
  vim.keymap.set('n', '<C-l>', api.node.open.vertical, opts('Open: Vertical Split'))
end

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  on_attach = on_e_attach
})

vim.keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>")
