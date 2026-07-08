require("settings/monitors")

hl.on("hyprland.start", function () 
    hl.exec_cmd("hyprpaper")
	hl.exec_cmd("waybar")
end)

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

----- PERMISSIONS -----
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/

require("style")
require("settings/input")
require("rules/workspace")
require("rules/window")
