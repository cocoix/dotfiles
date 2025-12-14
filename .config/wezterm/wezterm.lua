local wezterm = require 'wezterm'

local config = wezterm.config_builder()
config.color_scheme = 'Gruvbox Material (Gogh)'
config.colors = {
    background = '#202020'
}
config.font = wezterm.font_with_fallback {
    'Maple Mono Normal NL NF CN',
    'font-sarasa-gothic',
}
config.font_size = 14
config.line_height = 1.2
config.hide_tab_bar_if_only_one_tab = true
config.default_cursor_style = 'BlinkingBar'
config.default_prog = { '/opt/homebrew/bin/fish', '-l' }

return config
