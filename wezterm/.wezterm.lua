-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 45

-- tab bar style
config.use_fancy_tab_bar = false
config.tab_max_width = 25

-- background
config.window_background_opacity = 0.6
config.win32_system_backdrop = "Acrylic"

config.default_prog = { 'powershell.exe' }

config.wsl_domains = {
  {
    name = 'archlinux',
    distribution = 'archlinux',
	default_cwd = '~'
  }
}

config.launch_menu = {
  {
    label = 'arch',
    domain = {
        DomainName = 'archlinux'
    }
  },
}

-- mouse bindings
local act = wezterm.action
config.mouse_bindings = {
  {
    event = { Up = { streak = 1, button = 'Right' } },
    action = act.PasteFrom 'Clipboard'
  },
}

-- keyboard bindings
config.keys = {
  {
    key = '1',
    mods = 'CTRL',
    action = act.ActivateTab(0),
  },
  {
    key = '2',
    mods = 'CTRL',
    action = act.ActivateTab(1),
  },
  {
    key = '3',
    mods = 'CTRL',
    action = act.ActivateTab(2),
  },
  {
    key = '4',
    mods = 'CTRL',
    action = act.ActivateTab(3),
  },
  {
    key = '5',
    mods = 'CTRL',
    action = act.ActivateTab(4),
  },
  {
    key = '6',
    mods = 'CTRL',
    action = act.ActivateTab(5),
  },
  {
    key = '7',
    mods = 'CTRL',
    action = act.ActivateTab(6),
  },
  {
    key = '8',
    mods = 'CTRL',
    action = act.ActivateTab(7),
  },
  {
    key = '9',
    mods = 'CTRL',
    action = act.ActivateTab(-1),
  },
  {
    key = 'w',
    mods = 'CTRL',
    action = act.CloseCurrentTab { confirm=true },
  },
  {
    key = 't',
    mods = 'CTRL',
    action = act.ShowLauncher,
  },
}

-- Finally, return the configuration to wezterm:
return config
