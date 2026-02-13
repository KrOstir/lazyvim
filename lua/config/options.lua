-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set spell
vim.opt.spell = true
-- Set spelllang to US English and Slovenian
vim.opt.spelllang = "en,sl"

-- Set word wrap
vim.opt.wrap = true

-- Python3 provider
vim.g.python3_host_prog = '/usr/bin/python3'

-- Clipboard for plain WSL: Windows clipboard bridge
vim.opt.clipboard = "unnamedplus"

vim.g.clipboard = {
  name = "wsl-clipboard",
  copy = {
    ["+"] = "clip.exe",
    ["*"] = "clip.exe",
  },
  paste = {
    ["+"] = { "bash", "-lc", "powershell.exe -NoProfile -Command Get-Clipboard -Raw | tr -d '\r'" },
    ["*"] = { "bash", "-lc", "powershell.exe -NoProfile -Command Get-Clipboard -Raw | tr -d '\r'" },
  },
  cache_enabled = 0,
}
