-- Pull in the wezterm API
local wezterm = require 'wezterm'
-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font('Maple Mono NF CN', {
    weight = "Bold"
})
config.font_size = 16.0
config.line_height = 1.2
config.keys = {{
    key = '\\',
    mods = 'CMD',
    action = wezterm.action.SplitHorizontal {
        domain = 'CurrentPaneDomain'
    }
}, {
    key = 'w',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane {
        confirm = true
    }
}}

config.default_cursor_style = "BlinkingBar"
return config
