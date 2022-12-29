local navic = require('nvim-navic')
local conditions = require('config.plugins.lualine.utils').conditions
local get_file_path = require('config.plugins.lualine.utils').get_file_path
local custom_fname = require('config.plugins.lualine.utils').custom_fname

return {
  lualine_a = {},
  lualine_b = {},
  lualine_c = {
    {
      function() return ' ' end,
      color = { bg = color.none },
      padding = { left = 2, right = 0 },
    },
    {
      get_file_path,
      cond = conditions.hide_in_width or conditions.buffer_not_empty,
      color = { bg = color.none },
      padding = { left = 0, right = 0 },
    },
    {
      'filetype',
      icon_only = true,
      cond = conditions.buffer_not_empty,
      color = { bg = color.none },
      padding = { left = 0, right = 0 },
    },
    {
      custom_fname,
      newfile_status = true,
      cond = conditions.buffer_not_empty,
      padding = { left = 1, right = 0 },
    },
    {
      function() return ' ▶' end,
      cond = navic.is_available and conditions.buffer_not_empty,
      color = { bg = color.none, fg = color.red },
      padding = { left = 0, right = 0 },
    },
    {
      navic.get_location,
      color = { bg = color.none },
      cond = navic.is_available or conditions.buffer_not_empty,
    },
  },
  lualine_x = {},
  lualine_y = {},
  lualine_z = {},
}
