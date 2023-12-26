-- Add Pocco81/auto-save.nvim to the list of plugins
return {
  "Pocco81/auto-save.nvim",
  -- Delay saving files for some time
  debounce_delay = 1000,
  config = function()
    require("auto-save").setup({})
  end,
}
