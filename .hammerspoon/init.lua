


--[[
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "w", function()
    --hs.alert.show("Hello World!")
    hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
end)
--]]
window_manager = hs.hotkey.modal.new({"cmd", "ctrl", "shift"}, "w")

function window_manager:entered() hs.alert.show("Entered") end
function window_manager:exited() hs.alert.show("Exited") end

window_manager:bind('shift', "m", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screenF = win:screen():frame()
    win:setFrame(screenF)
    window_manager:exit()
end)

window_manager:bind(nil, "h", function()
    hs.notify.new({title="Fat"}):send()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screenF = win:screen():frame()
    f.x = screenF.x; f.y = screenF.y; f.w = screenF.w/2; f.h = screenF.h
    win:setFrame(f)
    window_manager:exit()
end)

window_manager:bind(nil, "l", function()
    hs.notify.new({title="Fat"}):send()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screenF = win:screen():frame()
    f.x = screenF.x+screenF.w/2; f.y = screenF.y; f.w = screenF.w/2; f.h = screenF.h
    win:setFrame(f)
    window_manager:exit()
end)

window_manager:bind('shift', 'k', function()
    hs.notify.new({title="Fat"}):send()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screenF = win:screen():frame()
    f.y = screenF.y;
    f.h = screenF.h/2
    win:setFrame(f)
    window_manager:exit()
end)

window_manager:bind('shift', "j", function()
    hs.notify.new({title="Fat"}):send()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    f.y = f.y + f.h/2
    f.h = f.h/2
    win:setFrame(f)
    window_manager:exit()
end)

window_manager:bind(nil, 'escape', function() window_manager:exit() end)


--switcher = assert(loadfile('switcher.lua'))()
dofile('switcher.lua')


--hs.hints.showTitleThresh = 10
--hs.hints.style = "vimperator"
--hs.hotkey.bind('alt', 'tab', nil, hs.hints.windowHints)

--[[

-- Window switcher
-- default filter {visible = true, currentSpace = true, allowScreens    
--[[
-- Modes:
-- switch applications (cmd+tab)
-- switch windows within an application
-- switch windows global
-- switch windows within screen
--]]
--

--[[

-- customize default ui
--hs.window.switcher.ui.fontName = 'Avenir Next Condensed'
hs.window.switcher.ui.textSize = 12
hs.window.switcher.ui.backgroundColor = {0.5, 0.5, 0.4, 0.9}
hs.window.switcher.ui.showThumbnails = false
hs.window.switcher.ui.thumbnailSize = 64


switcher = hs.window.switcher.new()
filter_global_window = hs.window.filter.new()
--filter_global_window = hs.window.filter.new{default={visible=true,fullscreen=false}} -- maybe should be override instead of default
switcher_global_window = hs.window.switcher.new(filter_global_window)
--switcher_global_window = hs.window.switcher.new(hs.window.filter.new())
--switcher_global_window = hs.window.switcher.new()

-- stupid wrapper because this language is dumb
function switchn(switcher) return function() switcher:next() end end
function switchp(switcher) return function() switcher:previous() end end

-- bind to hotkeys
hs.hotkey.bind('alt', 'tab', nil, switchn(switcher), nil, switchn(switcher_global_window))
hs.hotkey.bind('alt-shift', 'tab', nil, switchp(switcher), nil, switchp(switcher_global_window))

--]]





















hs.hotkey.bind('cmd-shift-ctrl', 'R', "Loading Config", hs.reload)
hs.alert.show("Config Loaded")
