-- Markview
return {
  {
    "OXY2DEV/markview.nvim",
    ft = { "markdown" },
    config = function()
      require("markview").setup({
        preview = {
          enable = false, -- 👈 start disabled
        },
      })

      -- use commands (works even when Lua helpers differ)
      vim.keymap.set("n", "<leader>mv", "<cmd>Markview toggle<cr>", { desc = "Toggle Markview" })
      vim.keymap.set("n", "<leader>me", "<cmd>Markview enable<cr>", { desc = "Enable Markview" })
      vim.keymap.set("n", "<leader>md", "<cmd>Markview disable<cr>", { desc = "Disable Markview" })
    end,
  },
}
