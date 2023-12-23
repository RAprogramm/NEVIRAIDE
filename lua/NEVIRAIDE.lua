-- TODO: make all options dynamically

---@type NeviraideConfig
return {
  lang = { 'lua', 'rust', 'go' },
  theme = 'Gruvbox-Retro',
  transparency = false,
  numbers_enabled = true,
  relative_numbers = true,
  cursor_line = true,
  cursor_column = false,
  indents = 4,
  border = 'rounded',
  borderchars = '{ "─", "│", "─", "│", "╭", "╮", "╯", "╰" }',
  nonicons = true,
  gitsigns_current_line_blame = false,
  gitsigns_signs = true,
  lsp = {
    inlay_hints = true,
    diagnostic = {
      signs = true,
      virtual_text = false,
    },
  },
  font_family = 'JetBrainsMono Nerd Font',
  font_size = 14,
}
