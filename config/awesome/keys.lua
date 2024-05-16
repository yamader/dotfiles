local awful = require "awful"
local gears = require "gears"
local menubar = require "menubar"
local hotkeys_popup = require "awful.hotkeys_popup"
require "awful.hotkeys_popup.keys"

globalkeys = gears.table.join(
  -- awesome
  awful.key({ Mod, "Control" }, "h", hotkeys_popup.show_help, { description = "show help", group = "awesome" }),
  awful.key({ Mod, "Control" }, "q", awesome.quit, { description = "quit awesome", group = "awesome" }),
  awful.key({ Mod, "Control" }, "r", awesome.restart, { description = "reload awesome", group = "awesome" }),
  awful.key({ Mod }, "x", function()
    awful.prompt.run {
      prompt = "Run Lua code: ",
      textbox = awful.screen.focused().mypromptbox.widget,
      exe_callback = awful.util.eval,
      history_path = awful.util.get_cache_dir() .. "/history_eval",
    }
  end, { description = "lua execute prompt", group = "awesome" }),

  -- client
  awful.key({ Mod, "Shift" }, "n", function()
    local c = awful.client.restore()
    -- Focus restored client
    if c then
      c:emit_signal("request::activate", "key.unminimize", { raise = true })
    end
  end, { description = "restore minimized", group = "client" }),
  awful.key({ Mod }, "j", function()
    awful.client.focus.byidx(1)
  end, { description = "focus next by index", group = "client" }),
  awful.key({ Mod }, "k", function()
    awful.client.focus.byidx(-1)
  end, { description = "focus previous by index", group = "client" }),
  awful.key({ Mod }, "u", awful.client.urgent.jumpto, { description = "jump to urgent client", group = "client" }),

  -- launcher
  awful.key({ Mod }, "Return", function()
    awful.spawn(Term)
  end, { description = "open a terminal", group = "launcher" }),
  awful.key({ Mod, "Shift" }, "Return", function()
    awful.spawn(Term .. " --class term")
  end, { description = "open a terminal (tile)", group = "launcher" }),
  awful.key({ Mod }, "p", function()
    menubar.show()
  end, { description = "show the menubar", group = "launcher" }),
  awful.key({ Mod }, "r", function()
    awful.screen.focused().mypromptbox:run()
  end, { description = "run prompt", group = "launcher" }),

  awful.key({ Mod, "Control" }, "l", function()
    awful.spawn { "xset", "dpms", "force", "off" }
  end, { description = "lock screen", group = "launcher" }),

  awful.key({ Mod, "Shift" }, "s", function()
    awful.spawn { "flameshot", "gui" }
  end, { description = "screenshot", group = "launcher" }),
  awful.key({ Mod, "Control" }, "s", function()
    awful.spawn { "flameshot", "screen" }
  end, { description = "screenshot (screen)", group = "launcher" }),
  awful.key({}, "Print", function()
    awful.spawn { "flameshot", "gui" }
  end, { description = "screenshot", group = "launcher" }),
  awful.key({ "Control" }, "Print", function()
    awful.spawn { "flameshot", "screen" }
  end, { description = "screenshot (screen)", group = "launcher" }),

  -- layout
  awful.key({ Mod }, "l", function()
    awful.tag.incmwfact(0.02)
  end, { description = "increase master width factor", group = "layout" }),
  awful.key({ Mod }, "h", function()
    awful.tag.incmwfact(-0.02)
  end, { description = "decrease master width factor", group = "layout" }),
  awful.key({ Mod, "Shift" }, "l", function(c)
    awful.client.incwfact(0.1)
  end, { description = "increase width factor", group = "layout" }),
  awful.key({ Mod, "Shift" }, "h", function(c)
    awful.client.incwfact(-0.1)
  end, { description = "decrease width factor", group = "layout" }),

  awful.key({ Mod }, "i", function()
    awful.tag.incnmaster(1, nil, true)
  end, { description = "increase the number of master clients", group = "layout" }),
  awful.key({ Mod }, "d", function()
    awful.tag.incnmaster(-1, nil, true)
  end, { description = "decrease the number of master clients", group = "layout" }),
  awful.key({ Mod, "Shift" }, "i", function()
    awful.tag.incncol(1, nil, true)
  end, { description = "increase the number of columns", group = "layout" }),
  awful.key({ Mod, "Shift" }, "d", function()
    awful.tag.incncol(-1, nil, true)
  end, { description = "decrease the number of columns", group = "layout" }),

  awful.key({ Mod }, "space", function()
    awful.layout.inc(1)
  end, { description = "select next", group = "layout" }),
  awful.key({ Mod, "Shift" }, "space", function()
    awful.layout.inc(-1)
  end, { description = "select previous", group = "layout" }),

  -- screen
  awful.key({ Mod, "Shift" }, "j", function()
    awful.screen.focus_relative(1)
  end, { description = "focus the next screen", group = "screen" }),
  awful.key({ Mod, "Shift" }, "k", function()
    awful.screen.focus_relative(-1)
  end, { description = "focus the previous screen", group = "screen" }),

  -- tag
  awful.key({ Mod }, "Tab", awful.tag.history.restore, { description = "go back", group = "tag" })
)

