return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      opts.defaults = opts.defaults or {}
      opts.defaults.preview = opts.defaults.preview or {}
      opts.defaults.preview.treesitter = false
      return opts
    end,
  },
}
