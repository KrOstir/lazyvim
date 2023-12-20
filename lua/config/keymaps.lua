-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map jk to escape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true, silent = true })
