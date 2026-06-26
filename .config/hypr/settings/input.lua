hl.config({
    input = {
        kb_layout  = "us",

        follow_mouse = 1,
        sensitivity = 0.2,
        accel_profile = "flat"
    },
})

local mod = "SUPER"
local menu = "rofi -show drun"
local terminal = "ghostty"

hl.bind(mod .. " + ESCAPE", hl.dsp.exit())
hl.bind("PRINT", hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy'))
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd('grim -g "$(slurp) ~/Pictures/Screenshots'))

-- Window Controls
hl.bind(mod .. " + Q", hl.dsp.window.close())
hl.bind("F11", hl.dsp.window.fullscreen({ "maximized", toggle }))

hl.bind(mod .. " + mouse:272", hl.dsp.window.resize())
hl.bind(mod .. " + LEFT",  hl.dsp.window.swap({ direction = "left" }))
hl.bind(mod .. " + RIGHT", hl.dsp.window.swap({ direction = "right" }))
hl.bind(mod .. " + UP",    hl.dsp.window.swap({ direction = "up" }))
hl.bind(mod .. " + DOWN",  hl.dsp.window.swap({ direction = "down" }))

-- App Launchers
hl.bind(mod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mod .. " + T", hl.dsp.exec_cmd(terminal))

-- Audio Controls
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repea>
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating >
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })

-- Microphone Controls
hl.bind(mod .. " + M", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"))

-- Workspace Controls
for i = 1, 4 do
    hl.bind(mod .. " + " .. i, hl.dsp.focus({ workspace = i }))
end
