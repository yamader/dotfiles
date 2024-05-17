local awful = require "awful"
local gears = require "gears"

awful.mouse.snap.edge_enabled = false

root.buttons(gears.table.join(awful.button({}, 4, awful.tag.viewprev), awful.button({}, 5, awful.tag.viewnext)))

clientbuttons = gears.table.join(
  awful.button({}, 1, function(c)
    c:emit_signal("request::activate", "mouse_click")
  end),
  awful.button({ Mod }, 1, function(c)
    c:emit_signal("request::activate", "mouse_click", { raise = true })
    local geo = c:geometry()
    c.floating = true
    c:geometry(geo)
    awful.mouse.client.move(c)
  end),
  awful.button({ Mod }, 3, function(c)
    c:emit_signal("request::activate", "mouse_click", { raise = true })
    local geo = c:geometry()
    c.floating = true
    c:geometry(geo)
    awful.mouse.client.resize(c)
  end),
  awful.button({ Mod }, 2, function(c)
    c.floating = false
    c:lower()
  end)
)
