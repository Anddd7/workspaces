hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
    hs.alert.show(
       "Hello World!",
       {
          textFont= "Comic Sans MS",
          textSize=72,
          fadeOutDuration=1
       }
    )
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
    hs.reload()
end)
hs.alert.show("Config loaded")


-- Magnet replacement bindings

hs.hotkey.bind({"ctrl", "alt"}, "left", function()
-- size focused window to left half of display
local win = hs.window.focusedWindow()
local f = win:frame()
local screen = win:screen()
local max = screen:frame()

f.x = max.x
f.y = max.y
f.w = max.w / 2
f.h = max.h
win:setFrame(f)
end)

hs.hotkey.bind({"ctrl", "alt"}, "right", function()
-- size focused window to right half of display
local win = hs.window.focusedWindow()
local f = win:frame()
local screen = win:screen()
local max = screen:frame()

f.x = max.x + (max.w / 2)
f.y = max.y
f.w = max.w / 2
f.h = max.h
win:setFrame(f)
end)


hs.hotkey.bind({"ctrl", "alt"}, "a", function()
-- size focused window to left third of display
local win = hs.window.focusedWindow()
local f = win:frame()
local screen = win:screen()
local max = screen:frame()

f.x = max.x
f.y = max.y
f.w = max.w / 3
f.h = max.h
win:setFrame(f)
end)

hs.hotkey.bind({"ctrl", "alt"}, "s", function()
-- size focused window to middle third of display
local win = hs.window.focusedWindow()
local f = win:frame()
local screen = win:screen()
local max = screen:frame()

f.x = max.x + (max.w / 3)
f.y = max.y
f.w = max.w / 3
f.h = max.h
win:setFrame(f)
end)

hs.hotkey.bind({"ctrl", "alt"}, "d", function()
-- size focused window to right third of display
local win = hs.window.focusedWindow()
local f = win:frame()
local screen = win:screen()
local max = screen:frame()

f.x = max.x + (max.w / 3 * 2)
f.y = max.y
f.w = max.w / 3
f.h = max.h
win:setFrame(f)
end)

hs.hotkey.bind({"ctrl", "alt"}, "return", function()
-- size focused window to size of desktop
local win = hs.window.focusedWindow()
local f = win:frame()
local screen = win:screen()
local max = screen:frame()

f.x = max.x
f.y = max.y
f.w = max.w
f.h = max.h
win:setFrame(f)
end)

hs.hotkey.bind({"ctrl", "alt"}, "/", function()
-- size focused window to size of desktop
local win = hs.window.focusedWindow()
local f = win:frame()
local screen = win:screen()
local max = screen:frame()

f.x = max.w/5
f.y = max.h/6
f.w = max.w/5 * 3
f.h = max.h/6 * 4
win:setFrame(f)
end)

hs.hotkey.bind({"ctrl", "alt"}, "up", function()
-- size focused window to top half of display
local win = hs.window.focusedWindow()
local f = win:frame()
local screen = win:screen()
local max = screen:frame()

f.x = max.x
f.y = max.y
f.w = max.w
f.h = max.h / 2
win:setFrame(f)
end)

hs.hotkey.bind({"ctrl", "alt"}, "down", function()
-- size focused window to bottom half of display
local win = hs.window.focusedWindow()
local f = win:frame()
local screen = win:screen()
local max = screen:frame()

f.x = max.x
f.y = max.y + (max.h / 2)
f.w = max.w
f.h = max.h / 2
win:setFrame(f)
end)


hs.hotkey.bind({"cmd", "alt", "ctrl"}, "return", function()
-- toggle the focused window to full screen (workspace)
local win = hs.window.focusedWindow()
win:setFullScreen(not win:isFullScreen())
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "right", function()
-- move the focused window one display to the right
local win = hs.window.focusedWindow()
win:moveOneScreenEast()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "left", function()
-- move the focused window one display to the left
local win = hs.window.focusedWindow()
win:moveOneScreenWest()
end)
