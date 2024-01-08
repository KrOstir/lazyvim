return {
  "folke/noice.nvim",
  enabled = true,
  event = "VeryLazy",
  keys = {
    {
      "<leader>sns",
      function()
        require("noice").cmd("dismiss")
      end,
      desc = "Dismiss All",
    },
    {
      "<leader>snd",
      function()
        require("noice").cmd("disable")
      end,
      desc = "Disable",
    },
    {
      "<leader>sne",
      function()
        require("noice").cmd("enable")
      end,
      desc = "Enable",
    },
  },
}
