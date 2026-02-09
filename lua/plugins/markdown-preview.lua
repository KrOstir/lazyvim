-- ~/.config/nvim/lua/plugins/markdown-preview.lua
return {
  {
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },
    build = "cd app && npm install",
    cmd = { "MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle" },
    init = function()
      vim.g.mkdp_browser = "firefox" -- optional for WSL2 (needs: sudo apt install wslu)
    end,
  },
}
