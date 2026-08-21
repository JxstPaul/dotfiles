local vars = require("variables")

local mod = "SUPER"
local menu = "pkill rofi || rofi -show drun"
local terminal = "ghostty"

hl.bind(vars.keyCloseWindow, hl.dsp.window.close())
hl.bind("F11", hl.dsp.window.fullscreen())
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize())
hl.bind(mod .. " + mouse:272", hl.dsp.window.float(), { click = true })

hl.bind(vars.keyColorPicker, hl.dsp.exec_cmd("hyprpicker -a"))
hl.bind(vars.keyScreenshot, hl.dsp.exec_cmd("grim ~/Pictures/Screenshots/$(date +'%Y-%m-%d_%H-%M-%S').png"))
hl.bind(vars.keyScreenshotRegion, hl.dsp.exec_cmd("grim -g \"$(slurp)\" ~/Pictures/Screenshots/$(date +'%Y-%m-%d_%H-%M-%S').png"))

hl.bind(mod .. " + SPACE", hl.dsp.exec_cmd(menu))
hl.bind(mod .. " + R", hl.dsp.exec_cmd(terminal))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+ -l 1.0"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind(mod .. " + M", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

for i = 1, 4 do
    hl.bind(vars.keyFocusWorkspace .. " + " .. i, hl.dsp.focus({ workspace = i }))
    hl.bind(vars.keyMoveToWorkspace .. " + " .. i, hl.dsp.window.move({ workspace = i, follow = false }))
end