for i = 1, 9 do
  globalkeys = gears.table.join(
    globalkeys,
    awful.key({ Mod }, "#" .. i + 9, function()
      local screen = awful.screen.focused()
      local tag = screen.tags[i]
      if tag then
        tag:view_only()
      end
    end, { description = "view tag #" .. i, group = "tag" }),
    awful.key({ Mod, "Control" }, "#" .. i + 9, function()
      local screen = awful.screen.focused()
      local tag = screen.tags[i]
      if tag then
        awful.tag.viewtoggle(tag)
      end
    end, { description = "toggle tag #" .. i, group = "tag" }),
    awful.key({ Mod, "Shift" }, "#" .. i + 9, function()
      if client.focus then
        local tag = client.focus.screen.tags[i]
        if tag then
          client.focus:move_to_tag(tag)
        end
      end
    end, { description = "move focused client to tag #" .. i, group = "tag" }),
    awful.key({ Mod, "Control", "Shift" }, "#" .. i + 9, function()
      if client.focus then
        local tag = client.focus.screen.tags[i]
        if tag then
          client.focus:toggle_tag(tag)
        end
      end
    end, { description = "toggle focused client on tag #" .. i, group = "tag" })
  )
end

root.keys(globalkeys)

clientkeys = gears.table.join(
  awful.key({ Mod, "Control" }, "Return", function(c)
    c:swap(awful.client.getmaster())
  end, { description = "move to master", group = "client" }),
  awful.key({ Mod, "Control" }, "m", function(c)
    c.maximized_vertical = not c.maximized_vertical
    c:raise()
  end, { description = "(un)maximize vertically", group = "client" }),

  awful.key({ Mod, "Shift" }, "c", function(c)
    c:kill()
  end, { description = "close", group = "client" }),
  awful.key({ Mod, "Shift" }, "f", function(c)
    c.fullscreen = not c.fullscreen
    c:raise()
  end, { description = "toggle fullscreen", group = "client" }),
  awful.key({ Mod, "Shift" }, "m", function(c)
    c.maximized_horizontal = not c.maximized_horizontal
    c:raise()
  end, { description = "(un)maximize horizontally", group = "client" }),
  awful.key({ Mod, "Shift" }, "t", function(c)
    c.ontop = not c.ontop
  end, { description = "toggle keep on top", group = "client" }),

  awful.key({ Mod }, "m", function(c)
    c.maximized = not c.maximized
    c:raise()
  end, { description = "(un)maximize", group = "client" }),
  awful.key({ Mod }, "n", function(c)
    -- The client currently has the input focus, so it cannot be
    -- minimized, since minimized clients can't have the focus.
    c.minimized = true
  end, { description = "minimize", group = "client" }),
  awful.key({ Mod }, "o", function(c)
    c:move_to_screen()
  end, { description = "move to screen", group = "client" }),
  awful.key({ Mod }, "t", function(c)
    c.floating = false
    c:lower()
  end, { description = "tiling", group = "client" })
)
