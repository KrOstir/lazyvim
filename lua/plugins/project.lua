-- Neovim project plugin
return {
  "coffebar/neovim-project",
  enabled = true,
  opts = {
    projects = { -- define project roots
      "~/.config/*",
      "~/AppData/Local/nvim",
      "~/PowerShell/*",
      "~/PowerShell/*",
      "~/Programing/*",
      "~/Python/*",
    },
  },
  init = function()
    -- enable saving the state of plugins in the session
    vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
  priority = 100,
  keys = {
    { "<leader>sp", "<cmd>Telescope neovim-project discover<cr>", desc = "Project discover" },
    { "<leader>sP", "<cmd>Telescope neovim-project history<cr>", desc = "Project history" },
    { "<leader>sq", "<cmd>NeovimProjectLoadRecent<cr>", desc = "Procejst recent" },
  },
}
