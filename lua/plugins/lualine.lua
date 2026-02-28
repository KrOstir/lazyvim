-- Lualine plugin
return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.sections = opts.sections or {}
    opts.sections.lualine_x = opts.sections.lualine_x or {}

    table.insert(opts.sections.lualine_x, 1, {
      function()
        local pomo = require("pomo")
        local timer = pomo.get_first_to_finish()
        if not timer then return "" end
        local timer_name = timer.name or "Timer"
        local time_left = timer:time_remaining()
        if not time_left then return "" end
        local time_text = require("pomo.util").format_time(time_left)
        return string.format("󰄉 %s: %s", timer_name, time_text)
      end,
    })
  end,
}