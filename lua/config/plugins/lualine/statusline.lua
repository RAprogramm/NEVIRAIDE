local conditions = require('config.plugins.lualine.utils').conditions
local left_separator = require('config.plugins.lualine.utils').left_separator
local right_separator = require('config.plugins.lualine.utils').right_separator
local lsp_source = require('config.plugins.lualine.utils').lsp_source
local diff_source = require('config.plugins.lualine.utils').diff_source
local branch_source = require('config.plugins.lualine.utils').branch_source
local interpreter = require('config.plugins.lualine.utils').interpreter
local virtual_env = require('config.plugins.lualine.utils').virtual_env

return {
  lualine_a = {},
  lualine_b = {},
  lualine_c = {
    {
      left_separator,
      color = { fg = color.bg, bg = color.none },
      padding = { left = 3, right = 0 },
    },
    {
      lsp_source,
      icon = '',
      color = { bg = color.bg },
    },
    {
      function() return '|' end,
      color = { fg = 'Grey', bg = color.bg, gui = 'none' },
      cond = conditions.buffer_not_empty,
      padding = { left = 0, right = 0 },
    },
    {
      'diagnostics',
      sources = { 'nvim_diagnostic' },

      symbols = {
        error = ' ',
        warn = '⚠ ',
        info = ' ',
        hint = ' ',
      },
      diagnostics_color = {
        color_error = { fg = color.red },
        color_warn = { fg = color.yellow },
        color_info = { fg = color.blue },
        color_hint = { fg = color.magenta },
      },
      always_visible = true,
      color = { bg = color.bg },
      cond = conditions.buffer_not_empty,
    },
    {
      right_separator,
      color = { fg = color.bg, bg = color.none },
      padding = { left = 0, right = 0 },
    },
    { function() return '%=' end },
    {
      left_separator,
      color = { fg = color.bg, bg = color.none },
      cond = conditions.hide_in_width or conditions.buffer_not_empty,
      padding = { left = 0, right = 0 },
    },
    {
      'filesize',
      cond = conditions.hide_in_width or conditions.buffer_not_empty,
      color = { bg = color.bg },
    },
    {
      'fileformat',
      icons_enabled = true,
      cond = conditions.hide_in_width or conditions.buffer_not_empty,
      color = { fg = color.fg, bg = color.bg },
      symbols = {
        unix = 'LF ',
        dos = 'CRLF ',
        mac = 'CR ',
      },
    },
    {
      'o:encoding',
      fmt = string.upper,
      icons_enabled = true,
      cond = conditions.hide_in_width or conditions.buffer_not_empty,
      color = { fg = color.fg, bg = color.bg },
    },
    {
      function() return vim.o.tabstop .. ' spaces' end,
      cond = conditions.hide_in_width or conditions.buffer_not_empty,
      color = { bg = color.bg },
    },
    {
      interpreter,
      color = { fg = color.fg, bg = color.bg, gui = 'italic' },
      cond = conditions.hide_in_width or conditions.buffer_not_empty,
    },
    {
      virtual_env,
      color = { bg = color.bg, gui = 'italic' },
      cond = conditions.hide_in_width or conditions.buffer_not_empty,
      padding = { left = 0, right = 1 },
    },
    {
      right_separator,
      color = { fg = color.bg, bg = color.none },
      cond = conditions.hide_in_width or conditions.buffer_not_empty,
      padding = { left = 0, right = 0 },
    },
  },
  lualine_x = {
    {
      left_separator,
      color = { fg = color.bg, bg = color.none },
      padding = { left = 0, right = 0 },
    },
    {
      'diff',
      source = diff_source,
      color = { bg = color.bg },
      symbols = {
        added = ' ',
        modified = ' ',
        removed = ' ',
      },
      diff_color = {
        added = { fg = color.green },
        modified = { fg = color.blue },
        removed = { fg = color.red },
        ignored = { fg = color.red },
        renamed = { fg = color.red },
      },
    },
    {
      branch_source,
      icon = '',
      color = { fg = color.orange, gui = 'bold', bg = color.bg },
    },
    {
      right_separator,
      color = { fg = color.bg, bg = color.none },
      padding = { left = 0, right = 3 },
    },
  },
  lualine_y = {},
  lualine_z = {},
}
