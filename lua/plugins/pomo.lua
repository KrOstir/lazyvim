-- Pomodoro plugin
return {
  "epwalsh/pomo.nvim",
  version = "*",
  cmd = { "TimerStart", "TimerRepeat", "TimerSession", "TimerStop", "TimerPause", "TimerResume" },
  dependencies = { "rcarriga/nvim-notify" },
  opts = {
    update_interval = 1000,
    notifiers = {
      {
        name = "Default",
        opts = {
          sticky = false,
          title_icon = "⏳",
          text_icon = "⏱️",
        },
      },
    },

    timers = {
      Break = {
        { name = "Default" },
      },
    }, -- <-- THIS comma was missing

    sessions = {
      pomodoro = {
        { name = "Work", duration = "25m" },
        { name = "Short Break", duration = "5m" },
        { name = "Work", duration = "25m" },
        { name = "Short Break", duration = "5m" },
        { name = "Work", duration = "25m" },
        { name = "Long Break", duration = "15m" },
      },
    },
  },
}
