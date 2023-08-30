-- TODO: reload lazy when changed
return {
  theme = './nord',

  transparency = false,

  numbers = true,
  relative_numbers = true,

  cursor_line = true,
  cursor_column = false,

  indents = 4,

  ---Borders for all floating windows and popups.
  ---• "none": No border.
  ---• "single": A single line box.
  ---• "double": A double line box.
  ---• "rounded": Like "single", but with rounded corners
  ---• "solid": Adds padding by a single whitespace cell.
  ---• "shadow": A drop shadow effect by blending with the background.
  ---@type 'none'|'single'|'double'|'rounded'|'solid'|'shadow'
  border = 'rounded',
  ---@type string
  borderchars = '{ "─", "│", "─", "│", "╭", "╮", "╯", "╰" }',
  -- FIX: bug with shadow border

  nonicons = true,

  gitsigns_current_line_blame = false,
  gitsigns_signs = true,

  -- TODO: how to change font from nvim
  font = {
    font_family = 'JetBrainsMono Nerd Font',
    font_size = '14.0',
  },

  lsp_inlay_hints = true,

  diagnostic_virtual_text = false,
  diagnostic_signs = true,
}
