-- TODO: dynamicly change with lualine
return {
{
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    -- transparent = true,
    integrations = {
      cmp = true,
      gitsigns = true,
      indent_blankline = { enabled = true },
      mini = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      noice = true,
      notify = true,
      neotree = true,
      semantic_tokens = true,
      telescope = {
        enabled = true,
        style = "nvchad"
      },
      treesitter = true,
      which_key = true,
      lightspeed = true,
      ts_rainbow2 = true
    },
  },
},
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      style = "storm",
      -- transparent = true,
    }, -- day, storm, moon, night
  },

  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
  },

  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000
  },
}