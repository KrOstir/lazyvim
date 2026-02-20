-- Conform
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      sh = { "shfmt" },
      bash = { "shfmt" },
      zsh = { "shfmt" },

      lua = { "stylua" },
      python = { "black" },
    },
  },
}
