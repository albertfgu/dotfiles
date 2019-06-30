

logger = hs.logger.new('mylog')
all_windows = hs.window.filter.new()
all_windows:keepActive()
function printWindows()
    win_list = all_windows:getWindows()
    local msg = ''
    for i,w in pairs(win_list) do
        msg = msg .. i .. ' ' .. w:title() .. '\n'
    end
    logger.e('fatfat\n' .. msg)
end

hs.hotkey.bind('cmd-ctrl', 'w', 'Getting Window List', function()
    printWindows()
end)

hs.hotkey.bind('alt', 'tab', 'Last Window', function()
    printWindows()
    all_windows:getWindows()[2]:focus()
    printWindows()
end)

