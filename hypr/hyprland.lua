hl.monitor({
    output   = "DP-1",
    mode     = "1920x1080@165",
    position = "0x0",
    scale    = 1
})

hl.monitor({
    output    = "DP-2",
    mode      = "1920x1080@165",
    position  = "-1080x-650",
    scale     = 1,
    transform = 1
})

-- Autostart
hl.on("hyprland.start", function ()
    hl.exec_cmd("qs -c lockscreen")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("waybar")
end)

-- Config modules
require("hyprland.animations")
require("hyprland.decoration")
require("hyprland.env")
require("hyprland.general")
require("hyprland.input")
require("hyprland.keybinds")
require("hyprland.misc")
require("hyprland.rules")

hl.workspace_rule({ workspace = 1, monitor = "DP-1", persistent = true, default = true })
hl.workspace_rule({ workspace = 2, monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = 3, monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = 4, monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = 5, monitor = "DP-2", persistent = true, default = true })
