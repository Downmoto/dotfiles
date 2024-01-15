require("toggleterm").setup {
  on_open = function(terminal)
    vim.cmd('startinsert')
  end
}

vim.keymap.set("n", "<leader>t", ":ToggleTerm direction=float<CR>")
vim.keymap.set("t", "<C-x>", "<C-\\><C-n>:ToggleTerm<CR>")
