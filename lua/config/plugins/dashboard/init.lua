require('utils.nonicons')

local M = {
  'glepnir/dashboard-nvim',
  lazy = false,
}

function M.config()
  local db = require('dashboard')

  db.session_auto_save_on_exit = true
  db.session_directory = vim.fn.stdpath('cache') .. '/session'
  db.session_verbose = true

  vim.api.nvim_create_autocmd('User', {
    pattern = 'DBSessionSavePre',
    callback = function() vim.cmd('NeoTreeClose') end,
  })

  db.preview_file_height = 12
  db.preview_file_width = 80
  db.custom_header = {
    '01001110 01100101 01101111 01110110 01101001 01101101',
    '01001001 01101110 01110100 01100101 01100111 01110010 01100001 01110100 01100101 01100100',
    '01000100 01100101 01110110 01100101 01101100 01101111 01110000 01101101 01100101 01101110 01110100',
    '01000101 01101110 01110110 01101001 01110010 01101111 01101110 01101101 01100101 01101110 01110100',
    '01100010 01111001',
    '01010010 01000001 01110000 01110010 01101111 01100111 01110010 01100001 01101101 01101101',
    '',
    '. . . NEVIRAIDE . . .',
    '',
  }
  db.custom_center = {
    {
      desc = 'New file ' .. icon('file'),
      action = 'lua dashNewFile()',
    },
    {
      desc = 'Find files ' .. icon('search'),
      action = 'Telescope find_files',
    },
    { desc = 'Load saved session ' .. icon('archive'), action = 'SessionLoad' },
    {
      desc = 'Recent files in current directory ' .. icon('history'),
      action = 'Telescope oldfiles',
    },
    {
      desc = 'Show TODO list ' .. icon('tasklist'),
      action = 'TodoTelescope theme=ivy initial_mode=normal previewer=false layout_config={bottom_pane={height=14}}',
    },
    { desc = 'Plugin manager ' .. icon('plug'), action = 'Lazy' },
    { desc = 'Neovim Check Health ' .. icon('pulse'), action = 'checkhealth' },
    {
      icon = ' Exit ',
      desc = icon('sign-out'),
      icon_hl = { fg = 'red' },
      action = 'q',
    },
  }

  local function nvim_version()
    local nvim_full_version_info = vim.fn.execute('version')
    if nvim_full_version_info:match('NVIM') then
      return nvim_full_version_info:match('NVIM [^\n]*')
    else
      return 'Check your dashboard configuration file'
    end
  end

  local plugins = require('lazy').stats().count

  db.custom_footer = {
    '',
    nvim_version(),
    'Installed ' .. plugins .. ' plugins',
  }
end

return M
