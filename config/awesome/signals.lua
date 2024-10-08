local awful = require "awful"
local beautiful = require "beautiful"

client.connect_signal("manage", function(c)
  if awesome.startup and not c.size_hints.user_position and not c.size_hints.program_position then
    -- Prevent clients from being unreachable after screen count changes.
    awful.placement.no_offscreen(c)
  end
end)

client.connect_signal("property::floating", function(c)
  c.ontop = c.floating
end)

client.connect_signal("mouse::enter", function(c)
  c:emit_signal("request::activate", "mouse_enter")
end)

client.connect_signal("focus", function(c)
  c.border_color = beautiful.border_focus
end)

client.connect_signal("unfocus", function(c)
  c.border_color = beautiful.border_normal
end)
