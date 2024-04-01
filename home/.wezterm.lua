local wt = require "wezterm"

return {
  color_scheme = "Apple System Colors",
  cursor_blink_ease_in = "Constant",
  cursor_blink_ease_out = "Constant",
  default_cursor_style = "BlinkingUnderline",
  font = wt.font "FirgeNerd Console",
  font_size = 9,
  hide_tab_bar_if_only_one_tab = true,
  window_background_opacity = 0.95,
  window_padding = {
    left = 2,
    right = 2,
    top = 0,
    bottom = 0,
  },
}
