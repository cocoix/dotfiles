local wezterm = require 'wezterm'

local config = wezterm.config_builder()
config.color_scheme = 'Everforest Dark Hard (Gogh)'
config.font = wezterm.font_with_fallback {
    'Mononoki Nerd Font Mono',
    'font-sarasa-gothic',
}
config.font_size = 14
config.hide_tab_bar_if_only_one_tab = true
config.default_prog = { '/opt/homebrew/bin/fish', '-l' }

return config
