hl.on("hyprland.start", function () 
    hl.exec_cmd("hyprpaper")
	hl.exec_cmd("hyprlock")
	hl.exec_cmd("waybar")
end)

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

----- PERMISSIONS -----
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/

require("modules/monitors")
require("modules/input")
require("modules/style")
require("modules/animations")
require("rules/workspace")
require("rules/window")
