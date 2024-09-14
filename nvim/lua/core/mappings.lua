-- setting ledder key

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeToggle<CR>')

vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<C-CR>', '<Esc>o', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<C-CR>', '<Esc>o<CR>k$', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-CR>', '<Esc>o<CR>', { noremap = true, silent = true })

