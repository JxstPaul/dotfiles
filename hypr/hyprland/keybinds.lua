local vars = require("variables")

local function foo(keybinds, action, flags)
    if type(keybinds) == "table" then
        for _, keybind in pairs(keybinds) do
            hl.bind(keybind, action, flags)
        end
    else
        hl.bind(keybinds, action, flags)
    end
end

local function extend(base, suffix)
    return base .. " + " .. suffix
end

-- Window actions
foo(vars.keyCloseWindow, hl.dsp.window.close())
foo(vars.keyToggleFullscreen, hl.dsp.window.fullscreen())
foo(vars.keyMoveWindow, hl.dsp.window.drag())
foo(vars.keyResizeWindow, hl.dsp.window.resize())
foo(vars.keyToggleFloating, hl.dsp.window.float(), { click = true })

foo(vars.keyColorPicker, hl.dsp.exec_cmd("hyprpicker -a"))
foo(vars.keyScreenshot, hl.dsp.exec_cmd("grim ~/Pictures/Screenshots/$(date +'%Y-%m-%d_%H-%M-%S').png"))
foo(vars.keyScreenshotRegion, hl.dsp.exec_cmd("grim -g \"$(slurp)\" ~/Pictures/Screenshots/$(date +'%Y-%m-%d_%H-%M-%S').png"))

foo("SUPER + SPACE", hl.dsp.exec_cmd("pkill rofi || rofi -show drun"))
foo("SUPER + R", hl.dsp.exec_cmd("ghostty"))

-- Audio Controls
foo("XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ 0; wpctl set-volume @DEFAULT_AUDIO_SINK@ -l 1.0 " .. vars.volumeStep .. "%+"),
    { locked = true, repeating = true })
foo("XF86AudioLowerVolume",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ 0; wpctl set-volume @DEFAULT_AUDIO_SINK@ " .. vars.volumeStep .. "%-"),
    { locked = true, repeating = true })
foo("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
foo(vars.keyMuteMic, hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

for i = 1, 4 do
    foo(extend(vars.keyFocusWorkspace, i), hl.dsp.focus({ workspace = i }))
    foo(extend(vars.keyMoveToWorkspace, i), hl.dsp.window.move({ workspace = i, follow = false }))
end
