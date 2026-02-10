return {
  {
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },
    pin = true, -- critical: stop Lazy update checks
    build = function()
      local app = vim.fn.stdpath("data") .. "/lazy/markdown-preview.nvim/app"
      vim.fn.system({ "npm", "install", "--prefix", app, "--no-audit", "--no-fund" })
    end,
  },
}
