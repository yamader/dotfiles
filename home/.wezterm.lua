local wt = require "wezterm"
local act = wt.action

return {
  color_scheme = "Apple System Colors",
  cursor_blink_ease_in = "Constant",
  cursor_blink_ease_out = "Constant",
  default_cursor_style = "BlinkingUnderline",
  font = wt.font "FirgeNerd Console",
  font_size = 9,
  hide_tab_bar_if_only_one_tab = true,
  mouse_bindings = {
    {
      event = { Up = { streak = 1, button = "Left" } },
      mods = "CTRL",
      action = act.OpenLinkAtMouseCursor,
    },
    {
      event = { Down = { streak = 1, button = "Left" } },
      mods = "CTRL",
      action = act.SelectTextAtMouseCursor "Block",
    },
    {
      event = { Drag = { streak = 1, button = "Left" } },
      mods = "CTRL",
      action = act.ExtendSelectionToMouseCursor "Block",
    },
    {
      event = { Down = { streak = 1, button = { WheelUp = 1 } } },
      mods = "CTRL",
      action = act.IncreaseFontSize,
    },
    {
      event = { Down = { streak = 1, button = { WheelDown = 1 } } },
      mods = "CTRL",
      action = act.DecreaseFontSize,
    },
  },
  window_background_opacity = 0.95,
  window_padding = {
    left = 2,
    right = 2,
    top = 0,
    bottom = 0,
  },
}
