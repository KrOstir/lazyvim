return {
  {
    "Vigemus/iron.nvim",
    config = function()
      local iron = require("iron.core")
      iron.setup({
        config = {
          -- Whether a repl should be discarded or not
          scratch_repl = true,
          -- Your repl definitions come here
          repl_definition = {
            sh = {
              -- Can be a table or a function that
              -- returns a table (see below)
              command = { "zsh" },
            },
            python = {
              command = { "ipython" },
            },
          },
          -- How the repl window will be displayed
          -- See below for more information
          -- repl_open_cmd = require("iron.view").bottom(40),
          repl_open_cmd = require("iron.view").split.vertical.botright(0.40),
        },
        -- Iron doesn't set keymaps by default anymore.
        -- You can set them here or manually add keymaps to the functions in iron.core
        keymaps = {
          send_motion = "<space>sc",
          visual_send = "<space>sc",
          send_file = "<space>sf",
          send_line = "<space>sl",
          send_mark = "<space>sm",
          mark_motion = "<space>mc",
          mark_visual = "<space>mc",
          remove_mark = "<space>md",
          cr = "<space>s<cr>",
          interrupt = "<space>s<space>",
          exit = "<space>sq",
          clear = "<space>cl",
        },
        -- If the highlight is on, you can change how it looks
        -- For the available options, check nvim_set_hl
        highlight = {
          italic = true,
        },
        ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
      })
      
      -- Send cell block function and jump to next
      local function send_cell_block_and_next()
        local iron = require("iron.core")
        local current_line = vim.fn.line(".")
        local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
        
        -- Find start of current cell
        local cell_start = 1
        for i = current_line, 1, -1 do
          if lines[i]:match("^%s*# %%") then
            cell_start = i
            break
          end
        end
        
        -- Find end of current cell
        local cell_end = #lines
        for i = current_line, #lines do
          if i > current_line and lines[i]:match("^%s*# %%") then
            cell_end = i - 1
            break
          end
        end
        
        -- Send the cell block, ignoring blank lines
        local cell_lines = {}
        for i = cell_start, cell_end do
          local line = lines[i]
          if line:match("%S") then  -- Only add non-blank lines
            table.insert(cell_lines, line)
          end
        end
        iron.send(nil, cell_lines)
        
        -- Jump to next cell
        local next_cell = cell_end + 1
        for i = cell_end + 1, #lines do
          if lines[i]:match("^%s*# %%") then
            next_cell = i
            break
          end
        end
        vim.fn.cursor(next_cell, 1)
      end
      
      vim.keymap.set("n", "<space>sb", send_cell_block_and_next)
      
      -- iron also has a list of commands, see :h iron-commands for all available commands
      vim.keymap.set("n", "<space>rs", "<cmd>IronRepl<cr>")
      vim.keymap.set("n", "<space>rr", "<cmd>IronRestart<cr>")
      vim.keymap.set("n", "<space>rf", "<cmd>IronFocus<cr>")
      vim.keymap.set("n", "<space>rh", "<cmd>IronHide<cr>")
    end,
  },
}
