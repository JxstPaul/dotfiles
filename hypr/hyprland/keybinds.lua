local vars = require("variables")
local fn = require("utilities.functions")

-- Workspace actions
for i = 1, 4 do
    fn.bind(fn.extend(vars.keyFocusWorkspace, i), hl.dsp.focus({ workspace = i }))
    fn.bind(fn.extend(vars.keyWindowToWorkspace, i), hl.dsp.window.move({ workspace = i, follow = vars.followWindow }))
end
fn.bind(vars.keyNextWorkspace, hl.dsp.focus({ workspace = "+1" }))
fn.bind(vars.keyPrevWorkspace, hl.dsp.focus({ workspace = "-1" }))

-- Window actions
fn.bind(vars.keyCloseWindow, hl.dsp.window.close())
fn.bind(vars.keyToggleFullscreen, hl.dsp.window.fullscreen())
fn.bind({vars.keyMoveWindow, "SUPER + mouse:272"}, hl.dsp.window.drag())
fn.bind({vars.keyResizeWindow, "SUPER + mouse:273"}, hl.dsp.window.resize())
fn.bind(vars.keyCenterWindow, hl.dsp.window.center())
fn.bind(vars.keyToggleFloating, hl.dsp.window.float())

-- Utilities
fn.bind(vars.keyColorPicker, hl.dsp.exec_cmd("hyprpicker -a"))
fn.bind(vars.keyScreenshot, hl.dsp.exec_cmd("grim ~/Pictures/Screenshots/$(date +'%Y-%m-%d_%H-%M-%S').png"))
fn.bind(vars.keyScreenshotRegion, hl.dsp.exec_cmd("grim -g \"$(slurp)\" ~/Pictures/Screenshots/$(date +'%Y-%m-%d_%H-%M-%S').png"))

fn.bind("SUPER + SPACE", hl.dsp.exec_cmd("pkill rofi || rofi -show drun"))
fn.bind("SUPER + R", hl.dsp.exec_cmd("kitty"))

-- Audio Controls
fn.bind({vars.keyRaiseVolume, "XF86AudioRaiseVolume"},
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ 0; wpctl set-volume @DEFAULT_AUDIO_SINK@ -l 1.0 " .. vars.volumeStep .. "%+"),
    { locked = true, repeating = true })
fn.bind({vars.keyLowerVolume, "XF86AudioLowerVolume"},
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ 0; wpctl set-volume @DEFAULT_AUDIO_SINK@ " .. vars.volumeStep .. "%-"),
    { locked = true, repeating = true })
fn.bind({vars.keyMuteAudio, "XF86AudioMute"}, hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
fn.bind(vars.keyMuteMic, hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
