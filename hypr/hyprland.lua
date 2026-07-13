hl.on("hyprland.start", function () 
	hl.exec_cmd("hyprlock")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("waybar")
end)

----- PERMISSIONS -----
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/

require("modules/animations")
require("modules/environment")
require("modules/input")
require("modules/monitors")
require("modules/style")
require("modules/workspaces")

require("rules/window")
