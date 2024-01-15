vim.g.mapleader = " "

-- Move blocks up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- scroll up and down page, keep cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- scroll through "/" searches with cursor centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "G", "Gzz")

-- yank into clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>fo", function()
  vim.lsp.buf.format()
end)

vim.keymap.set("i", "<S-Tab>", "<C-o>a")

vim.api.nvim_set_keymap(
  'n',
  '<leader>o',
  [[:call append(line('.'), '')<CR>:call append(line('.') + 2, '')<CR>kkjjI]],
  { noremap = true, silent = true })

-- Awesome semicolon magic remap
vim.keymap.set("i", ";<CR>", "<end>;<CR>")
