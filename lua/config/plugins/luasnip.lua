local M = {
  "L3MON4D3/LuaSnip",
  dependencies = {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end
  }
}

function M.config()
  local ls = require('luasnip')
  local types = require("luasnip.util.types")
  ls.config.setup({
    history = true,
    enable_autosnippets = true,
  })

  local snip = ls.snippet
  local text = ls.text_node
  local insert = ls.insert_node

  ls.config.set_config({
    update_events = "TextChanged,TextChangedI",
    delete_check_events = "TextChanged",
    ext_opts = {
      [types.choiceNode] = {
        active = {
          virt_text = { { "choiceNode", "Comment" } },
        },
      },
    },
    ext_base_prio = 300,
    ext_prio_increase = 1,
    ft_func = function()
      return vim.split(vim.bo.filetype, ".", true)
    end,
  })

  ls.add_snippets(nil, {
    all = {
      snip({
        trig = "signature",
        namr = "Signature",
        dscr = "Name and Surname",
      }, {
        text "Rozanov Andrei",
        insert(0),
      }),
    },
    python = {
      snip("shebang", {
        text { "#!/usr/bin/env python", "" },
        insert(0),
      }),
    },
  })

end

return M
