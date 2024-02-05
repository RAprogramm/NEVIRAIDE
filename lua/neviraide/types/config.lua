---@alias BorderType 'none'|'single'|'double'|'rounded'|'solid'|'shadow'
---@alias HyprlandThemes "Gruvbox-Retro"|"Decay-Green"|"Catppuccin-Latte"|"Catppuccin-Mocha"|"Cyberpunk-Egde"|"Frosted-Glass"|"Graphite-Mono"|"Material-Sakura"|"Rose-Pine"|"Tokyo-Night"

---@class NeviraideConfig
---Using programming languages.
---@field lang string[]
---WIN+SHIFT+T - list of available hyprland themes.
------
---Already configured Hyprland themes.
---@field theme HyprlandThemes
---Transparency neviraide.
---@field transparency boolean
---Print the line number in front of each line.
---@field numbers_enabled boolean
---Show the line number relative to the line
---with the cursor in front of each line.
---Relative line numbers help you use the |count|
---you can precede some vertical motion
---commands (e.g. j k + -) with, without having
---to calculate it yourself.
---@field relative_numbers boolean
---Highlight the text line of the cursor with
---CursorLine. Useful to easily spot the cursor.
---Will make screen redrawing slower. When Visual
---mode is active the highlighting isn't used to
---make it easier to see the selected text.
---@field cursor_line boolean
---Highlight the screen column of the cursor
---with CursorColumn. Useful to align text.
---Will make screen redrawing slower.
---@field cursor_column boolean
---@field indents integer
---Borders for all floating windows and popups.
---@field border BorderType
---Symbols for rendering border.
---@field borderchars string
---@field nonicons boolean
---@field gitsigns_current_line_blame boolean
---@field gitsigns_signs boolean
---Neviraide LSP.
---@field lsp NeviraideLSP
---NeviraideFont.
---@field font NeviraideFont
---Using the latest plugins versions.
---@field latest_plugins boolean

---@class NeviraideFont
---Using terminal font.
---@field family string
---Terminal font size.
---@field size integer

---@class NeviraideLSP
---@field inlay_hints boolean
---@field code_lenses boolean
---@field diagnostic NeviraideDiagnostic
---Automatically format file before saving.
---@field format_before_save boolean

---@class NeviraideDiagnostic
---Signs are defined for each diagnostic severity.
---(for example, "" ("E" in non UI environment)
---for ERROR).
---@field signs boolean
---Text contents of the error near
---its location.
---@field virtual_text boolean
---Show a floating diagnostic window
---when hovering over a problem location.
---@field show_on_hover boolean
