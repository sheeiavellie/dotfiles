-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.audible_bell = "Disabled"

config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Darkside (Gogh)'

config.window_background_image = '/home/aleksandr-trotskiy/Pictures/ibm_upscayl_2x_4xNomos8kSC.png'
config.window_background_opacity = 1.0
config.window_background_image_hsb = {
    brightness = 0.025,
}

config.window_decorations = "NONE"
config.enable_tab_bar = false

config.keys = {
    {
        key = 'n',
        mods = 'SHIFT|CTRL',
        action = wezterm.action.ToggleFullScreen,
    },
}

local mux = wezterm.mux

wezterm.on("gui-startup", function()
    local tab, pane, window = mux.spawn_window {}
    window:gui_window():maximize()
end)

config.font = wezterm.font 'Fira Code'
config.font_size = 14

-- and finally, return the configuration to wezterm
return config
