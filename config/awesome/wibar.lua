local awful = require "awful"
local gears = require "gears"
local wibox = require "wibox"

local taglist_buttons = gears.table.join(
  awful.button({}, 1, function(t)
    t:view_only()
  end),
  awful.button({ Mod }, 1, function(t)
    if client.focus then
      client.focus:move_to_tag(t)
    end
  end),
  awful.button({}, 3, awful.tag.viewtoggle),
  awful.button({ Mod }, 3, function(t)
    if client.focus then
      client.focus:toggle_tag(t)
    end
  end),
  awful.button({}, 4, function(t)
    awful.tag.viewprev(t.screen)
  end),
  awful.button({}, 5, function(t)
    awful.tag.viewnext(t.screen)
  end)
)

local tasklist_buttons = gears.table.join(
  awful.button({}, 3, function(c)
    if c == client.focus then
      c.minimized = true
    else
      c:emit_signal("request::activate", "tasklist", { raise = true })
    end
  end),
  awful.button({}, 4, function(t)
    awful.tag.viewprev(t.screen)
  end),
  awful.button({}, 5, function(t)
    awful.tag.viewnext(t.screen)
  end)
)

local mytextclock = wibox.widget.textclock(" %F %T ", 1)

awful.screen.connect_for_each_screen(function(s)
  -- Each screen has its own tag table.
  awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, awful.layout.layouts[1])

  s.mytaglist = awful.widget.taglist {
    screen = s,
    filter = awful.widget.taglist.filter.all,
    buttons = taglist_buttons,
  }

  s.mypromptbox = awful.widget.prompt()

  s.mytasklist = awful.widget.tasklist {
    screen = s,
    filter = awful.widget.tasklist.filter.currenttags,
    buttons = tasklist_buttons,
  }

  s.mylayoutbox = awful.widget.layoutbox(s)
  s.mylayoutbox:buttons(gears.table.join(
    awful.button({}, 1, function()
      awful.layout.inc(1)
    end),
    awful.button({}, 3, function()
      awful.layout.inc(-1)
    end),
    awful.button({}, 4, function()
      awful.layout.inc(-1)
    end),
    awful.button({}, 5, function()
      awful.layout.inc(1)
    end)
  ))

  s.mywibox = awful.wibar { position = "top", screen = s }
  s.mywibox:setup {
    layout = wibox.layout.align.horizontal,

    { -- left
      layout = wibox.layout.fixed.horizontal,
      mylauncher,
      s.mytaglist,
      s.mypromptbox,
    },

    s.mytasklist, -- middle

    { -- right
      layout = wibox.layout.fixed.horizontal,
      wibox.widget.systray(),
      mytextclock,
      s.mylayoutbox,
    },
  }
end)
