-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'catppuccin-mocha'

config.enable_tab_bar = false
config.default_prog = { 'ssh.exe', 'sully@vm23059' }

config.keys = {
  {
    key = 'F12',
    action = wezterm.action.ToggleFullScreen,
  },
}

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}


-- and finally, return the configuration to wezterm
return config

