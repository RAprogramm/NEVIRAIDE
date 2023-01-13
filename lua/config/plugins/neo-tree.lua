local M = {
  'nvim-neo-tree/neo-tree.nvim',
  event = 'VeryLazy',
  branch = 'v2.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
  },
}

function M.config()
  local highlights = require('neo-tree.ui.highlights')

  vim.fn.sign_define(
    'DiagnosticSignError',
    { text = icon('x-circle'), texthl = 'DiagnosticSignError' }
  )
  vim.fn.sign_define(
    'DiagnosticSignWarn',
    { text = icon('alert'), texthl = 'DiagnosticSignWarn' }
  )
  vim.fn.sign_define(
    'DiagnosticSignInfo',
    { text = icon('info'), texthl = 'DiagnosticSignInfo' }
  )
  vim.fn.sign_define(
    'DiagnosticSignHint',
    { text = icon('light-bulb'), texthl = 'DiagnosticSignHint' }
  )

  require('neo-tree').setup({
    event_handlers = {
      {
        event = 'file_opened',
        handler = function(file_path) require('neo-tree').close_all() end,
      },
    },
    default_component_configs = {
      indent = {
        with_expanders = true,
        expander_collapsed = '',
        expander_expanded = '',
        expander_highlight = 'NeoTreeExpander',
      },
      git_status = {
        symbols = {
          added = icon('diff-added'),
          modified = icon('diff-modified'),
          deleted = icon('diff-removed'),
        },
      },
      icon = {
        folder_closed = icon('file-directory-fill'),
        folder_open = icon('file-directory-open-fill'),
        folder_empty = icon('file-directory'),
      },
    },
    filesystem = {
      use_libuv_file_watcher = true,
      follow_current_file = true,
      hijack_netrw_behavior = 'open_current',
    },
  })
end

return M
