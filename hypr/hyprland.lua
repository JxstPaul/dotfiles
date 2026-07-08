require("settings/monitors")

-- AUTOSTART
hl.on("hyprland.start", function () 
    hl.exec_cmd("hyprpaper")
	hl.exec_cmd("waybar")
end)

-- ENVIRONMENT VARIABLES
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

----- PERMISSIONS -----
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/

require("style")
require("settings/input")

-- WORKSPACE RULES
hl.workspace_rule({ workspace = 1, monitor = "DP-1", persistent = true, default = true })
hl.workspace_rule({ workspace = 2, monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = 3, monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = 4, monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = 5, monitor = "DP-2", persistent = true, default = true })

-- WINDOW RULES
-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/

local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize"
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true
})

suppressMaximizeRule:set_enabled(true)
