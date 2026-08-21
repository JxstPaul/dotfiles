-- Autostart
hl.on("hyprland.start", function ()
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("waybar")
end)

require("modules.monitors")
require("modules.style")
require("modules.workspaces")
require("modules.rules")

-- Config modules
require("hyprland.animations")
require("hyprland.decoration")
require("hyprland.env")
require("hyprland.general")
require("hyprland.input")
require("hyprland.keybinds")
require("hyprland.misc")
