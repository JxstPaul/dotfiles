hl.config({
	input = {
		kb_layout = "us",

		follow_mouse = 1,
		sensitivity = 0.2,
		accel_profile = "flat"
	}
})

local mod = "SUPER"
local menu = "pkill rofi || rofi -show drun"
local terminal = "ghostty"

hl.bind(mod .. " + Q", hl.dsp.window.close())
hl.bind("F11", hl.dsp.window.fullscreen({ "maximized", toggle }))
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mod .. " + mouse:272", hl.dsp.window.float(), { click = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize())
hl.bind(mod .. " + LEFT", hl.dsp.window.move({ workspace = "e-1", follow = false }))
hl.bind(mod .. " + RIGHT", hl.dsp.window.move({ workspace = "e+1", follow = false }))

hl.bind("PRINT", hl.dsp.exec_cmd([[ grim -g "$(slurp)" - | wl-copy && wl-paste > ~/Media/Pictures/Screenshots/$(date +%Y%m%d_%H%M%S).png ]]))

hl.bind(mod .. " + SPACE", hl.dsp.exec_cmd(menu))
hl.bind(mod .. " + R", hl.dsp.exec_cmd(terminal))

hl.bind("XF86AudioRaiseVolume",	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+ -l 1.0"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind(mod .. " + M", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

for i = 1, 4 do
	hl.bind(mod .. " + " .. i, hl.dsp.focus({ workspace = i }))
end
