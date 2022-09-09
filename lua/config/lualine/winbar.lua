local buffer_not_empty = require('utils').buffer_not_empty

return {
  lualine_a = {},
  lualine_b = {},
  lualine_c = {
    {
      function()
        local half_window_width = vim.api.nvim_win_get_width(0) / 2 - 10
        return string.rep(' ', half_window_width)
      end,
      padding = { left = 0, right = 0 },
    },
    {
      function() return '' end,
      color = function() return { fg = color.bg, bg = color.none } end,
      padding = { left = 0, right = 0 },
    },
    {
      'location',
      icon = '',
      cond = buffer_not_empty,
      color = { bg = color.bg },
      padding = { left = 1, right = 1 },
    },
    {
      function()
        local mode_icons = {
          n = icon('vim-normal-mode'),
          i = icon('vim-insert-mode'),
          c = icon('vim-command-mode'),
          v = icon('vim-visual-mode'),
          [''] = icon('vim-visual-mode') .. '-Block',
          V = icon('vim-visual-mode') .. '-Line',
          R = icon('vim-replace-mode'),
        }
        return mode_icons[vim.fn.mode()]
      end,
      color = function()
        local mode_color = {
          n = color.green,
          i = color.blue,
          v = color.magenta,
          [''] = color.magenta,
          V = color.magenta,
          c = color.yellow,
          R = color.red,
          t = color.red,
        }
        return {
          fg = mode_color[vim.fn.mode()],
          gui = 'bold,italic',
          bg = color.bg,
        }
      end,
      padding = { left = 1, right = 1 },
    },
    {
      'progress',
      cond = buffer_not_empty,
      color = { fg = color.fg, gui = 'bold', bg = color.bg },
      padding = { left = 1, right = 1 },
    },
    {
      function() return '' end,
      color = function() return { fg = color.bg, bg = color.none } end,
      padding = { left = 0, right = 0 },
    },
  },
  lualine_x = {},
  lualine_y = {},
  lualine_z = {},
}